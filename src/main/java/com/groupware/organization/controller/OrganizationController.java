package com.groupware.organization.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.groupware.organization.model.OrganizationDto;
import com.groupware.organization.model.ZipcodeDto;
import com.groupware.organization.service.OrganizationService;


@Controller
@RequestMapping("/organization")
public class OrganizationController {

	@Autowired
	private OrganizationService organizationService;
	
	// 우편번호 인증키 입력 (우체국)
	public static final String ZIPCODE_API_KEY = "9616451f5d73c7f811532938527699";
	// API 쓰기 위한 주소
	public static final String ZIPCODE_API_URL = "http://biz.epost.go.kr/KpostPortal/openapi";
	
	@RequestMapping("/organization.kitri")
	public ModelAndView listOrganization(Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();	
		// 입력받은 데이터 없기 때문에 주석처리 합니다.
		// List<ReboardDto> list = reboardService.listArticle(map);
		// PageNavigation navigation = commonService.getPageNavigation(map);
		// navigation.setRoot("/board");
		// navigation.makeNavigator();
		// mav.addObject("list", list);
		// mav.addObject("navigator", navigation);
		mav.setViewName("organization/list");
		return mav;
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
		
}
