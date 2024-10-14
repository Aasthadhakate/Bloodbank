package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.BloodbankRegister;

@Repository
public interface BloodbankRegisterRepository extends JpaRepository<BloodbankRegister, Integer>{
	BloodbankRegister findByUserid(String userId);
}
