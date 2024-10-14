package in.softronix.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import org.springframework.ui.Model;

import in.softronix.entity.AddBloodbag;
import in.softronix.entity.Bagstatus;
import in.softronix.entity.BloodbankRegister;
import in.softronix.entity.DonorDate;
import in.softronix.entity.DonorRegister;
import in.softronix.entity.HRequestBlood;
import in.softronix.entity.Helpus;
import in.softronix.entity.HospitalRegister;
import in.softronix.entity.StockManagerRegister;
import in.softronix.entity.Stockhealth;
import in.softronix.entity.VirtualBloodBank;
import in.softronix.entity.bloodgroupCount;
import in.softronix.entity.donorhealth;
import in.softronix.service.AddBloodbagService;
import in.softronix.service.BagstatusService;
import in.softronix.service.BloodbankRegisterService;
import in.softronix.service.DonorDateService;
import in.softronix.service.DonorRegisterService;
import in.softronix.service.DonorhealthService;
import in.softronix.service.HRequestBloodService;
import in.softronix.service.HelpusService;
import in.softronix.service.HospitalRegisterService;
import in.softronix.service.LoginService;
import in.softronix.service.StockRegisterService;
import in.softronix.service.StockhealthService;
import in.softronix.service.VirtualBloodBankService;
import in.softronix.service.bloodgroupCountService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class VirtualBloodBankController {
	
	@Autowired
	VirtualBloodBankService service;
	
	@Autowired
	LoginService logservice;
	
	@Autowired
	DonorRegisterService donorservice;
	
	@Autowired
	DonorhealthService donorhealthservice;
	
	@Autowired
	DonorDateService donordateservice;
	
	@Autowired
	BloodbankRegisterService bloodbankservice; 
	
	@Autowired
	HospitalRegisterService hospitalregisterservice;
	
	@Autowired
	HRequestBloodService hRequestservice;
	
	@Autowired
	StockRegisterService stockservice;
	
	@Autowired
	StockhealthService stockhealthser;
	
	@Autowired
	AddBloodbagService addservice;
	
	@Autowired
	BagstatusService bagservice;
	
	@Autowired
	HelpusService helpservice;
	
	@Autowired
	bloodgroupCountService bgcountservice;
	
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
	
	
	@RequestMapping(value="aboutus",method=RequestMethod.GET)
	public String about()
	{
		return "aboutus";
	}
	
	@RequestMapping(value="bloodfact",method=RequestMethod.GET)
	public String fact()
	{
		return "bloodfact";
	}
	
	@RequestMapping(value="help",method=RequestMethod.GET)
	public String helpus()
	{
		return "help";
	}
	
	@RequestMapping(value="help",method=RequestMethod.POST)
	public String help(@RequestParam String name, @RequestParam String email, @RequestParam String message)
	{
		Helpus hee = new Helpus();
		hee.setName(name);
		hee.setEmail(email);
		hee.setMessage(message);
		
		Helpus he = new Helpus();
		he = helpservice.saveHelp(hee);
		
		if(he!=null) {
			
			return "redirect:/index";
			
		}else {
			
			return "help";
			
		}
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
		
		if(password.equals(retypepassword))
		{
			bank = service.saveReg(bloodbank);
		}
		
		if(bank==null) {
			return "register";
		}
		else {
			return "redirect:/welcome";
		}
	}

	
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login(Model model)
	{
		return "login";
	}
	
	@RequestMapping(value="saves",method=RequestMethod.POST)
	public String validate(@RequestParam String userid,@RequestParam String password,Model model,HttpServletRequest request) {
	 VirtualBloodBank logg = logservice.findByUser(userid);
    
	 request.getSession().setAttribute("id", logg.getEmail());
	 request.getSession().setAttribute("userRole", logg.getRole());
	 
	 if(logg != null && logg.getPassword().equals(password)) {
    		
    		
			
    		if(logg.getRole().equals("donor")) {
				return "redirect:/donorindex";
			}
			else if(logg.getRole().equals("bloodbank")) {
				return "redirect:/bloodbankindex";
			}
			else if(logg.getRole().equals("hospital")) {
				return "redirect:/hospitalindex";
			}
			else if(logg.getRole().equals("stockmanager")) {
				
				return "redirect:/stockindex";
			}
			else {
				
				return "login";
			}
			
    	}
    	else {
    		model.addAttribute("errorMessage","Incorrect UserId or password");
    		return "login";
    	}
		
    }

	@RequestMapping(value="donorindex",method=RequestMethod.GET)
	public String don()
	{
		return "donorindex";
	}
	
	@RequestMapping(value="donorheader",method=RequestMethod.GET)
	public String dhead()
	{
		return "donorheader";
	}
	
	@RequestMapping(value="donorhome",method=RequestMethod.GET)
	public String donorhome()
	{
		return "donorhome";
	}
	
	@RequestMapping(value="donorregis",method=RequestMethod.GET)
	public String dreg()
	{
		return "donorregis";
	}
	
	@RequestMapping(value="savedonor",method=RequestMethod.POST)
	public String saveDonor(@RequestParam String userid,@RequestParam String name, @RequestParam String dateOfBirth,@RequestParam String contactNo, @RequestParam String address,@RequestParam String district, @RequestParam String gender,
    @RequestParam String bloodGroup, @RequestParam String rh,@RequestParam String weight, @RequestParam String lastDateOfDonation,@RequestParam String frequency) {
		
		DonorRegister donor = new DonorRegister();
		donor.setUserid(userid);
		donor.setName(name);
        donor.setDateOfBirth(dateOfBirth);
        donor.setContactNo(contactNo);
        donor.setAddress(address);
        donor.setDistrict(district);
        donor.setGender(gender);
        donor.setBloodGroup(bloodGroup);
        donor.setRh(rh);
        donor.setWeight(weight);
        donor.setLastDateOfDonation(lastDateOfDonation);
        donor.setFrequency(frequency);
        
        DonorRegister don = new DonorRegister();
        don = donorservice.saveDonor(donor);
        
        if(don!=null) {
        	
        	bloodgroupCount existingBloodGroupCount = bgcountservice.findByBloodgroupAndRh(bloodGroup, rh);
			 if (existingBloodGroupCount != null) {
		            // If the combination exists, increment the count
		            existingBloodGroupCount.setCount(existingBloodGroupCount.getCount() + 1);
		            bgcountservice.saveBloodGroupCount(existingBloodGroupCount);
		        } else {
		            // If the combination doesn't exist, create a new record with count 1
		            bloodgroupCount newBloodCount = new bloodgroupCount();
		            newBloodCount.setBloodGroup(bloodGroup);
		            newBloodCount.setRh(rh);
		            newBloodCount.setCount(1);  // Set count to 1 initially
		            bgcountservice.saveBloodGroupCount(newBloodCount);
		        } 
			 
        	return "redirect:/donorhome";
        }
        else {
        	return "donorregis";
        }
	}
	
	
	@RequestMapping(value="deditpro",method=RequestMethod.GET)
	public String dedit()
	{
		return "deditpro";
	}
	
	@RequestMapping(value="deditpro", method=RequestMethod.POST)
	public String editProfile(@RequestParam("userid") String userId, Model model) {
	    DonorRegister donor = donorservice.findByUserId(userId);
	    if(donor != null) {
	        model.addAttribute("donor", donor);
	        return "donoredit";
	    } else {
	        model.addAttribute("error", "User not found");
	        return "deditpro";
	    }
	}
	
	@RequestMapping(value="donoredit", method=RequestMethod.POST)
	public String updateProfile(@RequestParam Map<String, String> params, Model model) {
	    String userId = params.get("userid");
	    DonorRegister donor = donorservice.findByUserId(userId);

	    if (donor != null) {
	        donor.setName(params.get("name"));
	        donor.setDateOfBirth(params.get("dateOfBirth"));
	        donor.setContactNo(params.get("contactNo"));
	        donor.setAddress(params.get("address"));
	        donor.setDistrict(params.get("district"));
	        donor.setGender(params.get("gender"));
	        donor.setBloodGroup(params.get("bloodGroup"));
	        donor.setRh(params.get("rh"));
	        donor.setWeight(params.get("weight"));

	        donorservice.saveDonor(donor);
	        return "redirect:/donorhome"; 
	    } else {
	        model.addAttribute("error", "User not found");
	        return "donoredit";
	    }
	}
	
	@RequestMapping(value="donorhealth",method=RequestMethod.GET)
	public String dhealth()
	{
		return "donorhealth";
	}
	
	@RequestMapping(value="donorhealth",method=RequestMethod.POST)
	public String donhealth(@RequestParam String yourid,@RequestParam String status) {
		
		donorhealth dhealth = new donorhealth();
		dhealth.setYourid(yourid);
		dhealth.setStatus(status);
		
		donorhealth donhealth = new donorhealth();
		donhealth = donorhealthservice.saveDhealth(dhealth); 
		
		if(donhealth != null) {
			return "redirect:/donorhome";
		} else {
			return "donorhealth";
		}
		
	}
	
	@RequestMapping(value="donordate",method=RequestMethod.GET)
	public String ddate()
	{
		return "donordate";
	}
	
	@RequestMapping(value="donordate", method=RequestMethod.POST)
	public String saveDateOfDonate(@RequestParam String userid, @RequestParam String dateOfdonate, @RequestParam int bloodbankid, 
	Model model,HttpServletRequest request) {
	    
	    List<DonorDate> list = donordateservice.getHistoryByUserId(userid);
	    request.getSession().setAttribute("userId", userid);
	    
	    if (!list.isEmpty()) {
	        request.getSession().setAttribute("list", list);
	        return "redirect:/donorhistory"; 
	    } else {
	        model.addAttribute("error", "Failed to save the date on donate");
	        return "donordate";
	    }
	}

	
	@RequestMapping(value="donorhistory",method=RequestMethod.GET)
	public String showhistory()
	{
		return "donorhistory";
	}
	
	@RequestMapping(value="donorhistory",method=RequestMethod.POST)
    public String showHistory(@RequestParam("userid")  String userid, Model model) {
        List<DonorDate> history = donordateservice.getHistoryByUserId(userid);
        model.addAttribute("history", history);
        return "donorhistory";
    }

	
	
	@RequestMapping(value="rindex",method=RequestMethod.GET)  
    public String rindex() {
   	 	return "rindex";
	} 
	
	@RequestMapping(value="reheader",method=RequestMethod.GET)  
	public String reheader(Model model, HttpServletRequest request) {
	    String role = (String) request.getSession().getAttribute("userRole");
	    model.addAttribute("role", role);
	    return "reheader";
	} 
	
	@RequestMapping(value="reset",method=RequestMethod.GET)  
	public String reset() {
		return "reset";
	}
	
	@RequestMapping(value="reset",method=RequestMethod.POST)
	public String resetpass(@RequestParam String password, @RequestParam String retypepassword, Model model, HttpServletRequest request)
	{
		if(password.equals(retypepassword))
		{
			VirtualBloodBank user = new VirtualBloodBank();
			VirtualBloodBank user1 = new VirtualBloodBank();
			VirtualBloodBank user2 = new VirtualBloodBank();
			
			user2=service.findByUserId((String)request.getSession().getAttribute("id"));
			
			user.setId(user2.getId());
	        user.setPassword(password);
	        user1=service.update(user);
	        
	        if (user1 != null) {
                
                return"login";
	        }     
        
	        else {
	        	model.addAttribute("error", "Not found data");
	        	return "reset";
	        }

		}
		else {
			return "reset";
		}
	}
	
	
	
	@RequestMapping(value="bloodbankindex",method=RequestMethod.GET)  
	public String bloodbank() {
		return "bloodbankindex";
	}
	
	@RequestMapping(value="bheader",method=RequestMethod.GET)  
	public String bheader() {
		return "bheader";
	}
	
	@RequestMapping(value="bcontent",method=RequestMethod.GET)
	public String bcontent() {
		return "bcontent";
	}
	
	@RequestMapping(value="bloodregis",method=RequestMethod.GET)
	public String bloodreg() {
		return "bloodregis";
	}
	
	@RequestMapping(value="bloodregis",method=RequestMethod.POST)
	public String saveblood(@RequestParam String userid, @RequestParam String name, @RequestParam String contact, 
			@RequestParam String address,@RequestParam String district, @RequestParam String nameofincharge, 
			@RequestParam String inchargerphone,@RequestParam String bloodseparationfacility, @RequestParam String attachedstorageunit, 
			@RequestParam String licenseno,@RequestParam String licensestatus,@RequestParam String validityupto,
			@RequestParam String reportingperiod,@RequestParam String supportbynaco) {

		BloodbankRegister blood = new BloodbankRegister();
		blood.setUserid(userid);
		blood.setName(name);
		blood.setContact(contact);
		blood.setAddress(address);
		blood.setDistrict(district);
		blood.setNameofincharge(nameofincharge);
		blood.setInchargerphone(inchargerphone);
		blood.setBloodseparationfacility(bloodseparationfacility);
		blood.setAttachedstorageunit(attachedstorageunit);
		blood.setLicenseno(licenseno);
		blood.setLicensestatus(licensestatus);
		blood.setValidityupto(validityupto);
		blood.setReportingperiod(reportingperiod);
		blood.setSupportbynaco(supportbynaco);
		
		BloodbankRegister blood1 = new BloodbankRegister();
		blood1 = bloodbankservice.saveBlood(blood);
		if(blood1 != null) {
			return "redirect:/bcontent";
		}
		else {
			return "bloogregis";
		}
	}
	
	@RequestMapping(value="beditpro",method=RequestMethod.GET)
	public String bedit()
	{
		return "beditpro";
	}
	
	@RequestMapping(value="beditpro", method=RequestMethod.POST)
	public String editprofile(@RequestParam("userid") String userId, Model model) {
	    BloodbankRegister blood = bloodbankservice.findByUserId(userId);
	    if(blood != null) {
	        model.addAttribute("blood", blood);
	        return "bloodedit";
	    } else {
	        model.addAttribute("error", "User not found");
	        return "beditpro";
	    }
	}
	
	@RequestMapping(value="bloodedit", method=RequestMethod.POST)
	public String updateprofile(@RequestParam Map<String, String> params, Model model) {
	    String userId = params.get("userid");
	    BloodbankRegister blood = bloodbankservice.findByUserId(userId);

	    if (blood != null) {
	    	blood.setName(params.get("name"));
	        blood.setContact(params.get("contact"));
	        blood.setAddress(params.get("address"));
	        blood.setDistrict(params.get("district"));
	        blood.setNameofincharge(params.get("nameofincharge"));
	        blood.setInchargerphone(params.get("inchargerphone"));
	        blood.setBloodseparationfacility(params.get("bloodseparationfacility"));
	        blood.setAttachedstorageunit(params.get("attachedstorageunit"));
	        blood.setLicenseno(params.get("licenseno"));
	        blood.setLicensestatus(params.get("licensestatus"));
	        blood.setValidityupto(params.get("validityupto"));
	        blood.setReportingperiod(params.get("reportingperiod"));
	        blood.setSupportbynaco(params.get("supportbynaco"));

	        bloodbankservice.saveBlood(blood);
	        return "redirect:/bcontent"; 
	    } else {
	        model.addAttribute("error", "User not found");
	        return "bloodedit";
	    }
	}
	
	@RequestMapping(value="searchindex",method=RequestMethod.GET)
	public String sindex()
	{
		return "searchindex";
	}
	
	@RequestMapping(value="searchheader",method=RequestMethod.GET)
	public String sheader()
	{
		return "searchheader";
	}
	
	@RequestMapping(value="searchblood",method=RequestMethod.GET)
	public String search() {
		return "searchblood";
	}
	
	@RequestMapping(value="searchsave", method=RequestMethod.GET)
	public String searchblood(HttpServletRequest request, @RequestParam String bloodGroup,
	        @RequestParam String rh, @RequestParam String district) {
	    List<DonorRegister> donors = donorservice.getAll();

	    BloodbankRegister bloodbank = bloodbankservice.findByUserId((String) request.getSession().getAttribute("id"));

	    request.getSession().setAttribute("bg", bloodGroup);
	    request.getSession().setAttribute("rh", rh);
	    request.getSession().setAttribute("district", district);
	    request.getSession().setAttribute("list", donors);
	    request.getSession().setAttribute("list1", bloodbank.getUserid());

	    if (!donors.isEmpty()) {
	        return "searchresult";
	    } else {
	        return "searchblood";
	    }
	}
	
	@RequestMapping(value="searchresult",method=RequestMethod.GET)
	public String sresult()
	{
		return "searchresult";
	}
	
	@RequestMapping(value="checkindex",method=RequestMethod.GET)
	public String cindex()
	{
		return "checkindex";
	}
	
	@RequestMapping(value = "cheader", method = RequestMethod.GET)
	public String checkheader(Model model, HttpServletRequest request) {
	    String role = (String) request.getSession().getAttribute("userRole");
	    model.addAttribute("role", role); // This line is optional since we're using session in JSP directly
	    return "cheader";
	}

	
	@RequestMapping(value = "checkstock", method = RequestMethod.GET)
	public String checkstock(HttpServletRequest request) {
	    List<String> allBloodGroups = Arrays.asList("A +Ve", "A -Ve", "B +Ve", "B -Ve", "AB +Ve", "AB -Ve", "O +Ve", "O -Ve");

	    List<bloodgroupCount> bloodCounts = bgcountservice.getAll();
	    List<bloodgroupCount> finalBloodCounts = new ArrayList<>();

	    // Loop through all blood groups and check if there's a matching count
	    for (String bloodGroup : allBloodGroups) {
	        boolean found = false;
	        for (bloodgroupCount bgcnt : bloodCounts) {
	            String fullBloodGroup = bgcnt.getBloodGroup() + " " + bgcnt.getRh();
	            if (fullBloodGroup.equals(bloodGroup)) {
	                finalBloodCounts.add(bgcnt);
	                found = true;
	                break;
	            }
	        }
	        // If the blood group was not found, add it with a count of 0
	        if (!found) {
	            bloodgroupCount newBgc = new bloodgroupCount();
	            String[] parts = bloodGroup.split(" ");
	            newBgc.setBloodGroup(parts[0]);
	            newBgc.setRh(parts[1]);
	            newBgc.setCount(0);
	            finalBloodCounts.add(newBgc);
	        }
	    }

	    // Add the final list to the session
	    request.getSession().setAttribute("list", finalBloodCounts);
	    return "checkstock";
	}
	
	@RequestMapping(value="hospitalindex",method=RequestMethod.GET)
	public String hospital()
	{
		return "hospitalindex";
	}
	
	@RequestMapping(value="hospitalhome",method=RequestMethod.GET)
	public String hospitalho()
	{
		return "hospitalhome";
	}
	
	@RequestMapping(value="hheader",method=RequestMethod.GET)
	public String hheader()
	{
		return "hheader";
	}
	
	@RequestMapping(value="hospitalregis",method=RequestMethod.GET)
	public String hregis()
	{
		return "hospitalregis";
	}
	
	@RequestMapping(value="hospitalregis",method=RequestMethod.POST)
	public String hregister(@RequestParam String userid,@RequestParam String name,@RequestParam String contact,
			@RequestParam String address,@RequestParam String district,@RequestParam String mdname,
			@RequestParam String mdnumber)
	{
		HospitalRegister hospital = new HospitalRegister();
		
		hospital.setUserid(userid);
		hospital.setName(name);
		hospital.setContact(contact);
		hospital.setAddress(address);
		hospital.setDistrict(district);
		hospital.setMdname(mdname);
		hospital.setMdnumber(mdnumber);
		
		HospitalRegister hospi = new HospitalRegister();
		hospi = hospitalregisterservice.saveHospital(hospital);
		
		if(hospi!=null)
		{
			return "redirect:/hospitalhome";
		}
		else {
			return "hospitalregis";
		}
	}
	
	@RequestMapping(value="heditpro",method=RequestMethod.GET)
	public String hedit()
	{
		return "heditpro";
	}
	
	@RequestMapping(value="heditpro", method=RequestMethod.POST)
	public String editpro(@RequestParam("userid") String userId, Model model) {
	    HospitalRegister hospital = hospitalregisterservice.findByUserId(userId);
	    if(hospital != null) {
	        model.addAttribute("hospital", hospital);
	        return "hospitaledit";
	    } else {
	        model.addAttribute("error", "User not found");
	        return "heditpro";
	    }
	}
	
	@RequestMapping(value="hospitaledit", method=RequestMethod.POST)
	public String updateprof(@RequestParam Map<String, String> params, Model model) {
	    String userId = params.get("userid");
	    HospitalRegister hospital = hospitalregisterservice.findByUserId(userId);

	    if (hospital != null) {
	    	hospital.setName(params.get("name"));
	    	hospital.setContact(params.get("contact"));
	    	hospital.setAddress(params.get("address"));
	    	hospital.setDistrict(params.get("district"));
	        hospital.setMdname(params.get("mdname"));
	        hospital.setMdnumber(params.get("mdnumber"));

	        hospitalregisterservice.saveHospital(hospital);
	        return "redirect:/hospitalhome"; 
	    } else {
	        model.addAttribute("error", "User not found");
	        return "hospitaledit";
	    }
	}
	
	@RequestMapping(value="requestblood",method=RequestMethod.GET)
	public String reblood()
	{
		return "requestblood";
	}
	
	@RequestMapping(value="requestblood",method=RequestMethod.POST)
	public String hrequest(@RequestParam int hospitalid,@RequestParam int bloodbankid,@RequestParam String bloodGroup,
			@RequestParam String rh,@RequestParam int numberofrequire,@RequestParam String date)
	{
		HRequestBlood hRequest = new HRequestBlood();
		
		hRequest.setHospitalid(hospitalid);
		hRequest.setBloodbankid(bloodbankid);
		hRequest.setBloodGroup(bloodGroup);
		hRequest.setRh(rh);
		hRequest.setNumberofrequire(numberofrequire);
		hRequest.setDate(date);
		
		HRequestBlood hrequestblood = new HRequestBlood();
		hrequestblood = hRequestservice.saveRequestblood(hRequest);
		
		if(hrequestblood!=null)
		{
			return "redirect:/hospitalhome";
		}
		else {
			return "requestblood";
		}
	}
	
	@RequestMapping(value = "reserveblood", method = RequestMethod.GET)
	public String hreserve(HttpServletRequest request) {
	    List<String> allBloodGroups = Arrays.asList("A +Ve", "A -Ve", "B +Ve", "B -Ve", "AB +Ve", "AB -Ve", "O +Ve", "O -Ve");

	    List<bloodgroupCount> bloodCounts = bgcountservice.getAll();

	    List<bloodgroupCount> finalBloodCounts = new ArrayList<>();

	    // Loop through all blood groups and check if there's a matching count
	    for (String bloodGroup : allBloodGroups) {
	        boolean found = false;
	        for (bloodgroupCount bgcnt : bloodCounts) {
	            String fullBloodGroup = bgcnt.getBloodGroup() + " " + bgcnt.getRh();
	            if (fullBloodGroup.equals(bloodGroup)) {
	                finalBloodCounts.add(bgcnt);
	                found = true;
	                break;
	            }
	        }
	        // If the blood group was not found, add it with a count of 0
	        if (!found) {
	            bloodgroupCount newBgc = new bloodgroupCount();
	            String[] parts = bloodGroup.split(" ");
	            newBgc.setBloodGroup(parts[0]);
	            newBgc.setRh(parts[1]);
	            newBgc.setCount(0);
	            finalBloodCounts.add(newBgc);
	        }
	    }

	    // Add the final list to the session
	    request.getSession().setAttribute("hreserveBloodCounts", finalBloodCounts);
	    return "reserveblood";
	}

	@RequestMapping(value = "reserveblood", method = RequestMethod.POST)
	public String reserveBlood(@RequestParam int hospitalid,@RequestParam int bloodbankid,@RequestParam String bloodGroup,
			@RequestParam String rh,@RequestParam int numberofrequire,@RequestParam String date, HttpServletRequest request) {

	    // Create the blood group identifier
	    String fullBloodGroup = bloodGroup + " " + rh;

	    // Fetch the current counts from the service
	    List<bloodgroupCount> bloodCounts = bgcountservice.getAll();
	    for (bloodgroupCount bgcnt : bloodCounts) {
	        String currentBloodGroup = bgcnt.getBloodGroup() + " " + bgcnt.getRh();
	        if (currentBloodGroup.equals(fullBloodGroup)) {
	            int availableCount = bgcnt.getCount();
	            int issuedCount = bgcnt.getIssued(); // Get the current issued bags count

	            // Check if enough bags are available
	            if (availableCount >= numberofrequire) {
	                // Update the available count and issued bags count
	                bgcnt.setCount(availableCount - numberofrequire);
	                bgcnt.setIssued(issuedCount + numberofrequire); // Update issued bags

	                // Save the updated blood group count in the database
	                bgcountservice.update(bgcnt); // Implement this method in your service

	                // Optionally save reservation details in another table if needed
	                request.getSession().setAttribute("hreserveBloodCounts", bloodCounts);
	            } else {
	                // Handle case when not enough bags are available
	                request.setAttribute("error", "Not enough bags available for reservation. Available: " + availableCount + ", Requested: " + numberofrequire);
	                return "reserveblood"; // Redirect back to the reservation page with error message
	            }
	            break;
	        }
	    }

	    // Refresh the session attribute to reflect updated counts
	    request.getSession().setAttribute("hreserveBloodCounts", bloodCounts);
	    return "redirect:/reserveblood"; // Redirect to the reservation page to show updated counts
	}
	
	@RequestMapping(value="stockindex",method=RequestMethod.GET)
	public String stock() {
		return "stockindex";
	}
	
	@RequestMapping(value="stockheader",method=RequestMethod.GET)
	public String stockhead() {
		return "stockheader";
	}
	
	@RequestMapping(value="stockhome",method=RequestMethod.GET)
	public String stockhome() {
		return "stockhome";
	}
	
	@RequestMapping(value="stockregis",method=RequestMethod.GET)
	public String stockregi() {
		return "stockregis";
	}
	
	@RequestMapping(value="stockregis",method=RequestMethod.POST)
	public String sregister(@RequestParam String userid,@RequestParam int bloodbankid,@RequestParam String name,
			@RequestParam String dob,@RequestParam String contact)
	{
		StockManagerRegister stock = new StockManagerRegister();
		
		stock.setUserid(userid);
		stock.setBloodbankid(bloodbankid);
		stock.setName(name);
		stock.setDob(dob);
		stock.setContact(contact);
		
		StockManagerRegister stockManage = new StockManagerRegister();
		stockManage = stockservice.saveStock(stock);
		
		if(stock != null)
		{
			return "redirect:/stockhome";
		}
		else {
			return "stockregis";
		}
	}
	
	@RequestMapping(value="stockedit",method=RequestMethod.GET)
	public String sedit() 
	{
		return "stockedit";
	}
	
	@RequestMapping(value="stockedit", method=RequestMethod.POST)
	public String stockeditpro(@RequestParam("userid") String userId, Model model) {
	    StockManagerRegister stock = stockservice.findByUserId(userId);
	    if(stock != null) {
	        model.addAttribute("stock", stock);
	        return "stockeditpro";
	    } else {
	        model.addAttribute("error", "User not found");
	        return "stockedit";
	    }
	}
	
	@RequestMapping(value="stockeditpro", method=RequestMethod.POST)
	public String stockupdateprof(@RequestParam Map<String, String> params, Model model) {
	    String userId = params.get("userid");
	    StockManagerRegister stock = stockservice.findByUserId(userId);

	    if (stock != null) {
	    	stock.setBloodbankid(Integer.parseInt(params.get("bloodbankid")));
	    	stock.setName(params.get("name"));
	    	stock.setDob(params.get("dob"));
	    	stock.setContact(params.get("contact"));

	        stockservice.saveStock(stock);
	        return "redirect:/stockhome"; 
	    } else {
	        model.addAttribute("error", "User not found");
	        return "stockeditpro";
	    }
	}
	
	@RequestMapping(value="addbag",method=RequestMethod.GET)
	public String addbag() 
	{
		return "addbag";
	}
	
	@RequestMapping(value="addbag",method=RequestMethod.POST)
	public String addblood(@RequestParam int bloodbankid,@RequestParam int donorid,@RequestParam String bloodGroup,
			@RequestParam String rh,@RequestParam String hb, @RequestParam String hiv,@RequestParam String hsbag,
			@RequestParam String hev, @RequestParam String vdrl, @RequestParam String expirydate,@RequestParam String mpmf, 
			@RequestParam String bp,@RequestParam String status)
	{
		AddBloodbag add = new AddBloodbag();
		
		add.setBloodbankid(bloodbankid);
		add.setDonorid(donorid);
		add.setBloodGroup(bloodGroup);
		add.setRh(rh);
		add.setHb(hb);
		add.setHiv(hiv);
		add.setHsbag(hsbag);
		add.setHev(hev);
		add.setVdrl(vdrl);
		add.setExpirydate(expirydate);
		add.setMpmf(mpmf);
		add.setBp(bp);
		add.setStatus(status);
		
		AddBloodbag addbag = new AddBloodbag();
		addbag = addservice.saveaddblood(add);
		
		if(add != null)
		{
			return "redirect:/stockhome";
		}
		else {
			return "addbag";
		}
	}
	
	@RequestMapping(value="stockhealth",method=RequestMethod.GET)
	public String shealth() 
	{
		return "stockhealth";
	}
	
	@RequestMapping(value="stockhealth",method=RequestMethod.POST)
	public String stockhealth(@RequestParam String donorid, @RequestParam String status) {
		
		Stockhealth shealth = new Stockhealth();
		shealth.setDonorid(donorid);
		shealth.setStatus(status);
		
		Stockhealth stockhealth = new Stockhealth();
		stockhealth = stockhealthser.saveShealth(shealth);
		
		if(stockhealth != null) {
			return "redirect:/stockhome";
		}else {
			return "stockhealth";
		}
	}
	
	@RequestMapping(value="bagstatus",method=RequestMethod.GET)
	public String bloodbag() 
	{
		return "bagstatus";
	}
	
	@RequestMapping(value="bagstatus",method=RequestMethod.POST)
	public String bagstat(@RequestParam int bagid, @RequestParam String status)
	{
		Bagstatus bag = new Bagstatus();
		bag.setBagid(bagid);
		bag.setStatus(status);
		
		Bagstatus bagstatus = new Bagstatus();
		bagstatus = bagservice.saveBag(bag);
		
		if(bagstatus!=null) {
			return "redirect:/stockhome";
		}else {
			return "bagstatus";
		}
	}
	
}
