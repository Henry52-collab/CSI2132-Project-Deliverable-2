package eHotel.entities;

public class Room {
	
	private String roomID;
	private String hotelID;
	private String hotelChainID;
	private int price;
	private int capacity;
	private String view;
	private boolean extension;
	private String availability;
	
	public Room() {
	
	}

	
	
	public Room(String roomID, String availability) {
		this.roomID = roomID;
		this.hotelID = null;
		this.hotelChainID = null;
		this.price = -1;
		this.capacity = -1;
		this.view = null;
		this.extension = false;
		this.availability = availability;
	}



	public Room(String roomID, String hotelID, String hotelChainID, int price, int capacity, String view,
			boolean extension, String availability) {
		this.roomID = roomID;
		this.hotelID = hotelID;
		this.hotelChainID = hotelChainID;
		this.price = price;
		this.capacity = capacity;
		this.view = view;
		this.extension = extension;
		this.availability = availability;
	}

	public String getRoomID() {
		return roomID;
	}

	public void setRoomID(String roomID) {
		this.roomID = roomID;
	}

	public String getHotelID() {
		return hotelID;
	}

	public void setHotelID(String hotelID) {
		this.hotelID = hotelID;
	}

	public String getHotelChainID() {
		return hotelChainID;
	}

	public void setHotelChainID(String hotelChainID) {
		this.hotelChainID = hotelChainID;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
	}

	public boolean isExtension() {
		return extension;
	}

	public void setExtension(boolean extension) {
		this.extension = extension;
	}

	public String isAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}
	
	
	

}
