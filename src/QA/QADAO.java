package QA;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class QADAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private static QADAO dao;

	public static QADAO getInstance() {
		if (dao == null)
			dao = new QADAO();
		return dao;
	}

	public void upload(QADTO qadto) {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();

			psmt = conn.prepareStatement(
					"insert into QnA(q_num,q_writer,q_pw,q_title,q_content) values(q_num.nextval,?,?,?,?)");
			psmt.setString(1, qadto.getQ_writer());
			psmt.setInt(2, qadto.getQ_pw());
			psmt.setString(3, qadto.getQ_title());
			psmt.setString(4, qadto.getQ_content());
			psmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	public ArrayList<QADTO> selectAll() {
		ArrayList<QADTO> list = new ArrayList<>();
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();

			psmt = conn.prepareStatement(
					"select q_num,q_writer,q_title,TO_CHAR(q_date,'yyyy-mm-dd'),q_read_count from QnA");
			rs = psmt.executeQuery();

			while (rs.next()) {
				QADTO dto = new QADTO(rs.getInt(1), rs.getString(2), 0, rs.getString(3), null, rs.getString(4),
						rs.getInt(5), null);
				list.add(dto);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return list;
	}

	public QADTO selectOne(String q_num) {
		QADTO dto = null;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();

			psmt = conn.prepareStatement("select * from QnA where q_num=?");
			psmt.setString(1, q_num);
			rs = psmt.executeQuery();

			while (rs.next()) {
				dto = new QADTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getString(8));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return dto;
	}

	public void readCount(String q_num) {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();

			psmt = conn.prepareStatement("update QnA set q_read_count=(q_read_count+1) where q_num=?");
			psmt.setString(1, q_num);
			psmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	public void update(QADTO qadto) {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();

			psmt = conn.prepareStatement("update QnA set q_pw=?,q_title=?,q_content=? where q_num=?");
			psmt.setInt(1, qadto.getQ_pw());
			psmt.setString(2, qadto.getQ_title());
			psmt.setString(3, qadto.getQ_content());
			psmt.setInt(4, qadto.getQ_num());
			psmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public void delete(int q_num) {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();

			psmt = conn.prepareStatement("delete QnA where q_num=?");
			psmt.setInt(1, q_num);
			psmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	public int pwCheck(int q_num) {
		int check_pw = 0;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();

			psmt = conn.prepareStatement("select q_pw from QnA where q_num=?");
			psmt.setInt(1, q_num);
			rs = psmt.executeQuery();

			while (rs.next()) {
				check_pw = rs.getInt(1);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return check_pw;
	}

	public ArrayList<QADTO> selectName(String search_input,int num) {
		ArrayList<QADTO> list = new ArrayList<QADTO>();

		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();

			psmt = conn.prepareStatement("select * from (SELECT * FROM (SELECT rownum rnum,q_num,q_writer,q_title,TO_CHAR(q_date,'yyyy-mm-dd'),q_read_count FROM QnA where q_writer=? order by q_num desc) QnA where rnum >? and rnum <= ?)");
			
			psmt.setString(1, search_input);
			if (num == 1) {
				psmt.setInt(2, num);
				psmt.setInt(3, (num * 10));
			} else {
				psmt.setInt(2, (num - 1) * 10);
				psmt.setInt(3, (num * 10));
			}
			rs = psmt.executeQuery();

			while (rs.next()) {
				QADTO dto = new QADTO(rs.getInt(1), rs.getString(2), rs.getString(4), rs.getString(6), rs.getInt(7));
				list.add(dto);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}

	public ArrayList<QADTO> selectTitle(String search_input) {
		ArrayList<QADTO> list = null;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();

			psmt = conn.prepareStatement("select * from QnA where q_title like ?");
			psmt.setString(1, "%" + search_input + "%");
			rs = psmt.executeQuery();

			while (rs.next()) {
				QADTO dto = new QADTO(rs.getInt(1), rs.getString(2), rs.getString(4), rs.getString(6), rs.getInt(7));
				list.add(dto);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}

	public int totalcnt() {
		int cnt = 1;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();

			psmt = conn.prepareStatement("select count(*) from QnA");
			rs = psmt.executeQuery();

			while (rs.next()) {
				cnt = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return cnt;
	}

	public ArrayList<QADTO> QnAset(int num) {
		ArrayList<QADTO> list = new ArrayList<QADTO>();

		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();
			
			psmt = conn.prepareStatement(
					"select * from (SELECT rownum rnum,QnA.* FROM (SELECT q_num,q_writer,q_title,TO_CHAR(q_date,'yyyy-mm-dd'),q_read_count FROM QnA order by q_num desc) QnA) QnA2 where QnA2.rnum >=? and QnA2.rnum <= ?");

			
			psmt.setInt(1, (num - 1) * 10 + 1);
			psmt.setInt(2, (num * 10));
			

			rs = psmt.executeQuery();
			
			while (rs.next()) {
				QADTO dto = new QADTO(rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				if (rs != null)
					rs.close();
				if (psmt != null)
					psmt.close();
				if (conn != null)
					conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;

	}

}
