package in.softronix.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.DonorDate;
import in.softronix.repository.DonorDateRepository;


@Service
public class DonorDateService {
	
	@Autowired
	DonorDateRepository donordaterepo;
	
	public DonorDate saveDonordate(DonorDate donordate)
	{
		return donordaterepo.save(donordate);
	}
	
	public List<DonorDate> getHistoryByUserId(String userid)
	{
		return donordaterepo.findByUserid(userid);
	}
	
}