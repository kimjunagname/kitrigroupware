package com.groupware.organization.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.UncategorizedSQLException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.groupware.member.model.MemberDto;
import com.groupware.organization.model.OrganizationDto;
import com.groupware.organization.model.ZipcodeDto;
import com.groupware.organization.service.OrganizationService;
import com.groupware.util.AjaxPaging;

@Controller
@RequestMapping("/organization")
public class OrganizationController {
	@Autowired
	private OrganizationService organizationService;
	// �����ȣ ����Ű �Է� (��ü��)
	public static final String ZIPCODE_API_KEY = "9616451f5d73c7f811532938527699";
	// API ���� ���� �ּ�
	public static final String ZIPCODE_API_URL = "http://biz.epost.go.kr/KpostPortal/openapi";
	
	// �ʱ�ȭ�� ����Ʈ ����ϱ�
	@RequestMapping(value="/organization.kitri")
	public String listOrganization(HttpServletRequest request, HttpSession session, Model model, RedirectAttributes attr, @RequestParam Map<String, String> map) throws Exception {
		// �α��� �� ���� ó��
		String stf_sq;
		
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());
		
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
			map.put("admn_sq", (String) session.getAttribute("admn_sq"));
		}
		
		// ������ �ҷ��� admn_id�� �ִ´�. ���ٸ� null�̳� ""�̰� ��������
		stf_sq = map.get("stf_sq");
		
		if (stf_sq == null || stf_sq.equals(""))
			return "redirect:/member/login.kitri";
		List officerList = new ArrayList<HashMap<String, Object>>();
		int officerListCount = 0;
		Map params = new HashMap<String, Object>();
		List selectStf_tb = new ArrayList<HashMap<String, Object>>();
		List selectAdmn_Tb = new ArrayList<HashMap<String, Object>>();
		List selectRnk_Tb = new ArrayList<HashMap<String, Object>>();
		List selectDpt_Div_Tb = new ArrayList<HashMap<String, Object>>();
		try {
			officerListCount = organizationService.officerListCount(params);
			selectStf_tb = organizationService.selectStf_tb();
			selectAdmn_Tb = organizationService.selectAdmn_Tb();
			selectRnk_Tb = organizationService.selectRnk_Tb();
			selectDpt_Div_Tb = organizationService.selectDpt_Div_Tb();
			// ����¡ ó�� 
			AjaxPaging paging = new AjaxPaging();
			// �� �Խù� �� 
			int totalCnt = officerListCount;
			// ���� ������ �ʱ�ȭ
			int current_page = 1;
			// ���� ����ڷκ��� �������� �޾ƿԴٸ�
			if (request.getParameter("page") != null) {
				current_page = Integer.parseInt((String)request.getParameter("page"));
			}
			// jsp�� �Ѹ� ������ �±׸� ���� ������.
			String pageIndexList = paging.pageIndexList(totalCnt, current_page);
			// SQL �������� ���� ���ǹ�
			int startCount = (current_page - 1) * 10 + 1;
			int endCount = current_page * 10;
			params.put("startCount", startCount);
			params.put("endCount", endCount);
			officerList = organizationService.officerList(params);
			model.addAttribute("pageIndexList", pageIndexList);
			//����¡ ó��
			//model.addAttribute("myInfoList", myInfoList);
			model.addAttribute("officerList", officerList);
			model.addAttribute("officerListCount", officerListCount);
			model.addAttribute("selectStf_tb", selectStf_tb);
			model.addAttribute("selectAdmn_Tb", selectAdmn_Tb);
			model.addAttribute("selectRnk_Tb", selectRnk_Tb);
			model.addAttribute("selectDpt_Div_Tb", selectDpt_Div_Tb);

		} catch(Exception e) {
			e.printStackTrace();
		}
		return "/organization/list";
	}
	// �����ȣ ������ �Ľ�
	@RequestMapping(value="/zipcodeList.kitri" , method = {RequestMethod.GET, RequestMethod.POST}, produces = "text/planin;charset=UTF-8")
	public @ResponseBody String zipcodeList(@RequestParam("query") String query) throws Exception{
		 Map<String, Object> paramMap = new HashMap<String, Object>();
	     StringBuilder queryUrl = new StringBuilder();
	     queryUrl.append(ZIPCODE_API_URL);
	     queryUrl.append("?regkey=");
	     queryUrl.append(ZIPCODE_API_KEY);
	     queryUrl.append("&target=");
	     queryUrl.append("postNew");
	     queryUrl.append("&query=");
	     queryUrl.append(query.replaceAll(" ", ""));
	     
	     // document ����
	     Document document = Jsoup.connect(queryUrl.toString()).get();
	     // error �ڵ� ����
	     String errorCode = document.select("error_code").text();
	     
	     if(errorCode == null || "".equals(errorCode)) {
	    	 Elements elements = document.select("item");
	         List<ZipcodeDto> list = new ArrayList<ZipcodeDto>();
	         ZipcodeDto zipcodeDto = null;
	            
	         for(Element element : elements){
	             zipcodeDto = new ZipcodeDto();
	             zipcodeDto.setZipcode(element.select("postcd").text());
	             // ���� �˻�
	             zipcodeDto.setAddress(element.select("address").text());
	             list.add(zipcodeDto);
	         }
	         // list ��� put
	         paramMap.put("list", list);
	     } else {
	    	 String errorMessage = document.select("message").text();
	         paramMap.put("errorCode", errorCode);
	         paramMap.put("errorMessage", errorMessage);
	     }    
		return (new Gson()).toJson(paramMap);
	}
	// �μ� �߰�
	@ResponseBody
	@RequestMapping(value="/deptInsert.kitri", method = { RequestMethod.GET, RequestMethod.POST})
	public int deptInsert(HttpServletRequest request, @RequestBody Map<String, Object> params) throws Exception {
		int result = 0;
		try {
			result = organizationService.deptInsert(params);
		} catch(UncategorizedSQLException use) {
			use.printStackTrace();
		} catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	// �μ� ����
	@ResponseBody
	@RequestMapping(value="/deptDelete.kitri", method = { RequestMethod.GET, RequestMethod.POST})
	public int deptDelete(HttpServletRequest request, @RequestBody Map<String, Object> params) throws Exception {
		int result = 0;
		try {
			result = organizationService.deptDelete(params);
		} catch(DataIntegrityViolationException dive) {
			result = -1;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// �ߺ��μ��� üũ
	@ResponseBody
	@RequestMapping(value = "/selectDeptNm.kitri", method = { RequestMethod.GET, RequestMethod.POST})
	public int selectDeptNm(HttpServletRequest request, @RequestBody Map<String, Object> params) throws Exception {
		int result = 0;
		try {
			result = organizationService.selectDeptNm(params);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// �μ� ���� - �߰� / ���� �� �ٽ� ǥ��
	@ResponseBody
	@RequestMapping(value="/selectDpt_Div_Tb.kitri", method={ RequestMethod.GET, RequestMethod.POST})
	public List selectDpt_Div_Tb(HttpServletRequest request) throws Exception {
		List selectDpt_Div_Tb = new ArrayList<HashMap<String, Object>>();
		try {
			selectDpt_Div_Tb = organizationService.selectDpt_Div_Tb();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return selectDpt_Div_Tb;
	}
	// �μ��� �˻�
	@ResponseBody
	@RequestMapping(value = "/officerListSearch.kitri", method = { RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> officerListSearch(@RequestBody Map<String, Object> params, HttpServletRequest request) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		List officerList = new ArrayList<HashMap<String, Object>>();
		Map<String, Object> map = new HashMap<String, Object>();
		int officerListCount = 0;
		try {
			officerListCount = organizationService.officerListCount(params);
			// ����¡ ó�� 
			AjaxPaging paging = new AjaxPaging();
			// �� �Խù� �� 
			int totalCnt = officerListCount;
			// ���� ������ �ʱ�ȭ
			int current_page = 1;
			int before_page = 1;
			// ���� ����ڷκ��� �������� �޾ƿԴٸ�
			if (params.get("page") != null) {
				current_page = Integer.parseInt((String)params.get("page"));
			}
			// jsp�� �Ѹ� ������ �±׸� ���� ������.
			String pageIndexListAjax = paging.pageIndexListAjax(totalCnt, current_page);
			// SQL �������� ���� ���ǹ�
			int startCount = (current_page - 1) * 10 + 1;
			int endCount = current_page * 10;
			params.put("startCount", startCount);
			params.put("endCount", endCount);
			officerList = organizationService.officerList(params);
			map.put("pageIndexListAjax", pageIndexListAjax);
			map.put("officerList", officerList);
			map.put("officerListCount", officerListCount);
			result.putAll(map);  
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// �����ȣ �ߺ�üũ
	@ResponseBody
	@RequestMapping(value = "/selectStf_Sq.kitri", method = { RequestMethod.GET, RequestMethod.POST})
	public int selectStf_Sq(HttpServletRequest request, @RequestBody Map<String, Object> params) throws Exception {
		int result = 0;
		try {
			result = organizationService.selectStf_Sq(params);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// ������ ���� - üũ�� ���� ��������
	@ResponseBody
	@RequestMapping(value= "/selectUpdateOfficer.kitri", method={RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> selectUpdateOfficer(HttpServletRequest request, @RequestBody Map<String, Object> params) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			result = organizationService.selectUpdateOfficer(params);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// ������ ���� �߰�
	@RequestMapping(value = "/officerInsert.kitri", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView officerInsert(@ModelAttribute OrganizationDto organizationDto) {
		ModelAndView mav = new ModelAndView();
		int cnt = organizationService.officerInsert(organizationDto);
		if(cnt != 0) {
			System.out.println("������ ���� �Է� �Ϸ�...");
			mav.setViewName("/organization/insertok");
		} else {
			System.out.println("������ ���� �Է� ����...");
			mav.setViewName("/organization/insertfail");
		}
		return mav;
	}
	
	// ������ ���� ����
	@RequestMapping(value = "/officerUpdate.kitri", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView officerUpdate(@ModelAttribute OrganizationDto organizationDto) {
		ModelAndView mav = new ModelAndView();
		organizationService.officerUpdate(organizationDto);
		mav.setViewName("/organization/updateok");
		return mav;
	}
	// ������ Ż�� ó��
	@RequestMapping(value = "/officerLayoff.kitri", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView officerLayoff(@ModelAttribute OrganizationDto organizationDto) {
		ModelAndView mav = new ModelAndView();
		organizationService.officerLayoff(organizationDto);
		mav.setViewName("/organization/layoffok");
		return mav;
	}
	
}