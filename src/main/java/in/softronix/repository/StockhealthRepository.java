package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.Stockhealth;

@Repository
public interface StockhealthRepository extends JpaRepository<Stockhealth, Integer>{

}
