
package DAO;

import java.sql.*;
import java.util.ArrayList;
import model.RoomPrice;
public class RoomPriceDAO extends DAO {
    public static ArrayList<RoomPrice>getRoomPrices(int room_id){
        try (Connection con=getConnection()){
            PreparedStatement stmt=con.prepareStatement("select * from tblPrice as p join tblRoomPrice as rp "
                    + "on p.price_id=rp.price_id where room_id=?");
            stmt.setInt(1, room_id);
            return createRoomPricesBaseResultset(stmt.executeQuery());
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public static ArrayList<RoomPrice>createRoomPricesBaseResultset( ResultSet rs){
        try {
            ArrayList<RoomPrice>result=new ArrayList<>();
            while(rs.next()){
                result.add(new RoomPrice(rs.getInt("price_id"), rs.getString("price_type"), rs.getDouble("amount_per_night")));
            }
            return result;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
}