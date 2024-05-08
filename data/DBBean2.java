package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBBean2 {

	private static DBBean2 instance = new DBBean2();

	public static DBBean2 getInstance() {
		return instance;
	}

	private DBBean2() {
	}

	// 커넥션풀로부터 커넥션객체를 얻어내는 메소드
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/basicjsp");
		return ds.getConnection();
	}

	// 시각화에 사용할 데이터를 얻어내는 메소드
	public List<DataBean> getDatas() throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<DataBean> dataList = null;

		try {
			conn = getConnection();

			// String sql1 = "SELECT attackIP.*, country.cName, country.latitude,
			// country.longitude FROM attackIP JOIN country ON attackIP.cCode =
			// country.cCode ORDER BY aId asc;";
			String sql1 = "SELECT `attackIP(2019)`.*, country.cName, country.latitude, country.longitude FROM `attackIP(2019)` JOIN country ON `attackIP(2019)`.cCode = country.cCode ORDER BY aId asc;";
			pstmt = conn.prepareStatement(sql1);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dataList = new ArrayList<DataBean>();
				do {
					DataBean data = new DataBean();
					data.setYear(rs.getString("year"));
					data.setcName(rs.getString("cName"));
					data.setcCode(rs.getString("cCode"));
					data.setLongitude(rs.getFloat("longitude"));
					data.setLatitude(rs.getFloat("latitude"));
					data.setTrans_ip(rs.getString("trans_ip"));

					dataList.add(data);
				} while (rs.next());
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		return dataList;
	}

	// 세계지도 시각화에 사용할 데이터를 얻어내는 메소드
	public List<DataBean2> getDatasMap() throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<DataBean2> dataList = null;

		try {
			conn = getConnection();

			// String sql1 = "SELECT attackIP.*, country.cName, country.latitude,
			// country.longitude FROM attackIP JOIN country ON attackIP.cCode =
			// country.cCode ORDER BY aId asc;";
			String sql1 = "SELECT country3.homelat, country3.homelon, country3.homecontinent, COUNT(attackip.Trans_IP) AS n " +
   	             "FROM attackIP " +
   	             "JOIN country3 ON attackIP.cCode = country3.cCode " +
   	             "WHERE attackip.year = 2020 " +
   	             "GROUP BY attackIP.cCode " +
   	             "ORDER BY n DESC";
			pstmt = conn.prepareStatement(sql1);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dataList = new ArrayList<DataBean2>();
				do {
					DataBean2 data = new DataBean2();
					data.setHomelat(rs.getFloat("homelat"));
					data.setHomelon(rs.getFloat("homelon"));
					data.setHomecontinent(rs.getString("homecontinent"));
					data.setN(rs.getInt("n"));					

					dataList.add(data);
				} while (rs.next());
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		return dataList;
	}

}
