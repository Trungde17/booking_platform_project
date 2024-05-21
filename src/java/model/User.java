/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import DAO.NotifyDao;
import java.util.List;

/**
 *
 * @author QUANG HUY
 */
public class User {
    public String id;
    public String name;
    public String email;
    public String address;
    public String tel;
    public String birthday;
    public String password;
    public String avatar;
    public String verify_key;
    public boolean admin;
    public boolean verified;
    private List<Notification> notifications;

    public User() {
    }

    public User(String id, String name, String email, String address, String tel, String birthday, String password, String avatar, String verify_key, boolean admin, boolean verify) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.address = address;
        this.tel = tel;
        this.birthday = birthday;
        this.password = password;
        this.avatar = avatar;
        this.verify_key = verify_key;
        this.admin = admin;
        this.verified = verify;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", tel='" + tel + '\'' +
                ", birthday='" + birthday + '\'' +
                ", password='" + password + '\'' +
                ", avatar='" + avatar + '\'' +
                ", verify_key='" + verify_key + '\'' +
                ", admin=" + admin +
                ", verify=" + verified +
                '}';
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public String getTel() {
        return tel;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getPassword() {
        return password;
    }

    public String getAvatar() {
        return avatar;
    }

    public String getVerify_key() {
        return verify_key;
    }

    public boolean isAdmin() {
        return admin;
    }

    public boolean isVerified() {
        return verified;
    }

    public List<Notification> getNotifications() {
        NotifyDao nd = new NotifyDao();
        this.notifications = nd.getUserNotification(id);
        return notifications;
    }

    public void setNotifications(List<Notification> notifications) {
        this.notifications = notifications;
    }
}
