package com.groupware.organization.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.groupware.organization.model.OrganizationDto;
import com.groupware.organization.model.ZipcodeDto;
import com.groupware.organization.service.OrganizationService;


@Controller
@RequestMapping("/organization")
public class OrganizationController {

	@Autowired
	private OrganizationService organizationService;
	
	// �����ȣ ����Ű �Է� (��ü��)
	public static final String ZIPCODE_API_KEY = "9616451f5d73c7f811532938527699";
	// API ���� ���� �ּ�
	public static final String ZIPCODE_API_URL = "http://biz.epost.go.kr/KpostPortal/openapi";
	
	@RequestMapping(value="/organization.kitri")
	public String listOrganization(HttpServletRequest request, HttpSession session, Model model, RedirectAttributes attr) throws Exception {
		// �α��� �� ���� ���� �Ŵ� �� ���߿�
		// Map<String, Object> myInfoList = new HashMap<String, Object>();	
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
			//Paging paging = new Paging();

			// �� �Խù� �� 
			//int totalCnt = officerListCount;

			// ���� ������ �ʱ�ȭ
			//int current_page = 1;

			// ���� ����ڷκ��� �������� �޾ƿԴٸ�
			//if (request.getParameter("page") != null) {
			//	current_page = Integer.parseInt((String)request.getParameter("page"));
			//}

			// jsp�� �Ѹ� ������ �±׸� ���� ������.
			//String pageIndexList = paging.pageIndexList(totalCnt, current_page);

			// SQL �������� ���� ���ǹ�
			//int startCount = (current_page - 1) * 10 + 1;
			//int endCount = current_page * 10;

			//params.put("startCount", startCount);
			//params.put("endCount", endCount);
			//officerList = organizationService.officerList(params);
			//model.addAttribute("pageIndexList", pageIndexList);
			// ======================================================================================================== ����¡ ó��
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
	
		
}
