package mypkg.repository;

import java.util.ArrayList;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import mypkg.model.Contact;

@Repository
public class ContactDAOImpl implements ContactDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int save(Contact c) {
        String query = "INSERT INTO contacts(name, email, phone, subject, message) VALUES(?,?,?,?,?)";
        return jdbcTemplate.update(query, c.getName(), c.getEmail(), c.getPhone(), c.getSubject(), c.getMessage());
    }

    @Override
    public List<Contact> isData() {
        String sql = "SELECT * FROM contacts";
        List<Contact> contacts = new ArrayList<Contact>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
           for (Map<String, Object>row : rows) 
           {
        	   Contact c = new Contact();
        	   c.setName((String)row.get("name"));
        	   c.setEmail((String)row.get("email"));
        	   c.setPhone((String)row.get("phone"));
        	   c.setSubject((String)row.get("subject"));
        	   c.setMessage((String)row.get("message"));
               
        	   contacts.add(c);
        	        	   
           }
           return contacts;
}
}