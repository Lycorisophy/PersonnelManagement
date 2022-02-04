package util;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class DataBaseUtils {
	private static String username; //�û���
	private static String password; //����
	private static String dataBaseName; //���ݿ���
	public static void config(String path){
	    InputStream inputStream = DataBaseUtils.class.getClassLoader().getResourceAsStream(path);
	    Properties p = new Properties();
	    try {
	        p.load(inputStream);
	        username = p.getProperty("db.username");
	        password = p.getProperty("db.password");
	        dataBaseName = p.getProperty("db.dataBaseName");
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	}
	static {
	    config("config/jdbc.properties");
	}
	public static String getUsername() {
		return username;
	}
	public static void setUsername(String username) {
		DataBaseUtils.username = username;
	}
	public static String getPassword() {
		return password;
	}
	public static void setPassword(String password) {
		DataBaseUtils.password = password;
	}
	public static String getDataBaseName() {
		return dataBaseName;
	}
	public static void setDataBaseName(String dataBaseName) {
		DataBaseUtils.dataBaseName = dataBaseName;
	}
	/**
	 * �������ݿ�Ļ�����Ϣ
	 * @return void
	 */
	
	/**
	 * ��ȡ���ݿ�����
	 * @return Connection 
	 */
	public static Connection getConnection(){
		String URL="jdbc:sqlserver://localhost:1433;DatabaseName=";
		Connection connection=null;
	    try {
	    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
	    	connection = DriverManager.getConnection(URL+dataBaseName,username,password); 
	        System.out.println("SQLServer���ӳɹ���"+connection);//��������ܴ�ӡ������ʾ���ݿ����ӳɹ�
	        
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return connection;
	}
	public static void closeConnection(Connection connection,Statement statement,ResultSet rs){
	     try {
	         if(rs!=null)rs.close();
	         if(statement!=null)statement.close();
	         if(connection!=null)connection.close();
	     } catch (Exception e) {
	         e.fillInStackTrace();
	     }
	 }
	/**
	 * DML����
	 * @param sql
	 * @param objects
	 */
	public static void update(Connection conn,String sql){			
		try {	
			Statement statement=conn.createStatement();
	    	statement.executeUpdate(sql);
	    	closeConnection(conn, statement, null);
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	public static void update(String sql,Object...objects){
	    Connection connection = getConnection();
	    PreparedStatement statement = null;
	    try {
	        statement = (PreparedStatement) connection.prepareStatement(sql);
	        for (int i = 0; i < objects.length; i++) {
	            statement.setObject(i+1, objects[i]);
	        }
	        statement.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }finally{
	        closeConnection(connection, statement, null);
	    }
	}
	public static int update(String sql) throws SQLException{
		Connection connection=getConnection();
	    try{
	    	Statement statement=connection.createStatement();
	    	statement.executeUpdate(sql);
	    	closeConnection(connection, statement, null);
	    	//System.out.println(sql);
	    	return 1;
	    }
	    catch (SQLException e) {
			throw e;  }
		catch (Exception e){  
			e.printStackTrace();
			return -1;
		}  
	}
	public static void insert(String sql){
		Connection connection=getConnection();
	    try{
	    	Statement statement=connection.createStatement();
	    	statement.executeUpdate(sql);
	    	closeConnection(connection, statement, null);
	    }
	    catch (SQLException e) {e.printStackTrace();}
	}
	public static int insert(String sql,String tname) throws SQLException{
		Connection connection=getConnection();
	    try{
	    	Statement statement=connection.createStatement();
	    	statement.executeUpdate("insert into ["+tname+"] "+sql);
	    	closeConnection(connection, statement, null);
	    	System.out.println("insert into ["+tname+"] "+sql);
	    	return 1;
	    }
	    catch (SQLException e) {
			throw e;  }
		catch (Exception e){  
			e.printStackTrace();
			return -1;
		}  
	}
public static ResultSet select(Connection conn,String sql){			
	ResultSet resultSet=null;
	try {	
		Statement statement=conn.createStatement();
		resultSet=statement.executeQuery(sql);
		return resultSet;	
    } catch (SQLException e) {
        e.printStackTrace();
        return resultSet;	
    }
}
public static int delete(String tableName,String clumnName,String clumnValue) throws SQLException{			
	Connection connection=getConnection();
	try{	
	Statement statement=connection.createStatement();
	statement.executeUpdate("delete from"+" ["+tableName+"] "+"where"+" "+clumnName+"='"+clumnValue+"'");
	System.out.println("delete from"+" ["+tableName+"] "+"where"+" "+clumnName+"='"+clumnValue+"'");
	closeConnection(connection, statement, null);
	return 1;
	}
	catch (SQLException e) {e.printStackTrace();return -1;}
}
public static int delete(String tableName,String clumnName,int clumnValue) throws SQLException{			
	Connection connection=getConnection();
	try{	
	Statement statement=connection.createStatement();
	statement.executeUpdate("delete from"+" ["+tableName+"] "+"where"+" "+clumnName+"='"+clumnValue+"'");
	System.out.println("delete from"+" ["+tableName+"] "+"where"+" "+clumnName+"='"+clumnValue+"'");
	closeConnection(connection, statement, null);
	return 1;
	}
	catch (SQLException e) {
		throw e;  }
	catch (Exception e){  
		e.printStackTrace();
		return -1;
	}  
}
public static int getRowCount(String table){
	String sql="select count(*) from";
	Connection conn1 = getConnection();
	ResultSet rset=null;
	Statement stmt = null;
	int rowCount = 0;
	try {
stmt=conn1.createStatement();
rset = stmt.executeQuery(sql+" "+table);
//System.out.println(sql+" "+table); 
if(rset.next()) { 
  rowCount=rset.getInt(1);
}
closeConnection(conn1, null, rset);
return rowCount;
} catch (SQLException e) {
    e.printStackTrace();
    return rowCount;
}
}
public static int getRowCountCon(String table,String con){
	String sql="select count(*) from";
	Connection conn1 = getConnection();
	ResultSet rset=null;
	Statement stmt = null;
	int rowCount = 0;
	try {
stmt=conn1.createStatement();
rset = stmt.executeQuery(sql+" "+table+" "+con);
//System.out.println(sql+" "+table); 
if(rset.next()) { 
  rowCount=rset.getInt(1);
}
closeConnection(conn1, null, rset);
return rowCount;
} catch (SQLException e) {
    e.printStackTrace();
    return rowCount;
}
}
public static int getRowCount(String table,String con){
	String sql="select count(*) from where "+con;
	Connection conn1 = getConnection();
	ResultSet rset=null;
	Statement stmt = null;
	int rowCount = 0;
	try {
stmt=conn1.createStatement();
rset = stmt.executeQuery(sql+" "+table);
System.out.println(sql+" "+table); 
if(rset.next()) { 
  rowCount=rset.getInt(1);
}
closeConnection(conn1, null, rset);
return rowCount;
} catch (SQLException e) {
    e.printStackTrace();
    return rowCount;
}
}
public static int getNum(String table,String con){
	String sql="select count (*) from ["+table+"] where "+con;
	Connection conn1 = getConnection();
	ResultSet rset=null;
	Statement stmt = null;
	int count = 0;
	//System.out.print(sql);
	try{
		stmt=conn1.createStatement();
	rset = stmt.executeQuery(sql);
	if(rset.next()) { 
		  count=rset.getInt(1);
		}
	closeConnection(conn1, stmt, rset);
		return count;
	}
	catch(SQLException e){e.printStackTrace();
	closeConnection(conn1, stmt, rset);
    return count;}
}
public static String getName(String table,String name,String con){
	String sql="select "+name+" from ["+table+"] where "+con;
	Connection conn1 = getConnection();
	ResultSet rset=null;
	Statement stmt = null;
	String Name = null;
	System.out.print(sql);
	try{
		stmt=conn1.createStatement();
	rset = stmt.executeQuery(sql);
	if(rset.next()) { 
		Name=rset.getString(1);
		}
		return Name;
	}
	catch(SQLException e){e.printStackTrace();
    return Name;}
}
public static String select(String sql){
	Connection conn1 = getConnection();
	ResultSet rset=null;
	Statement stmt = null;
	String Name = null;
	try{
	stmt=conn1.createStatement();
	rset = stmt.executeQuery(sql);
	if(rset.next()) { 
		Name=rset.getString(1);
		}
		return Name;
	}
	catch(SQLException e){e.printStackTrace();
    return Name;}
}
/**
 * ��ѯ�����ݣ�����list����
 * @param sql
 * @param objects
 * @return
 * @throws SQLException
 */
public static List<Map<String,Object>> queryForList(String sql,Object...objects){
    List<Map<String,Object>> result = new ArrayList<Map<String,Object>>();
    Connection connection = getConnection();
    PreparedStatement statement = null;
    ResultSet rs = null;
    try {
        statement = connection.prepareStatement(sql);
        for (int i = 0; i < objects.length; i++) {
            statement.setObject(i+1, objects[i]);
        }
        
        rs = statement.executeQuery();
        while(rs.next()){
            ResultSetMetaData resultSetMetaData = rs.getMetaData();
            int count = resultSetMetaData.getColumnCount(); //��ȡ����
            Map<String,Object> map = new HashMap<String, Object>();
            for (int i = 0; i < count; i++) {
                map.put(resultSetMetaData.getColumnName(i+1), rs.getObject(resultSetMetaData.getColumnName(i+1)));
            }
            result.add(map);
        };
    } catch (SQLException e) {
        e.printStackTrace();
    }finally{
        closeConnection(connection, statement, rs);
    }
    
    return result;
}
/**
 * ��ѯ�����ݣ�����map����
 * @param sql
 * @param objects
 * @return
 * @throws SQLException
 */
public static Map<String,Object> queryForMap(String sql,Object...objects) throws SQLException{
    Map<String,Object> result = new HashMap<String,Object>();
    List<Map<String,Object>> list = queryForList(sql, objects);
    if(list.size() != 1){
        return null;
    }
    result = list.get(0);
    return result;
}
/**
 * ��ѯ�����ݣ����ҷ���һ��JavaBean
 * @param sql
 * @param clazz
 * @param objects
 * @return
 * @throws NoSuchFieldException
 * @throws SecurityException
 */
@SuppressWarnings("unchecked")
public static <T>T queryForBean(String sql,@SuppressWarnings("rawtypes") Class clazz,Object...objects){
    T obj = null;
    Map<String,Object> map = null;
    Field field = null;
    try {
        obj = (T) clazz.newInstance();   //����һ���µ�Beanʵ��
        map = queryForMap(sql, objects); //�Ƚ����������һ��Map��
    } catch (InstantiationException | IllegalAccessException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    if(map == null){
        return null;
    }
    //����Map
    for (String columnName : map.keySet()) {
        Method method = null;
        String propertyName = StringUtils.columnToProperty(columnName); //��������
        
        try {
            field = clazz.getDeclaredField(propertyName);
        } catch (NoSuchFieldException e1) {
            e1.printStackTrace();
        } catch (SecurityException e1) {
            e1.printStackTrace();
        } 
        //��ȡJavaBean�е��ֶ�
        String fieldType = field.toString().split(" ")[1]; //��ȡ���ֶε�����
        //System.out.println(fieldType);
        Object value = map.get(columnName);
        if(value == null){
            continue;
        }
        /**��ȡset����������* */
        String setMethodName = "set" + StringUtils.upperCaseFirstCharacter(propertyName);
        //System.out.println(setMethodName);
        try {
            /**��ȡֵ������* */
            String valueType = value.getClass().getName();
            
            /**�鿴�����Ƿ�ƥ��* */
            if(!fieldType.equalsIgnoreCase(valueType)){
                //System.out.println("���Ͳ�ƥ��");
                if(fieldType.equalsIgnoreCase("java.lang.Integer")){
                    value = Integer.parseInt(String.valueOf(value));
                }else if(fieldType.equalsIgnoreCase("java.lang.String")){
                    value = String.valueOf(value);
                }else if(fieldType.equalsIgnoreCase("java.util.Date")){
                    valueType = "java.util.Date";
                    //��valueת����java.util.Date
                    String dateStr = String.valueOf(value);
                    Timestamp ts = Timestamp.valueOf(dateStr);
                    Date date = new Date(ts.getTime());
                    value = date;
                }
            }
            
            /**��ȡset����* */
            //System.out.println(valueType);
            method = clazz.getDeclaredMethod(setMethodName,Class.forName(fieldType));
            /**ִ��set����* */
            method.invoke(obj, value);
        }catch(Exception e){
            e.printStackTrace();
            /**�����������������Ϊ���Ͳ�ƥ��* */
        }
    }
    return obj;
}
}
