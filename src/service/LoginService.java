package service;

import util.DataBaseUtils;
import bean.User;

/**
 * �û���¼�ķ����� 
 * SearchService������ͬ����
 */
public class LoginService {
    
    public User getUser(String username){
        String sql = "select * from [user] where username = ?";
        User user = DataBaseUtils.queryForBean(sql, User.class, username);
        if(user == null){
            return null;
        }
        //System.out.println(user);
        return user;
    }

    public User getUser(int id){
        String sql = "select * from [user] where id = ?";
        User user = DataBaseUtils.queryForBean(sql, User.class, id);
        if(user == null){
            return null;
        }
        //System.out.println(user);
        return user;
    }
}
