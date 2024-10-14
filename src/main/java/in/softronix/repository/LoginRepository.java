package in.softronix.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.Login;

@Repository
public interface LoginRepository extends JpaRepository<Login, Integer>{

}

