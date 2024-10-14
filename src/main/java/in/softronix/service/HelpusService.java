package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.Helpus;
import in.softronix.repository.HelpusRepository;

@Service
public class HelpusService {

	@Autowired
	HelpusRepository helprepo;
	
	public Helpus saveHelp(Helpus helpus) {
		
		return helprepo.save(helpus);
		
	}
}
