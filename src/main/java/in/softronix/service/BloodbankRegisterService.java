package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.BloodbankRegister;
import in.softronix.repository.BloodbankRegisterRepository;

@Service
public class BloodbankRegisterService {

	@Autowired
	BloodbankRegisterRepository bloodbankrepo;
	
	public BloodbankRegister saveBlood(BloodbankRegister bloodbankregister)
	{
		return bloodbankrepo.save(bloodbankregister);
	}
	
	public BloodbankRegister findByUserId(String userId)
	{
		return bloodbankrepo.findByUserid(userId);
	}
}
