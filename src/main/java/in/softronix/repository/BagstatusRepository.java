package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.Bagstatus;

@Repository
public interface BagstatusRepository extends JpaRepository<Bagstatus, Integer>{

}
