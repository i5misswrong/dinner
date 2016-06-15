/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DATA;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author ice
 */
public class testDB {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        UserDB dd = new UserDB();
        FoodDB fdb = new FoodDB();
//		boolean flag=dd.login("select * from user where userName='wrong' and userPwd='334455'");
//		boolean ff=dd.regiist("insert into user (userName,userPwd) values ('Azeroth','334455')");

        List list = new ArrayList();
        list = fdb.quertBusinessFood(5,"select * from food where businessId='3'");
                for(int i=0;i<list.size();i++){
                    String str [] =(String [])list.get(i);
                    String s=str[2];
                    System.out.println(s);
                    
                }
        System.out.println(list.size());
    }

}
