package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.donorhealth;

@Repository
public interface DonorhealthRepository extends JpaRepository<donorhealth, Integer>{

}
