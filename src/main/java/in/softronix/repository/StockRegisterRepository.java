package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.StockManagerRegister;

@Repository
public interface StockRegisterRepository extends JpaRepository<StockManagerRegister, Integer>{
	
	StockManagerRegister findByUserid(String userId);

}
