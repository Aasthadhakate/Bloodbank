package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.HospitalRegister;
import in.softronix.repository.HospitalRegisterRepository;

@Service
public class HospitalRegisterService {

	@Autowired
	HospitalRegisterRepository hospitalrepo;
	
	public HospitalRegister saveHospital(HospitalRegister hospitalregister)
	{
		return hospitalrepo.save(hospitalregister);
	}
	
	public HospitalRegister findByUserId(String userId)
	{
		return hospitalrepo.findByUserid(userId);
	}
}
