package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.VirtualBloodBank;
import in.softronix.repository.VirtualBloodBankRepository;

@Service
public class VirtualBloodBankService {
	
	@Autowired 
	VirtualBloodBankRepository repo;
	
	public VirtualBloodBank update(VirtualBloodBank register)
	{
		VirtualBloodBank v=new VirtualBloodBank();
		v=repo.findById(register.getId()).orElse(null);
		v.setPassword(register.getPassword());
		return repo.save(v);
	}

	
	public VirtualBloodBank saveReg(VirtualBloodBank register)
	{
		return repo.save(register);
	}
	
	public VirtualBloodBank findByUserId(String userid)
	{
		return repo.findByEmail(userid);
	}
}