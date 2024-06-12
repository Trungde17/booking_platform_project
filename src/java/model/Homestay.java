package model;

import java.util.ArrayList;
import java.util.Date;

public class Homestay {
    private int ht_id;
    private String ht_name;
    private Account owner;
    private HomestayType homestayType;
    private String describe;
    private HomestayAddress homestayAddress;
    private Payment payment;
    private String homestay_rules;
    private ArrayList<HomestayImg>img;
    private ArrayList<HomestayFacilities>facilities;
    private ArrayList<Neighbourhood>neighbourhoods;
    private Date registration_date;
    private Account admin;
    private boolean status;
    private ArrayList<Room>rooms;

    public Homestay() {
    }

    public Homestay(int ht_id, String ht_name, Account owner, HomestayType homestayType, String describe, HomestayAddress homestayAddress, Payment payment, String homestay_rules, ArrayList<HomestayImg> img, ArrayList<HomestayFacilities> facilities, ArrayList<Neighbourhood> neighbourhoods, Date registration_date, ArrayList<Room>rooms,Account admin, boolean status) {
        this.ht_id = ht_id;
        this.ht_name = ht_name;
        this.owner = owner;
        this.homestayType = homestayType;
        this.describe = describe;
        this.homestayAddress = homestayAddress;
        this.payment = payment;
        this.homestay_rules = homestay_rules;
        this.img = img;
        this.facilities = facilities;
        this.neighbourhoods = neighbourhoods;
        this.registration_date = registration_date;
        this.admin = admin;
        this.status = status;
        this.rooms = rooms;
    }

    public int getHt_id() {
        return ht_id;
    }

    public void setHt_id(int ht_id) {
        this.ht_id = ht_id;
    }

    public String getHt_name() {
        return ht_name;
    }

    public void setHt_name(String ht_name) {
        this.ht_name = ht_name;
    }

    public Account getOwner() {
        return owner;
    }

    public void setOwner(Account owner) {
        this.owner = owner;
    }

    public HomestayType getHomestayType() {
        return homestayType;
    }

    public void setHomestayType(HomestayType homestayType) {
        this.homestayType = homestayType;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public HomestayAddress getHomestayAddress() {
        return homestayAddress;
    }

    public void setHomestayAddress(HomestayAddress homestayAddress) {
        this.homestayAddress = homestayAddress;
    }

    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }

    public String getHomestay_rules() {
        return homestay_rules;
    }

    public void setHomestay_rules(String homestay_rules) {
        this.homestay_rules = homestay_rules;
    }

    public ArrayList<HomestayImg> getImg() {
        return img;
    }

    public void setImg(ArrayList<HomestayImg> img) {
        this.img = img;
    }

    public ArrayList<HomestayFacilities> getFacilities() {
        return facilities;
    }

    public void setFacilities(ArrayList<HomestayFacilities> facilities) {
        this.facilities = facilities;
    }

    public ArrayList<Neighbourhood> getNeighbourhoods() {
        return neighbourhoods;
    }

    public void setNeighbourhoods(ArrayList<Neighbourhood> neighbourhoods) {
        this.neighbourhoods = neighbourhoods;
    }

    public Date getRegistration_date() {
        return registration_date;
    }

    public void setRegistration_date(Date registration_date) {
        this.registration_date = registration_date;
    }

    public Account getAdmin() {
        return admin;
    }

    public void setAdmin(Account admin) {
        this.admin = admin;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public ArrayList<Room> getRooms() {
        return rooms;
    }

    public void setRooms(ArrayList<Room> rooms) {
        this.rooms = rooms;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Homestay other = (Homestay) obj;
        return this.ht_id == other.ht_id;
    }

    @Override
    public String toString() {
        return "Homestay{" + "ht_id=" + ht_id + ", ht_name=" + ht_name + ", owner=" + owner + ", homestayType=" + homestayType + ", describe=" + describe + ", homestayAddress=" + homestayAddress + ", payment=" + payment + ", homestay_rules=" + homestay_rules + ", img=" + img + ", facilities=" + facilities + ", neighbourhoods=" + neighbourhoods + ", registration_date=" + registration_date + ", admin=" + admin + ", status=" + status + ", rooms=" + rooms + '}';
    }
    
    
}
