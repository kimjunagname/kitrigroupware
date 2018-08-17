package com.groupware.email.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.groupware.email.model.EmailDto;
import com.groupware.email.service.EmailService;
import com.groupware.member.model.MemberDto;
import com.groupware.organization.service.OrganizationService;
import com.groupware.util.AjaxPaging;
import com.groupware.util.FileUpload;

@Controller
@RequestMapping("/email")
public class EmailController {

	@Autowired
	private EmailService emailService;
	
	@Autowired
	private OrganizationService organizationService;
	
	private WebApplicationContext context = null;

	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@RequestMapping(value="/sndList.kitri", method= RequestMethod.GET)
	public String sndListAll(HttpServletRequest request,HttpSession session,Model model,  @RequestParam Map<String, String> map) throws Exception {
		String stf_sq;
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());	
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}	
		stf_sq = map.get("stf_sq");
			
		// ����¡ ó��
		AjaxPaging paging = new AjaxPaging();
		String stf_snd_sq = stf_sq;
		// �� �Խù� �� 
		int totalCnt = emailService.sndCount(stf_snd_sq);
		// ���� ������ �ʱ�ȭ
		int current_page = 1;
		// ���� ����ڷκ��� �������� �޾ƿԴٸ�
		if (request.getParameter("page") != null) {
			current_page = Integer.parseInt((String)request.getParameter("page"));
		}
		// jsp�� �Ѹ� ������ �±׸� ���� ������.
		String pageIndexList = paging.pageIndexList(totalCnt, current_page);
		// SQL �������� ���� ���ǹ�
		int endCount = totalCnt - ((current_page - 1) * 10);
        int startCount = totalCnt - (current_page * 10) + 1;
		EmailDto emailDto = new EmailDto();
		emailDto.setStf_snd_sq(stf_snd_sq);
		emailDto.setStartCount(startCount);
		emailDto.setEndCount(endCount);
		model.addAttribute("sndList",emailService.sndListAll(emailDto));
		//model.addAttribute("pageIndexList", pageIndexList);
		// ����¡ ó�� ��
		return "/email/sendmaillist";
	}
	
	@RequestMapping(value = "/rcvList.kitri", method = RequestMethod.GET)
	public String rcvListAll(HttpServletRequest request,HttpSession session,Model model, @RequestParam Map<String, String> map) throws Exception {
		String stf_sq;	
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());	
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}	
		
		stf_sq = map.get("stf_sq");	
		
		List officerList = new ArrayList<HashMap<String, Object>>();
		int officerListCount = 0;
		Map params = new HashMap<String, Object>();
		List selectStf_tb = new ArrayList<HashMap<String, Object>>();
		List selectAdmn_Tb = new ArrayList<HashMap<String, Object>>();
		List selectRnk_Tb = new ArrayList<HashMap<String, Object>>();
		List selectDpt_Div_Tb = new ArrayList<HashMap<String, Object>>();
		
		if (stf_sq == null || stf_sq.equals(""))
			return "redirect:/member/login.kitri";
		// ����¡ ó��
		AjaxPaging paging = new AjaxPaging();
		String stf_rcv_sq = stf_sq;
		// �� �Խù� �� 
		int totalCnt = emailService.rcvCount(stf_rcv_sq);
		// ���� ������ �ʱ�ȭ
		int current_page = 1;
		// ���� ����ڷκ��� �������� �޾ƿԴٸ�
		if (request.getParameter("page") != null) {
			current_page = Integer.parseInt((String) request.getParameter("page"));
		}	
		// jsp�� �Ѹ� ������ �±׸� ���� ������.
		String pageIndexList = paging.pageIndexList(totalCnt, current_page);
		
		// �μ� + ȸ������ �߰�
		officerListCount = organizationService.officerListCount(params);
		selectStf_tb = organizationService.selectStf_tb();
		selectAdmn_Tb = organizationService.selectAdmn_Tb();
		selectRnk_Tb = organizationService.selectRnk_Tb();
		selectDpt_Div_Tb = organizationService.selectDpt_Div_Tb();
		
		// SQL �������� ���� ���ǹ�
		int startCount = (current_page - 1) * 10 + 1;
		int endCount = current_page * 10;
		EmailDto emailDto = new EmailDto();
		emailDto.setStf_rcv_sq(stf_rcv_sq);
		emailDto.setStartCount(startCount);
		emailDto.setEndCount(endCount);
		model.addAttribute("rcvList",emailService.rcvListAll(emailDto));
		model.addAttribute("pageIndexList", pageIndexList);	
		// ȸ������ �ޱ� �߰�
		model.addAttribute("officerList", officerList);
		model.addAttribute("officerListCount", officerListCount);
		model.addAttribute("selectStf_tb", selectStf_tb);
		model.addAttribute("selectAdmn_Tb", selectAdmn_Tb);
		model.addAttribute("selectRnk_Tb", selectRnk_Tb);
		model.addAttribute("selectDpt_Div_Tb", selectDpt_Div_Tb);
		
		return "/email/receivemaillist";
	}
	
	@RequestMapping(value = "/keepList.kitri", method = RequestMethod.GET)
	public String keepListAll(HttpServletRequest request, HttpSession session,Model model, @RequestParam Map<String, String> map) throws Exception {
		String stf_sq;	
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());	
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}	
		
		stf_sq = map.get("stf_sq");	
		if (stf_sq == null || stf_sq.equals(""))
			return "redirect:/member/login.kitri";
		
		String stf_rcv_sq = stf_sq;
		
		List officerList = new ArrayList<HashMap<String, Object>>();
		int officerListCount = 0;
		Map params = new HashMap<String, Object>();
		List selectStf_tb = new ArrayList<HashMap<String, Object>>();
		List selectAdmn_Tb = new ArrayList<HashMap<String, Object>>();
		List selectRnk_Tb = new ArrayList<HashMap<String, Object>>();
		List selectDpt_Div_Tb = new ArrayList<HashMap<String, Object>>();
		
		// �� �Խù� �� 
		int totalCnt = emailService.keepCount(stf_rcv_sq);
		// ���� ������ �ʱ�ȭ
		int current_page = 1;
		// ���� ����ڷκ��� �������� �޾ƿԴٸ�
		if (request.getParameter("page") != null) {
			current_page = Integer.parseInt((String)request.getParameter("page"));
		}
		
		// SQL �������� ���� ���ǹ�
		int startCount = (current_page - 1) * 10 + 1;
		int endCount = current_page * 10;
		EmailDto emailDto = new EmailDto();
		emailDto.setStf_rcv_sq(stf_rcv_sq);
		emailDto.setStartCount(startCount);
		emailDto.setEndCount(endCount);
		
		// �μ� + ȸ������ �߰�
		officerListCount = organizationService.officerListCount(params);
		selectStf_tb = organizationService.selectStf_tb();
		selectAdmn_Tb = organizationService.selectAdmn_Tb();
		selectRnk_Tb = organizationService.selectRnk_Tb();
		selectDpt_Div_Tb = organizationService.selectDpt_Div_Tb();
		
		model.addAttribute("keepList",emailService.keepListAll(emailDto));
		// ȸ������ �ޱ� �߰�
		model.addAttribute("officerList", officerList);
		model.addAttribute("officerListCount", officerListCount);
		model.addAttribute("selectStf_tb", selectStf_tb);
		model.addAttribute("selectAdmn_Tb", selectAdmn_Tb);
		model.addAttribute("selectRnk_Tb", selectRnk_Tb);
		model.addAttribute("selectDpt_Div_Tb", selectDpt_Div_Tb);
	
		return "/email/keepmaillist";
	}
	
	@ResponseBody
	@RequestMapping(value = "/rcvEmailListSearch.kitri", method = { RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> rcvEmailListSearch(@RequestBody EmailDto params, HttpServletRequest request,HttpSession session) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		List rcvList = new ArrayList<HashMap<String, Object>>();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			session = request.getSession(false);
			String stf_sq = null;
			stf_sq = (String)session.getAttribute("stf_sq");
			String stf_rcv_sq = stf_sq;
			// �� �Խù� �� 
			params.setStf_rcv_sq(stf_rcv_sq);
			int totalCnt = emailService.rcvSearchCount(params);
			// ���� ������ �ʱ�ȭ
			int current_page = 1;
			// ���� ����ڷκ��� �������� �޾ƿԴٸ�
			if (params.getPage() != null) {
				current_page = Integer.parseInt(params.getPage());
			}
			// jsp�� �Ѹ� ������ �±׸� ���� ������.
			params.setStf_rcv_sq(stf_rcv_sq);
			rcvList = emailService.rcvListAll(params);
			map.put("rcvList", rcvList);
			result.putAll(map);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/sndEmailListSearch.kitri", method = { RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> sndEmailListSearch(@RequestBody EmailDto params, HttpServletRequest request,HttpSession session) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		List sndList = new ArrayList<HashMap<String, Object>>();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			// ������ �ִ��� Ȯ���Ѵ�, ���� ���ٸ� ���� �������� �ʴ´�.
			session = request.getSession(false);
			String stf_sq = null;
			// ������ �ҷ��� admn_id�� �ִ´�. ���ٸ� null�̳� ""�̰� ��������
			stf_sq = (String)session.getAttribute("stf_sq");
			// ����¡ ó�� 
			AjaxPaging paging = new AjaxPaging();
			String stf_snd_sq = stf_sq;
			params.setStf_snd_sq(stf_snd_sq);
			// �� �Խù� �� 
			int totalCnt = emailService.sndSearchCount(params);
			// ���� ������ �ʱ�ȭ
			int current_page = 1;
			// ���� ����ڷκ��� �������� �޾ƿԴٸ�
			if (params.getPage() != null) {
				current_page = Integer.parseInt(params.getPage());
			}
			// jsp�� �Ѹ� ������ �±׸� ���� ������.
			String pageIndexListAjax = paging.pageIndexListAjax(totalCnt, current_page);
			// SQL �������� ���� ���ǹ�
			int startCount = (current_page - 1) * 10 + 1;
			int endCount = current_page * 10;
			params.setStartCount(startCount);
			params.setEndCount(endCount);
			params.setStf_snd_sq(stf_snd_sq);
			sndList = emailService.sndListAll(params);
			map.put("pageIndexListAjax", pageIndexListAjax);
			map.put("sndList", sndList);
			result.putAll(map);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/keepEmailListSearch.kitri", method = { RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> keepEmailListSearch(@RequestBody EmailDto params, HttpServletRequest request,HttpSession session) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		List keepList = new ArrayList<HashMap<String, Object>>();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			// ������ �ִ��� Ȯ���Ѵ�, ���� ���ٸ� ���� �������� �ʴ´�.
			session = request.getSession(false);
			String stf_sq = null;
			// ������ �ҷ��� admn_id�� �ִ´�. ���ٸ� null�̳� ""�̰� ��������
			stf_sq = (String)session.getAttribute("stf_sq");
			// ����¡ ó�� 
			AjaxPaging paging = new AjaxPaging();
			String stf_rcv_sq = stf_sq;
			params.setStf_rcv_sq(stf_rcv_sq);
			// �� �Խù� �� 
			int totalCnt = emailService.keepSearchCount(params);
			// ���� ������ �ʱ�ȭ
			int current_page = 1;
			// ���� ����ڷκ��� �������� �޾ƿԴٸ�
			if (params.getPage() != null) {
				current_page = Integer.parseInt(params.getPage());
			}
			// jsp�� �Ѹ� ������ �±׸� ���� ������.
			String pageIndexListAjax = paging.pageIndexListAjax(totalCnt, current_page);
			// SQL �������� ���� ���ǹ�
			int startCount = (current_page - 1) * 10 + 1;
			int endCount = current_page * 10;
			params.setStartCount(startCount);
			params.setEndCount(endCount);
			params.setStf_rcv_sq(stf_rcv_sq);
			keepList = emailService.keepListAll(params);
			map.put("pageIndexListAjax", pageIndexListAjax);
			map.put("keepList", keepList);
			result.putAll(map);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/emailRead.kitri", method = RequestMethod.POST)
	public EmailDto emailRead(@RequestBody Map<String, Object> param)throws Exception {
		EmailDto emailDto = emailService.read(param);
		return emailDto;
	}
	
	@ResponseBody
	@RequestMapping(value = "/emailSendRead.kitri", method = RequestMethod.POST)
	public EmailDto emailSendRead(@RequestBody Map<String, Object> param)throws Exception {
		EmailDto emailDto = emailService.sendRead(param);
		return emailDto;
	}
	
	@ResponseBody
	@RequestMapping(value = "/emailKeepRead.kitri", method = RequestMethod.POST)
	public EmailDto emailKeepRead(@RequestBody Map<String, Object> param)throws Exception {
		EmailDto emailDto = emailService.keepRead(param);
		return emailDto;
	}
	
	@ResponseBody
	@RequestMapping(value = "/emailRemove.kitri", method = RequestMethod.POST)
	public ResponseEntity<String> remove(@RequestBody Map<String, Object> param) throws Exception {
		ResponseEntity<String> entity = null;
		emailService.remove(param);
		entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value = "/emailKeep.kitri", method = RequestMethod.POST)
	public ResponseEntity<String> emailKeep(@RequestBody Map<String, Object> param) throws Exception {
		ResponseEntity<String> entity = null;
		emailService.modify(param);
		entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		return entity;
	}
	
	@RequestMapping(value = "/register.kitri", method = RequestMethod.POST)
	public String registPOST(EmailDto emailDto,HttpServletRequest request,MultipartFile file, RedirectAttributes rttr) throws Exception {
		try{
			FileUpload fileupload = new FileUpload();
			// System.out.println("Email DTO : "+emailDto.toString());
			String savedName = fileupload.uploadfile(file.getOriginalFilename(), file.getBytes(), uploadPath);
			// System.out.println("����� �����̸� : "+savedName);
			emailDto.setEml_pl_crs("/webapp/WEB-INF/upload/file/" + savedName);
			emailDto.setEml_pl_nm(file.getOriginalFilename());
			
			emailService.regist(emailDto); // eml_tb Insertion.
			emailService.regist2(emailDto); // eml_rcv_tb Insertion.
			emailService.regist3(emailDto);  //eml_snd_tb Insertion.
			rttr.addFlashAttribute("msg", "SUCCESS");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:/email/rcvList.kitri";
	}
	@RequestMapping(value="/download.kitri")
	public ModelAndView Download(@RequestParam (value="fileFullPath") String fileFullPath,  HttpServletRequest request,  HttpServletResponse response) throws Exception {
		//LOGGER.debug("callDownload : "+ fileFullPath);
		System.out.println("�ٿ�ε� ��� �� ���� : "+fileFullPath);
		File downloadFile = new File(fileFullPath);
		if(!downloadFile.canRead()){
			throw new Exception("File can't read(������ ã�� �� �����ϴ�)");
		}
		return new ModelAndView("fileDownloadView","downloadFile",downloadFile);	
	}
}