package in.softronix.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import in.softronix.entity.DonorRegister;
import in.softronix.repository.DonorRegisterRepository;

@Service
public class DonorRegisterService {
	
	@Autowired
	DonorRegisterRepository donorrepo;
	
	public DonorRegister saveDonor(DonorRegister donorregister)
	{
		return donorrepo.save(donorregister);
	}
	
	public DonorRegister findByUserId(String userId)
	{
		return donorrepo.findByUserid(userId);
	}
	
	public List<DonorRegister> getAll()
	{
		List<DonorRegister> list = new ArrayList<>();
		list=donorrepo.findAll();
		return list;
	}

}
