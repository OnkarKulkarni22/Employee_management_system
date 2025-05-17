package mypkg.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import mypkg.model.Employees;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;
    
    public int save(Employees e) {
        String query = "INSERT INTO employee(Employee_Name, Employee_Email_Id, Employee_Salary, Employee_Contact, Username) VALUES (?,?,?,?,?)";
        return jdbcTemplate.update(query, e.getName(), e.getEmail(), e.getSalary(), e.getContact(), e.getUsername());
    }
    
    public Employees findByEmail(String email) {
        String sql = "SELECT * FROM employee WHERE Employee_Email_Id = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{email}, (rs, rowNum) -> {
                Employees e = new Employees();
                e.setName(rs.getString("Employee_Name"));
                e.setEmail(rs.getString("Employee_Email_Id"));
                e.setSalary(rs.getString("Employee_Salary"));
                e.setContact(rs.getString("Employee_Contact"));
                e.setUsername(rs.getString("Username"));
                return e;
            });
        } catch (Exception e) {
            return null; // No employee found with this email
        }
    }
    
    public List<Employees> isData() {
        String sql = "SELECT * FROM employee";
        List<Employees> employee = new ArrayList<Employees>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map<String, Object>row : rows) {
            Employees e = new Employees();
            e.setName((String)row.get("Employee_Name"));
            e.setEmail((String)row.get("Employee_Email_Id"));
            e.setSalary((String)row.get("Employee_Salary"));
            e.setContact((String)row.get("Employee_Contact"));
            e.setUsername((String)row.get("Username"));
            
            employee.add(e);
        }
        return employee;
    }
}