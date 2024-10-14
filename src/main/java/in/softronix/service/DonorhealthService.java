package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.donorhealth;
import in.softronix.repository.DonorhealthRepository;

@Service
public class DonorhealthService {
	
	@Autowired
	DonorhealthRepository donorhealthrepo;
	
	public donorhealth saveDhealth(donorhealth donorhealth)
	{
		return donorhealthrepo.save(donorhealth);
	}

}
