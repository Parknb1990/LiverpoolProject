package kr.co.liverpool.register.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.liverpool.common.vo.UserVO;
import kr.co.liverpool.register.service.RegisterService;

@Controller
public class CheckEmailController {
	
	@Autowired
	private RegisterService registerService;

	@ResponseBody
	@RequestMapping(value="/emailcheck", method=RequestMethod.POST)
	//회원 이메일 체크
	public Map<String, String> EmailCheck(@ModelAttribute UserVO userVO) throws Exception {

		//회원 이메일을 받아서 vo에 저장
		UserVO vo = registerService.EmailCheck(userVO);
		//key, value 형식으로 register.jsp에 리턴 <이메일 중복체크>
		Map<String, String> resMap = new HashMap<String, String>();
		
		if(vo == null) {
			//이메일이 데이터베이스에 있지 않다면 key, value형식으로 register에 리턴한다.
			resMap.put("result", "success");
		} else {
			resMap.put("result", "fail");
		}
		
		return resMap;
	}
} 
