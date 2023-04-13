package eHotel.entities;
import java.util.Date;
public class Customer {
	private int customerID;
	private String firstName;
	private String middleName;
	private String lastName;
	private String address;
	private int ssn;
	private Date dateOfRegistration;
	
	
	
	public Customer() {
		
	}

	public Customer(int customerID, String firstName, String middleName, String lastName, String address, int ssn,
			Date dateOfRegistration) {
		this.customerID = customerID;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.address = address;
		this.ssn = ssn;
		this.dateOfRegistration = dateOfRegistration;
	}
	
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getSsn() {
		return ssn;
	}
	public void setSsn(int ssn) {
		this.ssn = ssn;
	}
	public Date getDateOfRegistration() {
		return dateOfRegistration;
	}
	public void setDateOfRegistration(Date dateOfRegistration) {
		this.dateOfRegistration = dateOfRegistration;
	}
	
	
}
