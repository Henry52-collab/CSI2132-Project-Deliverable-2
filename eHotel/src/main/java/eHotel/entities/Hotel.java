package eHotel.entities;

public class Hotel {
	private int hoteID;
	private int hotelChainID;
	private String category;
	private int numberOfRooms;
	private String address;
	private String email;
	
	
	public Hotel() {
		
	}
	
	
	
	public Hotel(int hoteID, int hotelChainID, String category, int numberOfRooms, String address, String email) {
		this.hoteID = hoteID;
		this.hotelChainID = hotelChainID;
		this.category = category;
		this.numberOfRooms = numberOfRooms;
		this.address = address;
		this.email = email;
	}



	public int getHoteID() {
		return hoteID;
	}
	public void setHoteID(int hoteID) {
		this.hoteID = hoteID;
	}
	public int getHotelChainID() {
		return hotelChainID;
	}
	public void setHotelChainID(int hotelChainID) {
		this.hotelChainID = hotelChainID;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getNumberOfRooms() {
		return numberOfRooms;
	}
	public void setNumberOfRooms(int numberOfRooms) {
		this.numberOfRooms = numberOfRooms;
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
