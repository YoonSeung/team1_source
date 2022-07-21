package com.hotel.security;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
						"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class AdminTests {

	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;

	@Setter(onMethod_ = @Autowired)
	private DataSource ds;
	
	@Test
	public void testInsertAdmin() {
		String sql = "insert into admin_info(ad_id, code2, ad_pass, ad_name, regdate, enabled)"
				+ "values(?, ?, ?, ?, sysdate, 'o')";
		
		for(int i=0; i<3; i++) {
			Connection con = null;
			PreparedStatement pstmt = null;
			
			try {
				con = ds.getConnection();
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(3, pwencoder.encode("pw"+i));
				
				if(i == 0) {
					pstmt.setString(1, "admin" + i);
					pstmt.setString(2, "ROLE_T_ADMIN");
					pstmt.setString(4, "관리자0");
				} else if(i == 1) {
					pstmt.setString(1, "admin" + i);
					pstmt.setString(2, "ROLE_M_ADMIN");
					pstmt.setString(4, "관리자1");
				} else if(i == 2) {
					pstmt.setString(1, "admin" + i);
					pstmt.setString(2, "ROLE_L_ADMIN");
					pstmt.setString(4, "관리자2");
				}
				
				pstmt.executeUpdate();
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				if(pstmt != null) {
					try {
						pstmt.close();
					} catch(Exception e) {}
				}
				if(con != null) {
					try {
						pstmt.close();
					} catch(Exception e) {}
				}
			}
		}
	}
}
