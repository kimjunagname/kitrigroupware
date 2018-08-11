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
	// 우편번호 인증키 입력 (우체국)
	public static final String ZIPCODE_API_KEY = "9616451f5d73c7f811532938527699";
	// API 쓰기 위한 주소
	public static final String ZIPCODE_API_URL = "http://biz.epost.go.kr/KpostPortal/openapi";
	
	// 초기화면 리스트 출력하기
	@RequestMapping(value="/organization.kitri")
	public String listOrganization(HttpServletRequest request, HttpSession session, Model model, RedirectAttributes attr, @RequestParam Map<String, String> map) throws Exception {
		// 로그인 후 세션 처리
		String stf_sq;
		
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());
		
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
			map.put("admn_sq", (String) session.getAttribute("admn_sq"));
		}
		
		// 세션을 불러와 admn_id에 넣는다. 없다면 null이나 ""이가 들어오겟죠
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
			// 페이징 처리 
			AjaxPaging paging = new AjaxPaging();
			// 총 게시물 수 
			int totalCnt = officerListCount;
			// 현재 페이지 초기화
			int current_page = 1;
			// 만약 사용자로부터 페이지를 받아왔다면
			if (request.getParameter("page") != null) {
				current_page = Integer.parseInt((String)request.getParameter("page"));
			}
			// jsp에 뿌릴 페이지 태그를 만들어서 보낸다.
			String pageIndexList = paging.pageIndexList(totalCnt, current_page);
			// SQL 쿼리문에 넣을 조건문
			int startCount = (current_page - 1) * 10 + 1;
			int endCount = current_page * 10;
			params.put("startCount", startCount);
			params.put("endCount", endCount);
			officerList = organizationService.officerList(params);
			model.addAttribute("pageIndexList", pageIndexList);
			//페이징 처리
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
	// 우편번호 데이터 파싱
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
	     
	     // document 선언
	     Document document = Jsoup.connect(queryUrl.toString()).get();
	     // error 코드 선언
	     String errorCode = document.select("error_code").text();
	     
	     if(errorCode == null || "".equals(errorCode)) {
	    	 Elements elements = document.select("item");
	         List<ZipcodeDto> list = new ArrayList<ZipcodeDto>();
	         ZipcodeDto zipcodeDto = null;
	            
	         for(Element element : elements){
	             zipcodeDto = new ZipcodeDto();
	             zipcodeDto.setZipcode(element.select("postcd").text());
	             // 지번 검색
	             zipcodeDto.setAddress(element.select("address").text());
	             list.add(zipcodeDto);
	         }
	         // list 결과 put
	         paramMap.put("list", list);
	     } else {
	    	 String errorMessage = document.select("message").text();
	         paramMap.put("errorCode", errorCode);
	         paramMap.put("errorMessage", errorMessage);
	     }    
		return (new Gson()).toJson(paramMap);
	}
	// 부서 추가
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
	// 부서 삭제
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
	// 중복부서명 체크
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
	
	// 부서 관리 - 추가 / 삭제 후 다시 표출
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
	// 부서원 검색
	@ResponseBody
	@RequestMapping(value = "/officerListSearch.kitri", method = { RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> officerListSearch(@RequestBody Map<String, Object> params, HttpServletRequest request) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		List officerList = new ArrayList<HashMap<String, Object>>();
		Map<String, Object> map = new HashMap<String, Object>();
		int officerListCount = 0;
		try {
			officerListCount = organizationService.officerListCount(params);
			// 페이징 처리 
			AjaxPaging paging = new AjaxPaging();
			// 총 게시물 수 
			int totalCnt = officerListCount;
			// 현재 페이지 초기화
			int current_page = 1;
			int before_page = 1;
			// 만약 사용자로부터 페이지를 받아왔다면
			if (params.get("page") != null) {
				current_page = Integer.parseInt((String)params.get("page"));
			}
			// jsp에 뿌릴 페이지 태그를 만들어서 보낸다.
			String pageIndexListAjax = paging.pageIndexListAjax(totalCnt, current_page);
			// SQL 쿼리문에 넣을 조건문
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
	
	// 사원번호 중복체크
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
	// 임직원 수정 - 체크된 정보 가져오기
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
	
	// 구성원 정보 추가
	@RequestMapping(value = "/officerInsert.kitri", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView officerInsert(@ModelAttribute OrganizationDto organizationDto) {
		ModelAndView mav = new ModelAndView();
		int cnt = organizationService.officerInsert(organizationDto);
		if(cnt != 0) {
			System.out.println("구성원 정보 입력 완료...");
			mav.setViewName("/organization/insertok");
		} else {
			System.out.println("구성원 정보 입력 실패...");
			mav.setViewName("/organization/insertfail");
		}
		return mav;
	}
	
	// 구성원 정보 수정
	@RequestMapping(value = "/officerUpdate.kitri", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView officerUpdate(@ModelAttribute OrganizationDto organizationDto) {
		ModelAndView mav = new ModelAndView();
		organizationService.officerUpdate(organizationDto);
		mav.setViewName("/organization/updateok");
		return mav;
	}
	// 구성원 탈퇴 처리
	@RequestMapping(value = "/officerLayoff.kitri", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView officerLayoff(@ModelAttribute OrganizationDto organizationDto) {
		ModelAndView mav = new ModelAndView();
		organizationService.officerLayoff(organizationDto);
		mav.setViewName("/organization/layoffok");
		return mav;
	}
	
}