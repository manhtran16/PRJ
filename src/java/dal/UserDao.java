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
    private final String GET_USER_BY_EMAIL = "Select * from [dbo].[User] where Email like ? ";
    private final String CHECK_LOGIN = "SELECT Password FROM [dbo].[User] WHERE Email = ?";
    private final String GET_USER_BY_USERNAME = "SELECT * FROM [dbo].[User] WHERE UserName = ?";
    private final String REGISTER_USER = "INSERT INTO [dbo].[User]\n" +
"           ([UserRole]\n" +
"           ,[UserName]\n" +
"           ,[Email]\n" +
"           ,[PhoneNumber]\n" +
"           ,[Address]\n" +
"           ,[firstName]\n" +
"           ,[lastName]\n" +
"           ,[Password])\n" +
"     VALUES\n" +
"           (?\n" +
"           ,?\n" +
"           ,?\n" +
"           ,?\n" +
"           ,?\n" +
"           ,?\n" +
"           ,?\n" +
"           ,?)";

    public List<User> getAllUsers() {
        try {
            PreparedStatement stm = c.prepareStatement(GET_ALL_USER);
            ResultSet rs = stm.executeQuery();

            List<User> listCustomers = new ArrayList<>();

            while (rs.next()) {
                listCustomers.add(new User(
                        rs.getInt("userRole"),
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
            return -1;
        }
        
    }

    public User getUserByUserName(String userName) {
        User user = null;
        try {
            PreparedStatement stm = c.prepareStatement(GET_USER_BY_USERNAME);
            stm.setString(1, userName);

            try (ResultSet resultSet = stm.executeQuery()) {
                if (resultSet.next()) {
                    int userRole = resultSet.getInt("UserRole");
                    String email = resultSet.getString("Email");
                    String phoneNumber = resultSet.getString("PhoneNumber");
                    String address = resultSet.getString("Address");
                    String firstName = resultSet.getString("FirstName");
                    String lastName = resultSet.getString("LastName");
                    user = new User(userRole, userName, email, phoneNumber, address, firstName, lastName);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
    
        public User getUserByEmail(String email) {
        User user = null;
        try {
            PreparedStatement stm = c.prepareStatement(GET_USER_BY_EMAIL);
            stm.setString(1, email);

            try (ResultSet resultSet = stm.executeQuery()) {
                if (resultSet.next()) {
                    int userRole = resultSet.getInt("UserRole");
                    String userName = resultSet.getString("UserName");
                    String phoneNumber = resultSet.getString("PhoneNumber");
                    String address = resultSet.getString("Address");
                    String firstName = resultSet.getString("FirstName");
                    String lastName = resultSet.getString("LastName");
                    user = new User(userRole, userName, email, phoneNumber, address, firstName, lastName);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    public void createUser(User user, String password) {
        try {
            PreparedStatement stm = c.prepareStatement(REGISTER_USER);
            stm.setInt(1, user.getUserRole());
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
        User user = new User(0, "manhtran16", "manhdzvcl@gmail.com", "1234567890", "hanoi", "manh", "tran");
        UserDao dao = new UserDao();
        
        for (User us : dao.getAllUsers()) {
            System.out.println(us);
        }

    }
}
