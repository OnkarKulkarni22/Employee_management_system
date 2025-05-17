package mypkg.repository;

import java.util.List;


import mypkg.model.Contact;

public interface ContactDAO {
	
		int save(Contact s);
		List <Contact> isData(); 
		
}
