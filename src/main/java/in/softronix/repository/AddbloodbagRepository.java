package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.AddBloodbag;

@Repository
public interface AddbloodbagRepository extends JpaRepository<AddBloodbag, Integer>{

}
