package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.VirtualBloodBank;
import in.softronix.repository.VirtualBloodBankRepository;

@Service
public class LoginService {
	
	@Autowired
	VirtualBloodBankRepository logrepo;
	
	public VirtualBloodBank findByUser(String userid)
	{
		return logrepo.findByEmail(userid);
	}
	
	public VirtualBloodBank saveUser(VirtualBloodBank user)
	{
		return logrepo.save(user);
	}

}
