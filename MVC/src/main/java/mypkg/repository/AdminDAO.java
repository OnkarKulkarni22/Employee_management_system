package mypkg.repository;

import mypkg.model.Admin;

public interface AdminDAO {

	Admin find(String username, String password);
	
}
