package mypkg.repository;

import java.util.List;
import mypkg.model.Employees;

public interface EmployeeDAO {
    int save(Employees e);
    List<Employees> isData();
    Employees findByEmail(String email); // Add this method
}