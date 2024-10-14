package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.Helpus;

@Repository
public interface HelpusRepository extends JpaRepository<Helpus, Integer>{

}
