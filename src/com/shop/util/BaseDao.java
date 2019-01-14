package com.shop.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
		static{
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		private static final String url="jdbc:oracle:thin:@localhost:1521:orcl";
		private static final String name="scott";
		private static final String pwd="tiger";
		
		public  Connection getCon(){
			Connection con=null;
			try {
				con=DriverManager.getConnection(url,name,pwd);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return con;
		}
		
		public  void closeAll(ResultSet re,PreparedStatement pre,Connection con){
			if(re!=null){
				try {
					re.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			closeAll(pre, con);
		}

		private void closeAll(PreparedStatement pre, Connection con) {
			if(pre!=null){
				try {
					pre.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(con!=null){
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		
		public boolean adu(String sql,Object[] obj){
			Connection con =null;
			PreparedStatement pre =null;
			con=getCon();
			try {
				pre = con.prepareStatement(sql);
				if(obj!=null){
					for(int i=0;i<obj.length;i++){
						pre.setObject(i+1, obj[i]);
					}
				}
				int p=pre.executeUpdate();
				if(p>0){
					return true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				closeAll(pre,con);
			}
			return false;			
		}
		
}
