package org.acme.NMB_App.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Customer {

	
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;
    private String firstname;
    private String lastname;
    private int age;
    private String nationalid;
    private String title;
    private String homeowner;
    private String email;
    private int creationdate;
    private String gender;
    private String username;
   
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(Long id, String firstname, String lastname, int age,String nationalid,String title, String homeowner, String email, String gender, String username, int creationdate) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
		this.nationalid= nationalid;
		this.title= title;
		this.homeowner= homeowner;
		this.email= email;
		this.setCreationdate(creationdate);
		this.gender= gender;
		this.username=username;
		
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getNationalid() {
		return nationalid;
	}
	public void setNationalid(String nationalid) {
		this.nationalid = nationalid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getHomeowner() {
		return homeowner;
	}
	public void setHomeowner(String homeowner) {
		this.homeowner = homeowner;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getCreationdate() {
		return creationdate;
	}
	public void setCreationdate(int creationdate) {
		this.creationdate = creationdate;
	}
	
}
