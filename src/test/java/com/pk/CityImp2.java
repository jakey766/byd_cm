package com.pk;

import com.google.gson.reflect.TypeToken;
import com.pk.framework.util.JSONUtil;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jiangkunpeng on 16/12/6.
 */
public class CityImp2 {

    public static void main(String[] args){
        InputStream is = null;
        BufferedReader br = null;
        Connection conn = null;
        int cid = 600;
        int idx = 1;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/byd_cm?characterEncoding=utf8", "root", "root");
            is = CityImp.class.getResourceAsStream("/cities.json");
            br = new BufferedReader(new InputStreamReader(is));
            String line = null;
            StringBuilder sb = new StringBuilder(100);
            while((line=br.readLine())!=null){
                line = line.trim();
                sb.append(line);
            }
            List<CityJsonVO> list = JSONUtil.fromJson(sb.toString(), new TypeToken<List<CityJsonVO>>(){});
            Map<String, CityJsonVO> map = new HashMap<>();
            for(CityJsonVO vo:list){
                if(vo.getParent_id()==0){
                    vo.setChildren(new ArrayList<CityJsonVO>());
                    map.put(vo.getId() + "", vo);
                }else{
                    CityJsonVO p = map.get(vo.getParent_id() + "");
                    if(p==null)
                        System.out.println("不存在父:" + vo.getName());
                    else
                        p.getChildren().add(vo);
                }
            }
            Statement stmt = null;
            ResultSet rs = null;
            stmt = conn.createStatement();
            rs = stmt.executeQuery("select max(id) from sys_tree");
            if(rs.next())
                cid = rs.getInt(1) + 1;
            rs.close();
            stmt.close();

            for(CityJsonVO vo: map.values()){
                stmt = conn.createStatement();
                rs = stmt.executeQuery("select * from sys_tree where type='CITY' and name='" + vo.getName() + "'");
                if(!rs.next()){
                    addCity(conn, 0, cid++, 1, vo.getName());
                    System.out.println("增加省份:" + vo.getName());
                }
                rs.close();
                stmt.close();
            }
            for(CityJsonVO vo: map.values()){
                stmt = conn.createStatement();
                rs = stmt.executeQuery("select * from sys_tree where type='CITY' and name='" + vo.getName() + "'");
                rs.next();
                int pid = rs.getInt("id");
                String sf = rs.getString("name");
                rs.close();
                stmt.close();
                stmt = conn.createStatement();
                if(vo.getChildren()!=null){
                    for(CityJsonVO _vo:vo.getChildren()){
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery("select * from sys_tree where type='CITY' and pid=" + pid + " and name='" + _vo.getName() + "'");
                        if(!rs.next()){
                            addCity(conn, pid, cid++, 2, _vo.getName());
                            System.out.println("增加城市:" + sf + "-" + _vo.getName());
                        }
                        rs.close();
                        stmt.close();
                    }
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try {
                if(is!=null)
                    is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void addCity(Connection conn, int pid, int cid, int level, String name) throws Exception{
        PreparedStatement stmt = null;
        String code = null;
        if(level==1)
            code = "," + cid + ",";
        else
            code = "," + pid + "," + cid + ",";
        stmt = conn.prepareStatement("insert into sys_tree (id, `type`, level, pid, name, code) values(?, ?, ?, ?, ?, ?)");
        int idx = 1;
        stmt.setInt(idx++, cid);
        stmt.setString(idx++, "CITY");
        stmt.setInt(idx++, level);
        stmt.setInt(idx++, pid);
        stmt.setString(idx++, name);
        stmt.setString(idx++, code);
        stmt.executeUpdate();

        stmt.close();
    }

    public class CityJsonVO{
        private int id;
        private int parent_id;
        private String name;
        private List<CityJsonVO> children;

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public int getParent_id() {
            return parent_id;
        }

        public void setParent_id(int parent_id) {
            this.parent_id = parent_id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public List<CityJsonVO> getChildren() {
            return children;
        }

        public void setChildren(List<CityJsonVO> children) {
            this.children = children;
        }
    }

}
