package mypkg.repository;

import java.sql.ResultSet;



import java.sql.SQLException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import mypkg.model.Admin;

@Repository
public class AdminDAOImpl implements AdminDAO {

	
		@Autowired
		JdbcTemplate jdbcTemplate;
		
				
		@Override
		public Admin find(String username, String password) {
			String sql="SELECT * FROM admin WHERE username=? and password=?";
			
			List<Admin> userInfoList = jdbcTemplate.query(sql, new Object[] {username, password },
					new RowMapper<Admin>() {
						public Admin mapRow(ResultSet rs, int rownum) throws SQLException
						{
							Admin u = new Admin();
							u.setUsername(rs.getString("username"));
							u.setPassword(rs.getString("password"));
							
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
