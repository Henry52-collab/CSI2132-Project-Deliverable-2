package eHotel.entities;
import java.util.Date;
public class Rental {
	private int rentalID;
	private int customerID;
	private int roomID;
	private int hotelID;
	private int hotelChainID;
	private Date startDate;
	private Date endDate;
	private boolean paid;
	
	
	
	
	public Rental() {

	}

	public Rental(int rentalID, int customerID, int roomID, int hotelID, int hotelChainID, Date startDate, Date endDate,
			boolean paid) {
		this.rentalID = rentalID;
		this.customerID = customerID;
		this.roomID = roomID;
		this.hotelID = hotelID;
		this.hotelChainID = hotelChainID;
		this.startDate = startDate;
		this.endDate = endDate;
		this.paid = paid;
	}
	
	public int getRentalID() {
		return rentalID;
	}
	public void setRentalID(int rentalID) {
		this.rentalID = rentalID;
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
	public boolean isPaid() {
		return paid;
	}
	public void setPaid(boolean paid) {
		this.paid = paid;
	}
	
	
}
