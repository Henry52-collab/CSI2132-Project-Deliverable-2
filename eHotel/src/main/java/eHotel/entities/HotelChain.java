package eHotel.entities;

public class HotelChain {
	private String name;
	private int hotelChainID;
	private int numberOfHotels;
	private String address;
	private String email;
	
	
	public HotelChain() {
		
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getHotelChainID() {
		return hotelChainID;
	}
	public void setHotelChainID(int hotelChainID) {
		this.hotelChainID = hotelChainID;
	}
	public int getNumberOfHotels() {
		return numberOfHotels;
	}
	public void setNumberOfHotels(int numberOfHotels) {
		this.numberOfHotels = numberOfHotels;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
