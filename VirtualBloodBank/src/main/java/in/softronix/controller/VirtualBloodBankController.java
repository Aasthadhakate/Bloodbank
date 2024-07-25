package in.softronix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import in.softronix.entity.VirtualBloodBank;
import in.softronix.service.VirtualBloodBankService;

@Controller
public class VirtualBloodBankController {
	
	@Autowired
	VirtualBloodBankService service;
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String ind() {
		return "index";
	}
	
	
	@RequestMapping(value="header",method=RequestMethod.GET)
	public String head()
	{
		return "header";
	}
	
	@RequestMapping(value="welcome",method=RequestMethod.GET)
	public String wel()
	{
		return "welcome";
	}
	
	@RequestMapping(value="side1",method=RequestMethod.GET)
	public String side1()
	{
		return "side1";
	}
	
	@RequestMapping(value="side2",method=RequestMethod.GET)
	public String side2()
	{
		return "side2";
	}
	
	@RequestMapping(value="footer",method=RequestMethod.GET)
	public String foot()
	{
		return "footer";
	}
	
	@RequestMapping(value="register",method=RequestMethod.GET)
	public String regis()
	{
		return "register";
	}
	
	@RequestMapping(value="save",method=RequestMethod.POST)
	public String saves(@RequestParam String email,@RequestParam String password,@RequestParam String retypepassword, @RequestParam String role)
	{
		VirtualBloodBank bloodbank=new VirtualBloodBank();
		bloodbank.setEmail(email);
		bloodbank.setPassword(password);
		bloodbank.setRetypepassword(retypepassword);
		bloodbank.setRole(role);
		
		VirtualBloodBank bank = new VirtualBloodBank();
		bank = service.saveReg(bloodbank);
		
		if(password.equals(retypepassword))
		{
			return "register";
		}
		else {
			return "redirect:/index";
		}
	}

	
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login()
	{
		return "login";
	}
}
