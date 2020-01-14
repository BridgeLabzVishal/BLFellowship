package com.bridgeLabz.model;

public class Model {
	private String firstName;
	private String lastName;
	private String email;
	private String passwd;
	private String gender;
	private String dateOfBirth;
	private int age;
	private String city;
	private String state;
	private long zip;
	
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPasswd() {
		return passwd;
	}
	
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public String getCity() {
		return city;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getState() {
		return state;
	}
	
	public void setState(String state) {
		this.state = state;
	}
	
	public long getZip() {
		return zip;
	}
	
	public void setZip(long zip) {
		this.zip = zip;
	}

	@Override
	public String toString() {
		return "Model [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", passwd=" + passwd
				+ ", gender=" + gender + ", dateOfBirth=" + dateOfBirth + ", age=" + age + ", city=" + city + ", state="
				+ state + ", zip=" + zip + "]";
	}
}
