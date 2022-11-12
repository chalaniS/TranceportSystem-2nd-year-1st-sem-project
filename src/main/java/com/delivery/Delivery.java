package com.delivery;

import java.time.LocalDate; 

public class Delivery {
	private int id;
	private String sAddress;
	private String rName;
	private String rAddress;
	private String itemType;
	private String vehicle;
	private String dateTime;
	
	public Delivery(int id, String sAddress, String rName, String rAddress, String itemType, String vehicle, String dateTime) {
		
		this.id = id;
		this.sAddress = sAddress;
		this.rName = rName;
		this.rAddress = rAddress;
		this.itemType = itemType;
		this.vehicle = vehicle;
		this.dateTime = dateTime;
	}

	public String getsAddress() {
		return sAddress;
	}

	public String getrName() {
		return rName;
	}
	
	public String getrAddress() {
		return rAddress;
	}
	

	public String getItemType() {
		return itemType;
	}	

	public String getVehicle() {
		return vehicle;
	}
	
	public String getdateTime() {
		return dateTime;
	}	
	

}
