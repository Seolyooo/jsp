package util;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBHelper {
	
	protected Connection conn = null;
	protected PreparedStatement psmt = null;
	protected Statement stmt = null;
	protected ResultSet rs = null;
	
	public Connection getConnection(String dbcp) throws NamingException, SQLException{
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		DataSource ds =  (DataSource) ctx.lookup(dbcp);
		
		return ds.getConnection();
		
	}
	
	
	public void closeAll() throws SQLException {
		if (rs != null) {
			rs.close();
		}
		
		
		if (stmt != null) {
			stmt.close();
			
		}
		
		if(psmt != null) {
			psmt.close();
		}
		
		if(conn!= null) {
			conn.close();
		}
		
	}
	
	

}
