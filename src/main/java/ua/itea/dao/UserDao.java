package ua.itea.dao;

import ua.itea.model.User;

public interface UserDao {

    String checkLogin(String login, String password);

//    void addUser(String login, String name, String password, String gender, String region, String comment);
    void addUser(User user);

}
