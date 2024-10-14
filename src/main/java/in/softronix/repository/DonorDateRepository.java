package in.softronix.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.DonorDate;

@Repository
public interface DonorDateRepository extends JpaRepository<DonorDate, Integer> {
	List<DonorDate> findByUserid(String userid);
}

