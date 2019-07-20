package proj;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class RegisterMgrPool {
	
	private DBConnectionMgr pool = null;
	
	public RegisterMgrPool() {
 	 try{
 	   pool = DBConnectionMgr.getInstance();
 	   }catch(Exception e){
 	      System.out.println("Error : 커넥션 얻어오기 실패");
 	   }
     }

	//getRegisterList는 받아온 데이터를 빈에 셋. 벡터에. 그리고 벡터 리턴
	public boolean loginRegister(String id, String pwd) {
		   Connection conn = null;
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   boolean loginCon = false;
	       try {
	    	   conn = pool.getConnection();
	          String strQuery = "select count(*) from tblregister where id=? and pwd=?";
	          pstmt = conn.prepareStatement(strQuery);
	          pstmt.setString(1, id);
	          pstmt.setString(2, pwd);
	          //몇명인지 알려줌 위에서 다 세팅 해주고 아래에서 시작. that's why it is preparedstmt
	          rs = pstmt.executeQuery();
			 //rs.getInt(n)몇개를 가져오는지 알려준다. 0보다 커야 1 
	          if(rs.next() & rs.getInt(1)>0) {
	        	  loginCon = true;
	          }
	       } catch (Exception ex) {
	          System.out.println("Exception" + ex);
	       } finally {
		      pool.freeConnection(conn);
	       }
	       return loginCon;
	    }

	
 }