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
public class CheckNickNameController {
	
	@Autowired
	private RegisterService registerService;

	@ResponseBody
	@RequestMapping(value="/nickcheck", method=RequestMethod.POST)
	//닉네임 중복체크 
	public Map<String, String> NickNameCheck(
			@ModelAttribute UserVO userVO/* , HttpServletRequest request, Model model */) throws Exception {
		
		//회원정보를 리턴받아 vo에 저장
		UserVO vo = registerService.NickNameCheck(userVO);
		
		//key와 value 값을 map에 담기 위해 선언
		Map<String, String> resMap = new HashMap<String, String>();
		
		if(vo == null) {
			resMap.put("result", "success");
		} else {
			resMap.put("result", "fail");
		}
		
		return resMap;
	}
}
