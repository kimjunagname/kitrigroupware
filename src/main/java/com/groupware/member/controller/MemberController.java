package com.groupware.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import java.util.Map;
import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;


import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.groupware.member.model.MemberDto;
import com.groupware.member.service.MemberService;


@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	ServletContext servletContext; 
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/login.kitri", method=RequestMethod.GET)
	public String loginform() {				
		return "/login/login";
	}
	
	@RequestMapping(value="/login.kitri", method=RequestMethod.POST)
	public String loginform(@RequestParam Map<String, String> map, HttpSession session) {					
		MemberDto dto = memberService.login(map);				
		if(dto != null) {
			session.setAttribute("userinfo", dto);
			
//			return "/approval/list";
			//리다이렉트를 통해서 /approval/list.kitri 이동
			return "redirect:/approval/list.kitri";
		} else 
			return "/login/loginfail";
		
	}
	
	@RequestMapping(value="/register.kitri", method=RequestMethod.GET)
	public String register() {
		return "/join/registration";
	}
	
	@RequestMapping(value="/register.kitri", method=RequestMethod.POST)
	public ModelAndView register(MemberDto dto, @RequestParam("picture") MultipartFile multipartFile) {
		ModelAndView mav= new ModelAndView();
		
		if(multipartFile != null && !multipartFile.isEmpty()) {		
			String originalPicture = multipartFile.getOriginalFilename();
			String realPath = servletContext.getRealPath("/upload/profile");		
			
			DateFormat df = new SimpleDateFormat("yyMMdd");
			String saveFolder = df.format(new Date());
			String realSaveFolder = realPath + File.separator + saveFolder;
			System.out.println(realSaveFolder);
			File dir = new File(realSaveFolder);
			if(!dir.exists()) { //폴더가 없다면 만들어라
				dir.mkdirs();
			}
			String savePicture = UUID.randomUUID().toString() + originalPicture.substring(originalPicture.lastIndexOf('.')); 
			
			File file = new File(realSaveFolder, savePicture);
			try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {					
				e.printStackTrace();
			} catch (IOException e) {					
				e.printStackTrace();
			}
			
			dto.setStf_pt_rt(saveFolder);
			dto.setStf_pt_nm(savePicture);
		}
		
		int cnt= memberService.registerMember(dto);
		Map<String, String> map = new HashMap();		
		map.put("stf_eml1", dto.getStf_eml1());
		map.put("stf_eml2", dto.getStf_eml2());
		
		MemberDto memberdto = memberService.findId(map);
		
		if(cnt!= 0) { //회원가입 성공			
			mav.addObject("findId", memberdto);		
			mav.setViewName("/join/registrationok");
		} else //회원가입 실패
			mav.setViewName("login/login");
		
		return mav;
	}
	
	@RequestMapping(value="/idfind.kitri", method=RequestMethod.GET)
	public String idfind() {
		return "/login/idfind";
	}	
	
	@RequestMapping(value="/idfind.kitri", method=RequestMethod.POST)
	public String idfind(@RequestParam Map<String, String> map) {
		
		MemberDto memberDto = memberService.findId(map);
		
		if(memberDto != null) {
		
			final MimeMessagePreparator preparator = new MimeMessagePreparator() {
				@Override
				public void prepare(MimeMessage mimeMessage) throws Exception {
					final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
					helper.setFrom("kitrigroupware@gmail.com");
					helper.setTo(memberDto.getStf_eml1()+ "@" + memberDto.getStf_eml2());
					helper.setSubject("kitrigroupware 아이디 확인 이메일입니다");
					helper.setText(memberDto.getStf_nm() + "님의 아이디는" + memberDto.getStf_sq() + "입니다");
				}
			};

			mailSender.send(preparator);
		
			return "/login/idfindck";
		} else {
			return "/login/idfindfail";
		}
	}	
	
	@RequestMapping(value="/pwfind.kitri", method=RequestMethod.GET)
	public String pwfind() {
		return "/join/pwfind";
	}
	
	@RequestMapping(value="/pwfind.kitri", method=RequestMethod.POST)
	public String pwfind(@RequestParam Map<String, String> map) {
		
		MemberDto memberDto = memberService.findPw(map);
		
		if(memberDto != null) {		
		
			final MimeMessagePreparator preparator = new MimeMessagePreparator() {
				@Override
				public void prepare(MimeMessage mimeMessage) throws Exception {
					final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
					helper.setFrom("kitrigroupware@gmail.com");
					helper.setTo(memberDto.getStf_eml1()+ "@" + memberDto.getStf_eml2());
					helper.setSubject("kitrigroupware 비밀번호 확인 이메일입니다");
					helper.setText(memberDto.getStf_nm() + "님의 비밀번호는" + memberDto.getStf_pw() + "입니다");
				}
			};

			mailSender.send(preparator);
		
			return "/join/pwfindck";
			
		} else {
			return "/join/pwfindfail";
		}
	}
	
	@RequestMapping("/emlckeck.kitri")
	public @ResponseBody String idCheck(@RequestParam Map<String, String> map) {	
		
		int cnt= memberService.emlCheck(map);
		
		JSONObject json= new JSONObject(); 		
		json.put("emlcount", cnt); 
		
		return json.toString();		
	}
}
