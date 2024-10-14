package in.softronix.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="donorhealth")
public class donorhealth {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String yourid;
	private String status;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getYourid() {
		return yourid;
	}
	public void setYourid(String yourid) {
		this.yourid = yourid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
