package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.VirtualBloodBank;

@Repository
public interface VirtualBloodBankRepository extends JpaRepository<VirtualBloodBank, Integer>{

}
