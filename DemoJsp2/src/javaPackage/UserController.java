package javaPackage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.xml.registry.infomodel.User;

import org.omg.Security.Public;

import sun.misc.UCDecoder;

import com.mysql.cj.Query;

import entity.UserBean;

public class UserController {
	private static Connection connection;
	private static String query;
	private static PreparedStatement pStatement;
	private static int resultSet;
	
	public static Connection getConnection() throws ClassNotFoundException {
		
		Class.forName("com.mysql.jdbc.Driver");
		try {
			 connection =DriverManager.getConnection("jdbc:mysql://192.168.57.5:3306/gaurav","gaurav.p","E9fGhIjK");
			 
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return connection;
		
		
	}
	public static void addUser(UserBean uc) throws ClassNotFoundException {
		
		query="Insert into Student2 (FirstName,LastName,Gender,BirthDate,Age,Mobile_No,Address,city,Email_id) values (?,?,?,?,?,?,?,?,?)";
		 try {
			 Connection connection = getConnection();
			pStatement=connection.prepareStatement(query);
			pStatement.setString(1,uc.getFirstname());
			 pStatement.setString(2,uc.getLastname());
			 pStatement.setString(3, uc.getGender());
			 pStatement.setString(4, uc.getDate());
			 pStatement.setInt(5,uc.getAge());
			 pStatement.setLong(6, uc.getMobileNo());
			 pStatement.setString(7, uc.getAddress());
			 pStatement.setString(8, uc.getCity());                  
			 pStatement.setString(9, uc.getEmail());
			 
			resultSet=pStatement.executeUpdate();
			
			System.out.println("Query ok"+resultSet);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		 
		
	}
	public static List<UserBean> getAllRecords(){
		List<UserBean> list= new ArrayList<UserBean>();
		try {
			getConnection();
			query="select * from Student2";
			ResultSet rs=pStatement.executeQuery(query);
			while (rs.next()) {
				UserBean us=new UserBean();
				us.setId(rs.getInt("id"));
				us.setFirstname(rs.getString(2));
				us.setLastname(rs.getString(3));
				us.setGender(rs.getString(4));
				us.setDate(rs.getString(5));
				us.setAge(rs.getInt(6));
				us.setMobileNo(rs.getLong(7));
				us.setAddress(rs.getString(8));
				us.setCity(rs.getString(9));				
				us.setEmail(rs.getString(10));
				list.add(us);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static int updateUser(UserBean uc,String id){
		int result=0;
		try {
			Connection connection=getConnection();
			pStatement=connection.prepareStatement("Update Student2 set FirstName=?,LastName=?,Gender=?,BirthDate=?,Age=?,Mobile_No=?,Address=?,city=?,Email_id=? where id='id'");
			
			 pStatement.setString(1,uc.getFirstname());
			 pStatement.setString(2,uc.getLastname());
			 pStatement.setString(3, uc.getGender());
			 pStatement.setString(4, uc.getDate());
			 pStatement.setInt(5,uc.getAge());
			 pStatement.setLong(6, uc.getMobileNo());
			 pStatement.setString(7, uc.getAddress());
			 pStatement.setString(8, uc.getCity());                  
			 pStatement.setString(9, uc.getEmail());
			 pStatement.setInt(10, uc.getID());
			 
			 result=pStatement.executeUpdate();
		} 
		catch (Exception e) {
			System.out.println(e);
		}
		return result;
		
		
	}
	
	public static UserBean getUserById(int id){
		UserBean us=null;
		try {
			Connection connection=getConnection();
			pStatement=connection.prepareStatement("select * from Student2 where id=?");
			pStatement.setInt(1, id);
			 ResultSet rs=pStatement.executeQuery();
			 while (rs.next()) {
				us=new UserBean();
				us.setFirstname(rs.getString(2));
				us.setLastname(rs.getString(3));
				us.setGender(rs.getString(4));
				us.setDate(rs.getString(5));
				us.setAge(rs.getInt(6));
				us.setMobileNo(rs.getLong(7));
				us.setAddress(rs.getString(8));
				us.setCity(rs.getString(9));				
				us.setEmail(rs.getString(10));
				
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return us;
		
	}
	
	
	 
	

}
