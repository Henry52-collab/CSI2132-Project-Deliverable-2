package eHotel.entities;

public class Manager {
	private int managerID;
	private int employeeID;
	
	
	
	public Manager(int managerID, int employeeID) {
		this.managerID = managerID;
		this.employeeID = employeeID;
	}

	public Manager() {
		
	}

	public int getManagerID() {
		return managerID;
	}
	
	public void setManagerID(int managerID) {
		this.managerID = managerID;
	}
	
	public int getEmployeeID() {
		return employeeID;
	}
	
	public void setEmployeeID(int employeeID) {
		this.employeeID = employeeID;
	}
	
	
}
