package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.HRequestBlood;
import in.softronix.repository.HRequestBloodRepository;

@Service
public class HRequestBloodService {

	@Autowired
	HRequestBloodRepository hrequestrepo;
	
	public HRequestBlood saveRequestblood(HRequestBlood hrequestblood)
	{
		return hrequestrepo.save(hrequestblood);
	}
}
