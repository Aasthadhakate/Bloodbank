package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.HospitalRegister;

@Repository
public interface HospitalRegisterRepository extends JpaRepository<HospitalRegister, Integer>{
	
	HospitalRegister findByUserid(String userId);

}
