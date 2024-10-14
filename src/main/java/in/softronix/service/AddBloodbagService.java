package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.AddBloodbag;
import in.softronix.repository.AddbloodbagRepository;

@Service
public class AddBloodbagService {

	@Autowired
	AddbloodbagRepository addbloodrepo;
	
	public AddBloodbag saveaddblood(AddBloodbag addbloodbag)
	{
		return addbloodrepo.save(addbloodbag);
	}

}
