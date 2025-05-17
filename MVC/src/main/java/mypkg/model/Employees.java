package mypkg.model;

public class Employees {
    private int id;
    private String name, email;
    private String salary;  // Changed to String
    private String contact; // Changed to String
    private String username;
    
    public Employees(){
        super();
    }
    
    public Employees(int id, String name, String email, String salary, String contact){
        super();
        this.setId(id);
        this.setName(name);
        this.setEmail(email);
        this.setSalary(salary);
        this.setContact(contact);
    }
    
    // Updated setter types
    public void setSalary(String salary) {
        this.salary = salary;
    }
    public void setContact(String contact) {
        this.contact = contact;
    }
    
    // Add getters for salary and contact
    public String getSalary() {
        return salary;
    }
    public String getContact() {
        return contact;
    }
    
    // Rest of the getters/setters remain the same
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
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}