package mypkg.repository;

import mypkg.model.Users;

public interface UserDAO {
	
		int save(Users s);
		Users find(String email, String password);
}
