package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.VirtualBloodBank;
import in.softronix.repository.VirtualBloodBankRepository;

@Service
public class VirtualBloodBankService {
	
	@Autowired 
	VirtualBloodBankRepository repo;
	
	public VirtualBloodBank saveReg(VirtualBloodBank register)
	{
		return repo.save(register);
	}
}