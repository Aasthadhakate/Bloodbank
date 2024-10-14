package in.softronix.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import in.softronix.entity.DonorRegister;

@Repository
public interface DonorRegisterRepository extends JpaRepository<DonorRegister, Integer>{
	
	DonorRegister findByUserid(String userId);
	
}
