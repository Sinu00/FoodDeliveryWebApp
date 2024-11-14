package com.fda.pojo;

public class restaurant {
	private int restaurantId;
	private String name;
	private String cusineType;
	private String address;
	private int rating;
	private int deliveryTime;
	private int isActive;
	public int getRestaurantId() {
		return restaurantId;
	}
	public void setRestaurantId(int restaurantId) {
		this.restaurantId = restaurantId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCusineType() {
		return cusineType;
	}
	public void setCusineType(String cusineType) {
		this.cusineType = cusineType;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getDeliveryTime() {
		return deliveryTime;
	}
	public void setDeliveryTime(int deliveryTime) {
		this.deliveryTime = deliveryTime;
	}
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}
	public restaurant(int restaurantId,String name, String cusineType, String address, int rating,int deliveryTime, int isActive) {
		super();
		this.restaurantId = restaurantId;
		this.name = name;
		this.cusineType = cusineType;
		this.address = address;
		this.rating = rating;
		this.deliveryTime = deliveryTime;
		this.isActive = isActive;
	}
	public restaurant() {
		super();
	}

	@Override
	public String toString() {
	    return restaurantId + ", " + name + ", " + cusineType + ", " + address + ", " + rating + ", " + deliveryTime + ", " + isActive;
	}

	
}
