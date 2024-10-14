package in.softronix.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="bloodbankregister")
public class BloodbankRegister {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String userid;
	private String name;
	private String contact;
	private String address;
	private String district;
	private String nameofincharge;
	private String inchargerphone;
	private String bloodseparationfacility;
	private String attachedstorageunit;
	private String licenseno;
	private String licensestatus;
	private String validityupto;
	private String reportingperiod;
	private String supportbynaco;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getNameofincharge() {
		return nameofincharge;
	}
	public void setNameofincharge(String nameofincharge) {
		this.nameofincharge = nameofincharge;
	}
	public String getInchargerphone() {
		return inchargerphone;
	}
	public void setInchargerphone(String inchargerphone) {
		this.inchargerphone = inchargerphone;
	}
	public String getBloodseparationfacility() {
		return bloodseparationfacility;
	}
	public void setBloodseparationfacility(String bloodseparationfacility) {
		this.bloodseparationfacility = bloodseparationfacility;
	}
	public String getAttachedstorageunit() {
		return attachedstorageunit;
	}
	public void setAttachedstorageunit(String attachedstorageunit) {
		this.attachedstorageunit = attachedstorageunit;
	}
	public String getLicenseno() {
		return licenseno;
	}
	public void setLicenseno(String licenseno) {
		this.licenseno = licenseno;
	}
	public String getLicensestatus() {
		return licensestatus;
	}
	public void setLicensestatus(String licensestatus) {
		this.licensestatus = licensestatus;
	}
	public String getValidityupto() {
		return validityupto;
	}
	public void setValidityupto(String validityupto) {
		this.validityupto = validityupto;
	}
	public String getReportingperiod() {
		return reportingperiod;
	}
	public void setReportingperiod(String reportingperiod) {
		this.reportingperiod = reportingperiod;
	}
	public String getSupportbynaco() {
		return supportbynaco;
	}
	public void setSupportbynaco(String supportbynaco) {
		this.supportbynaco = supportbynaco;
	}
	
	
}
