package in.softronix.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.DonorRegister;
import in.softronix.entity.bloodgroupCount;
import in.softronix.repository.bloodgroupCountRepository;

@Service
public class bloodgroupCountService {
	
	@Autowired
	bloodgroupCountRepository bgcountrepo;
	
	public bloodgroupCount findByBloodgroupAndRh(String bloodgroup, String rh) {
        return bgcountrepo.findByBloodGroupAndRh(bloodgroup, rh);
    }

	public bloodgroupCount saveBloodGroupCount(bloodgroupCount newBloodGroupCount) {
		return bgcountrepo.save(newBloodGroupCount);
	}

	 public List<bloodgroupCount> getAll()
	    {
	    	List<bloodgroupCount> list=new ArrayList<>();
	    	list=bgcountrepo.findAll();
	    	return list;
	    }
	 public void update(bloodgroupCount bgcnt) {
		    // Assuming you have a BloodGroupCountRepository that extends JpaRepository
		    bgcountrepo.save(bgcnt); // This will update the count in the database
		}

}
