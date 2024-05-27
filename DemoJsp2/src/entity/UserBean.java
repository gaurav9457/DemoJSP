package entity;

public class UserBean {
	
 public UserBean(String firstname, String lastname, String gender,
			String date, int age, long mobileNo, String address, String city , String email) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.gender = gender;
		this.date = date;
		this.age = age;
		this.mobileNo = mobileNo;
		this.address = address;
		this.city = city;
		this.email=email;
	}
 
public UserBean() {
	
}
private int id;
private String firstname;
 private String lastname;
 private String gender;
 private String date;
 private int age;
 private long mobileNo;
 private String address;
 private String city;
 private String email;
 
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public long getMobileNo() {
	return mobileNo;
}
public void setMobileNo(long mobileNo) {
	this.mobileNo = mobileNo;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public int getID() {
	return id;
}
public void setId(int int1) {
	
	
}

}
