package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.StockManagerRegister;
import in.softronix.repository.StockRegisterRepository;

@Service
public class StockRegisterService {

	@Autowired
	StockRegisterRepository stockrepo;
	
	public StockManagerRegister saveStock(StockManagerRegister stockregister)
	{
		return stockrepo.save(stockregister);
	}
	
	public StockManagerRegister findByUserId(String userId)
	{
		return stockrepo.findByUserid(userId);
	}
}
