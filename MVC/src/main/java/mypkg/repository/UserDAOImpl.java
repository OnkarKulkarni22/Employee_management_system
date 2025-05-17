package mypkg.repository;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import mypkg.model.Users;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public int save(Users u) {
		String query = "Insert INTO users(name, email, contact, password) values(?,?,?,?)";
		return jdbcTemplate.update(query,u.getName(),u.getEmail(), u.getContact(), u.getPassword());
	}
	
	@Override
	public Users find(String email, String password) {
		String sql="SELECT * FROM users WHERE email=? and password=?";
		List<Users> userInfoList = jdbcTemplate.query(sql, new Object[] {email, password },
				new RowMapper<Users>() {
					public Users mapRow(ResultSet rs, int rownum) throws SQLException
					{
						Users u = new Users();
						u.setName(rs.getString("name"));
						u.setEmail(rs.getString("email"));
						u.setPassword(rs.getString("password"));
						u.setContact(rs.getString("contact"));
						
						return u;
					}
				});
			if(userInfoList.isEmpty()) {
				return null;
			}else {
				return userInfoList.get(0);
			}
				
	}

}
