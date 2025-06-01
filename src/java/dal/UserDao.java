/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import controller.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.User;

/**
 *
 * @author manht
 */
public class UserDao extends DBContext {

    private final String GET_ALL_USER = "SELECT * FROM [dbo].[User]";
    private final String LOGIN_USER = "Select * from [dbo].[User] where gmail like ? and password like ?";
    private final String CHECK_LOGIN = "SELECT Password FROM [dbo].[User] WHERE UserName = ?";
    private final String GET_USER_BY_USERNAME = "SELECT * FROM [dbo].[User] WHERE UserName = ?";
    private final String REGISTER_USER = "INSERT INTO [dbo].[User]\n"
            + "           ([UserID]\n"
            + "           ,[UserName]\n"
            + "           ,[Email]\n"
            + "           ,[PhoneNumber]\n"
            + "           ,[FirstName]\n"
            + "           ,[LastName]\n"
            + "           ,[Address]\n"
            + "           ,[Password])\n"
            + "     VALUES\n"
            + "           (?\n"
            + "           ,?\n"
            + "           ,?\n"
            + "           ,?\n"
            + "           ,?\n"
            + "           ,?\n"
            + "           ,?\n"
            + "           ,?)";

    public List<User> getAllUsers() {
        try {
            PreparedStatement stm = c.prepareStatement(GET_ALL_USER);
            ResultSet rs = stm.executeQuery();

            List<User> listCustomers = new ArrayList<>();

            while (rs.next()) {
                listCustomers.add(new User(
                        rs.getInt("userID"),
                        rs.getString("userName"),
                        rs.getString("email"),
                        rs.getString("phoneNumber"),
                        rs.getString("address"),
                        rs.getString("firstName"),
                        rs.getString("lastName")));
            }
            return listCustomers;
        } catch (Exception e) {
            return null;
        }
    }
    
    	public int checkLoginUser(String email, String password) {

		try (PreparedStatement stm = c.prepareStatement(CHECK_LOGIN)) {
			stm.setString(1, email);

			try (ResultSet resultSet = stm.executeQuery()) {
				if (resultSet.next()) {
					String storedPassword = resultSet.getString("Password");
					if (storedPassword.equals(password)) {
						return 0; // đúng
					} else {
						return 1; // sai mật khẩu
					}
				} else {
					return 2; // không có username
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return 2;
	}
        
    public User getUser(String userName) {
		User user = null;
		try {
                    PreparedStatement stm = c.prepareStatement(GET_USER_BY_USERNAME);
                    stm.setString(1, userName);

			try (ResultSet resultSet = stm.executeQuery()) {
				if (resultSet.next()) {
					int userID = resultSet.getInt("UserID");
					String email = resultSet.getString("Email");
					String phoneNumber = resultSet.getString("PhoneNumber");
					String address = resultSet.getString("Address");
					String firstName = resultSet.getString("FirstName");
					String lastName = resultSet.getString("LastName");
					user = new User(userID, userName, email, phoneNumber, address, firstName, lastName);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return user;
	}    

    public User Login(String custName, String phone) {
        try {
            PreparedStatement stm = c.prepareStatement(LOGIN_USER);
            stm.setString(1, custName);
            stm.setString(2, phone);
            ResultSet rs = stm.executeQuery();

            if (rs.next()) {
                return new User(
                        rs.getInt("userID"),
                        rs.getString("userName"),
                        rs.getString("email"),
                        rs.getString("phoneNumber"),
                        rs.getString("address"),
                        rs.getString("firstName"),
                        rs.getString("lastName"));
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public void createUser(User user, String password) {
        try {
            PreparedStatement stm = c.prepareStatement(REGISTER_USER);
            stm.setInt(1, user.getUserID());
            stm.setString(2, user.getUserName());
            stm.setString(3, user.getEmail());
            stm.setString(4, user.getPhoneNumber());
            stm.setString(5, user.getAddress());
            stm.setString(6, user.getFirstName());
            stm.setString(7, user.getLastName());
            stm.setString(8, password);
            int check = stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        User user = new User(0, "manhtran16", "manhdzvcl@gmail.com", "123456789", "hanoi", "manh", "tran");
        UserDao dao = new UserDao();
        dao.createUser(user, "123456");
        for (User us : dao.getAllUsers()) {
            System.out.println(us);
        }
        
    }
}
