package mypkg.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller; // Changed to @Controller
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import mypkg.model.Admin;
import mypkg.model.Contact;
import mypkg.model.Employees;
import mypkg.model.Users;
import mypkg.repository.AdminDAO;
import mypkg.repository.ContactDAO;
import mypkg.repository.EmployeeDAO;
import mypkg.repository.UserDAO;

@Controller // Changed to @Controller
public class MVCController {

    @Autowired
    UserDAO userDAO;

    @Autowired
    AdminDAO adminDAO;

    @Autowired
    EmployeeDAO employeeDAO;

    @Autowired
    ContactDAO contactDAO;

    @GetMapping("/")
    public ModelAndView welcomePage(Model model) {
        model.addAttribute("message","Welcome to My Website");
        return new ModelAndView("welcomePage");
    }

    @GetMapping("/about")
    public ModelAndView aboutPage(Model model) {
        model.addAttribute("message", "We are an organization build for providing proper products and services to our customers");
        return new ModelAndView("aboutPage");
    }

    @GetMapping("/contact")
    public String contactPage(Model model) {
        return "contactPage"; // Make sure this matches your JSP filename exactly
    }
    

    @GetMapping("/register")
    public ModelAndView register(Model model) {
        return new ModelAndView("registerPage");
    }

    @GetMapping("/login")
    public ModelAndView login(Model model) {
        return new ModelAndView("loginPage");
    }

    @GetMapping("/contact_report")
    public String contact_report(Model model) {
    	
    	List<Contact> contacts = contactDAO.isData();
        model.addAttribute("contact", contacts);
        return "contact_report";
        
    }
    
    @GetMapping("/employee_report")
    public String employee_report(Model model) {
        
        List<Employees> employees = employeeDAO.isData();
        model.addAttribute("employee", employees);
        return "employee_report";
    }
    
    @GetMapping("/admin")
    public ModelAndView admin(Model model) {
        return new ModelAndView("adminPage");
    }
    @GetMapping("/newemp")
    public ModelAndView newemp(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("employeePage");
        // Get the username from session or request attribute
        String username = (String) request.getSession().getAttribute("username");
        if (username == null) {
            username = (String) request.getAttribute("username");
        }
        modelAndView.addObject("username", username);
        return modelAndView;
    }

    @PostMapping("/result")
    public ModelAndView addUsers(HttpServletRequest request) {
        Users user = new Users();
        user.setName(request.getParameter("name"));
        user.setEmail(request.getParameter("email"));
        user.setContact(request.getParameter("contact"));
        user.setPassword(request.getParameter("password"));

        int cnt = userDAO.save(user);
        String result = cnt > 0 ? "Account created" : "Account creation failed";

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("resultPage");
        modelAndView.addObject("message",result);
        return modelAndView;
    }

    @PostMapping("/employeesave")
    public ModelAndView addEmployee(HttpServletRequest request) {
        String email = request.getParameter("email");
        Employees existingEmployee = employeeDAO.findByEmail(email);
        
        ModelAndView modelAndView = new ModelAndView();
        
        if (existingEmployee != null) {
            // Employee with this email already exists
            modelAndView.setViewName("employeePage");
            modelAndView.addObject("error", "An employee with this email already exists!");
            modelAndView.addObject("username", request.getParameter("username"));
            return modelAndView;
        }
        
        Employees employee = new Employees();
        employee.setName(request.getParameter("name"));
        employee.setEmail(email);
        employee.setSalary(request.getParameter("salary")); 
        employee.setContact(request.getParameter("contact")); 
        employee.setUsername(request.getParameter("username"));
        
        int cnt = employeeDAO.save(employee);
        String result = cnt > 0 ? "Employee Added Successfully!" : "Failed to Add Employee";

        modelAndView.setViewName("resultPage2");
        modelAndView.addObject("message", result);
        modelAndView.addObject("username", request.getParameter("username"));
        return modelAndView;
    }
    @PostMapping("/contactsubmit")
    public ModelAndView addContact(HttpServletRequest request) {
        // Basic validation
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        if(name == null || name.trim().isEmpty() || email == null || !email.contains("@")) {
            ModelAndView modelAndView = new ModelAndView("contactPage");
            modelAndView.addObject("error", "Please provide valid name and email");
            return modelAndView;
        }

        Contact contact = new Contact();
        contact.setName(name);
        contact.setEmail(email);
        contact.setPhone(phone); 
        contact.setSubject(subject);
        contact.setMessage(message); 
        
        int cnt = contactDAO.save(contact);
        String result = cnt > 0 ?
                "Thank you for contacting us! We'll get back to you soon." :
                "Failed to submit your message. Please try again.";

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("contactResult");
        modelAndView.addObject("message",result);
        return modelAndView;
    }

    @PostMapping("/valid")
    public ModelAndView checkUser(HttpServletRequest request) {
        Users user = userDAO.find(request.getParameter("email"), request.getParameter("password"));
        ModelAndView modelAndView = new ModelAndView();

        if (user != null) {
            // Store username in session
            request.getSession().setAttribute("username", request.getParameter("email"));
            modelAndView.setViewName("employeePage"); // Redirect to employee page on successful login
            modelAndView.addObject("message", "Login Successful!");
            modelAndView.addObject("username", request.getParameter("email"));
        } else {
            modelAndView.setViewName("loginPage"); // Stay on the login page on failure
            modelAndView.addObject("error", "Invalid Email Id or Password. Please try again.");
        }

        return modelAndView;
    }
    @PostMapping("/validadmin")
    public ModelAndView checkAdmin(HttpServletRequest request) {
        Admin admin = adminDAO.find(request.getParameter("username"), request.getParameter("password"));
        ModelAndView modelAndView = new ModelAndView();

        if (admin != null) {
            modelAndView.setViewName("validadmin"); // Redirect to the welcome page on successful login
            modelAndView.addObject("message", "Login Successful!");
        } else {
            modelAndView.setViewName("adminPage"); // Redirect back to the login page on failure
            modelAndView.addObject("error", "Invalid username or password. Please try again.");
        }

        return modelAndView;
    }
}