package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.Stockhealth;
import in.softronix.repository.StockhealthRepository;

@Service
public class StockhealthService {
	
	@Autowired
	StockhealthRepository shealthrepo;
	
	public Stockhealth saveShealth(Stockhealth stockhealth)
	{
		return shealthrepo.save(stockhealth);
	}

}
