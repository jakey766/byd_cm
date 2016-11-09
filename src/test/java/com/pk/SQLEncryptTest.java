package com.pk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

public class SQLEncryptTest {
	
	public static void main(String[] args) {
		try {
//			String sql = "select * from test";
			String sql = "select id, CAST(BINARY(AES_DECRYPT(name, 'jkp')) AS CHAR CHARACTER SET utf8) AS name, CAST(BINARY(DECODE(addr, 'jkp')) AS CHAR CHARACTER SET utf8) AS addr, age from test;";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test?characterEncoding=utf8", "root", "root");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			ResultSetMetaData md = rs.getMetaData();
			for(int i=0,len=md.getColumnCount();i<len;i++){
				String name = md.getColumnName(i+1);
				String type = md.getColumnTypeName(i+1);
				System.out.println(name + "\t" + type);
			}
			/**
			 * sql1
			 *  id	INT
				name	VARBINARY
				addr	BLOB
				age	INT
			 */
			
			/**
			 * sql2 解密方式
			 *  id	INT
				name	VARCHAR
				addr	MEDIUMBLOB
				age	INT
			 */
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}