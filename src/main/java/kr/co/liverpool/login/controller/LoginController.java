package kr.co.liverpool.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.liverpool.common.vo.UserVO;
import kr.co.liverpool.login.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	//회원정보가 없는 경우 msg를 던져줌
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(@RequestParam(value="msg", required = false) String msg, Model model) {
		
		
		model.addAttribute("msg", msg);
		
		return "/login/login";
	}
	
	/* 로그인 정보 */
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginOk(@ModelAttribute UserVO userVO, HttpSession session, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		/* 로그인 정보를 가져와 vo객체에 저장 */
		UserVO vo = loginService.selectUserOne(userVO);
		
		/* 회원 정보가 있다면 userInfo에 주입 */
		if(vo != null) {
			session.setAttribute("userInfo", vo);
			
			return "redirect:/main";
		
			/* 회원정보가 없는 경우 redirect login을 하여 url에 던져준다. */
		} else {
			redirectAttributes.addAttribute("msg", "아이디와 비밀번호를 다시 입력해주세요.");
			
			return "redirect:/login"; 
		}

	}
	
	

}
