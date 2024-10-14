package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.Bagstatus;
import in.softronix.repository.BagstatusRepository;

@Service
public class BagstatusService {

	@Autowired
	BagstatusRepository bagstatusrepo;
	
	public Bagstatus saveBag(Bagstatus bagstatus)
	{
		return bagstatusrepo.save(bagstatus);
	}
}
