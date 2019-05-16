package kr.co.liverpool.register.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.liverpool.common.vo.UserVO;
import kr.co.liverpool.register.service.RegisterService;

@Controller
@RequestMapping("/register")
public class RegisterController {

	
	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(value= {"","/"}, method = RequestMethod.GET)
	public String register() {
		
		return "register/register";
	}
	
	/**
	 * 
	 * @param userVO
	 * @return
	 * @throws Exception
	 */
	
	@RequestMapping(value= {""} ,method = RequestMethod.POST)
	//회원가입
	public String insertUserOne(@ModelAttribute UserVO userVO) throws Exception {
		
		//서비스 클래스에서 insert
		registerService.insertUserOne(userVO);
		
		return "redirect:/login";
	
	
	}
	
}
