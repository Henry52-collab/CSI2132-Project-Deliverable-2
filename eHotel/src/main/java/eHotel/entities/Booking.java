package eHotel.entities;
import java.util.Date;

public class Booking {
	private int bookingID;
	private int customerID;
	private int roomID;
	private int hotelID;
	private int hotelChainID;
	private Date startDate;
	private Date endDate;
	
	
	
	public Booking() {
	
	}

	public Booking(int bookingID, int customerID, int roomID, int hotelID, int hotelChainID, Date startDate,
			Date endDate) {
		this.bookingID = bookingID;
		this.customerID = customerID;
		this.roomID = roomID;
		this.hotelID = hotelID;
		this.hotelChainID = hotelChainID;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public int getBookingID() {
		return bookingID;
	}

	public void setBookingID(int bookingID) {
		this.bookingID = bookingID;
	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public int getRoomID() {
		return roomID;
	}

	public void setRoomID(int roomID) {
		this.roomID = roomID;
	}

	public int getHotelID() {
		return hotelID;
	}

	public void setHotelID(int hotelID) {
		this.hotelID = hotelID;
	}

	public int getHotelChainID() {
		return hotelChainID;
	}

	public void setHotelChainID(int hotelChainID) {
		this.hotelChainID = hotelChainID;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
}
