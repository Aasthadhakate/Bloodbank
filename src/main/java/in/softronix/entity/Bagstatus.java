package in.softronix.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="bagstatus")
public class Bagstatus {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int bagid;
	private String status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBagid() {
		return bagid;
	}
	public void setBagid(int bagid) {
		this.bagid = bagid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
