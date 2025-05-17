package mypkg.model;

public class Users {
	private String name, email, contact, password;
	
	public Users(){
		super();
	}

	public Users(String name, String email, String contact, String password){
		super();
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.password = password;
	}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setSalary(String string) {
		// TODO Auto-generated method stub
		
	}


}
