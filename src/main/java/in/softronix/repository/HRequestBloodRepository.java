package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.HRequestBlood;

@Repository
public interface HRequestBloodRepository extends JpaRepository<HRequestBlood, Integer>{

}
