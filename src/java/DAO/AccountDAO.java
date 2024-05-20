
package DAO;

import java.sql.*;
import java.util.ArrayList;
import model.Account;
public class AccountDAO extends DAO{
    public static Account verifyTheAccount(String email, String password) {
		try (Connection con = getConnection()){
			PreparedStatement stmt = con.prepareStatement("select * from tblAccount where email=? AND password=?");
			stmt.setString(1, email);
			stmt.setString(2, password);
			ArrayList<Account>accounts=createAccountFromResultSet(stmt.executeQuery());                        
			con.close();
			return accounts.get(0);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	private static ArrayList<Account>createAccountFromResultSet(ResultSet rs){
		if(rs!=null) {
			ArrayList<Account>result=new ArrayList();
			try {
				while(rs.next()) {
					try {
						result.add(new Account(
								rs.getInt("account_id"), rs.getString("email"), rs.getString("password"), rs.getString("first_name"), rs.getString("last_name"), 
								rs.getString("gender"), rs.getString("phone"), rs.getString("address"), rs.getString("avatar_img"), 
								rs.getString("payment_account"), rs.getInt("roles_account"), rs.getDate("registration_date")));
					} catch (Exception e) {
						System.out.println(e.getMessage());
					}
				}
				
				return result;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	public static void main(String[] args) {
		Account a = verifyTheAccount("tanchun0703@gmail.com", "12345");
                
		System.out.println(a);
	}
}
