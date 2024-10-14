package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.bloodgroupCount;

@Repository
public interface bloodgroupCountRepository extends JpaRepository<bloodgroupCount, Integer>{
	
	bloodgroupCount findByBloodGroupAndRh(String bloodGroup, String rh);

}
