package web.src;

import java.sql.*;

public class DbDao {
	private Connection conn;
	private String driver;
	private String url;
	private String username;
	private String pass;

	public DbDao() {
	}

	public DbDao(String driver, String url, String username, String pass) {
		this.driver = driver;
		this.url = url;
		this.username = username;
		this.pass = pass;
	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	/**
	 * Get the connection with SQL
	 *
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		if (conn == null) {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, username, pass);
		}
		return conn;
	}

	/**
	 * insert method
	 *
	 * @param sql
	 * @param args
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public boolean insert(String sql, Object... args) throws SQLException, ClassNotFoundException {
		PreparedStatement pstmt = getConnection().prepareStatement(sql);
		for (int i = 0; i < args.length; i++) {
			pstmt.setObject(i + 1, args[i]);
			if (pstmt.executeUpdate() != 1) {
				return false;
			}
		}
		return true;
	}

	/**
	 * Execute query nethod
	 * @param sql
	 * @param args
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public ResultSet query(String sql, Object... args) throws SQLException, ClassNotFoundException {
		PreparedStatement pstmt = getConnection().prepareStatement(sql);
		for (int i = 0; i < args.length; i++) {
			pstmt.setObject(i + 1, args[i]);
		}
		return pstmt.executeQuery();
	}

	/**
	 * Execute modify method
	 * @param sql
	 * @param args
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public void modify(String sql, Object... args) throws SQLException, ClassNotFoundException {
		PreparedStatement pstmt = getConnection().prepareStatement(sql);
		for (int i = 0; i < args.length; i++) {
			pstmt.setObject(i + 1, args[i]);
		}
		pstmt.executeUpdate();
		pstmt.close();
	}

	/**
	 * Close the conn when it's not needed
	 * @throws SQLException
	 */
	public void closeConn() throws SQLException {
		if (conn != null && !conn.isClosed()) {
			conn.close();
		}
	}
}