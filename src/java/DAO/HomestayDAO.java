package DAO;

import java.sql.*;
import java.util.ArrayList;
import model.*;

public class HomestayDAO extends DAO {
    
    public static ArrayList<Homestay> getAllHomestays() {
        ArrayList<Homestay> result = new ArrayList<>();
        try (Connection con = getConnection()) {
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM tblHomestay");
            ResultSet rs = stmt.executeQuery();
            result = createHomestayBaseResultSet(rs);
        } catch (Exception e) {
            System.out.println(e);
        }
        return result;
    }
    

    // Method to get all homestays based on a search query
    public static ArrayList<Homestay> searchHomestays(String searchQuery) {
        ArrayList<Homestay> homestays = new ArrayList<>();
        try (Connection con = getConnection()) {
            String sql = "SELECT * FROM tblHomestay WHERE ht_name LIKE ?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, "%" + searchQuery + "%");
            ResultSet rs = stmt.executeQuery();
            homestays = createHomestayBaseResultSet(rs);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return homestays;
    }
    
    public static ArrayList<Homestay> createHomestayBaseResultSet(ResultSet rs) {
        ArrayList<Homestay> homestays = new ArrayList<>();
        try {
            while (rs.next()) {
                int id = rs.getInt("ht_id");
                String name = rs.getString("ht_name");
                Account owner = AccountDAO.getAccountById(rs.getInt("owner_id"));
                HomestayType type = HomestayTypeDAO.getHomestayTypeById(rs.getInt("ht_type_id"));
                String description = rs.getString("describe");
                HomestayAddress address = HomestayAddressDAO.getAddressById(rs.getInt("address_id"));
                Payment payment = PaymentDAO.getPaymentById(rs.getInt("address_id"));
                String rules = rs.getString("ht_rules");
                ArrayList<HomestayImg> imgs = HomestayImgDAO.getHomestayImgs(id);
                ArrayList<HomestayFacilities> facilities = HomestayFacilitiesDAO.getHomestayFacilities(id);
                ArrayList<Neighbourhood> neighbourhoods = NeighbourhoodDAO.getNeighbourhoods(id);
                ArrayList<Room> rooms = RoomDAO.getRoomsOfHomestay(id);
                Date registrationDate = rs.getDate("registration_date");
                Account admin = AccountDAO.getAccountById(rs.getInt("admin_id"));
                boolean status = rs.getBoolean("ht_status");

                Homestay homestay = new Homestay(id, name, owner, type, description, address, payment, rules, imgs, facilities, neighbourhoods, registrationDate, rooms, admin, status);
                homestays.add(homestay);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return homestays;
    }
    public static ArrayList<Homestay> searchHomestaysByName(String searchQuery) {
        ArrayList<Homestay> result = new ArrayList<>();
        try (Connection con = getConnection()) {
            String sql = "SELECT * FROM tblHomestay WHERE ht_name LIKE ?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, "%" + searchQuery + "%");
            ResultSet rs = stmt.executeQuery();
            result = createHomestayBaseResultSet(rs);
        } catch (Exception e) {
            System.out.println(e);
        }
        return result;
    }
    
    public static void main(String[] args) {
        ArrayList<Homestay> hs = HomestayDAO.getAllHomestays();
        for (Homestay h : hs) {
            System.out.println(h.toString());
        }
    }
}
