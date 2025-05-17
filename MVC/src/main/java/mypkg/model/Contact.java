package mypkg.model;

public class Contact {
	private String name, email, phone, subject, message;
	
	public Contact(){
		super();
	}

	public Contact(String name, String email, String phone, String subject, String message){
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.setSubject(subject);
		this.setMessage(message);
	}


	public String getPhone() {
		return phone;
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

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setPhone(String phone) {
		this.phone = phone;
		
	}
	
	
}

