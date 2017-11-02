package Login_Join;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import QA.QADAO;

public class LoginJoinDAO {

	private ResultSet rs;
	private Connection conn;
	private PreparedStatement pst;
	private int cnt;
	private static LoginJoinDAO dao;

	public static LoginJoinDAO getInstance() {
		if (dao == null)
			dao = new LoginJoinDAO();
		return dao;
	}

	private void getConneticon() throws NamingException, SQLException {
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
	}

	public int d_insert(d_loginDTO d_loginDTO) {
		try {
			getConneticon();

			pst = conn.prepareStatement("insert into d_login values(?,?,?,?,?,?)");

			pst.setString(1, d_loginDTO.getD_id());
			pst.setString(2, d_loginDTO.getD_pw());
			pst.setString(3, d_loginDTO.getD_name());
			pst.setInt(4, d_loginDTO.getD_phone());
			pst.setString(5, d_loginDTO.getD_email());
			pst.setString(6, d_loginDTO.getD_blog());
			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pst != null) {
					pst.close();
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

	public String d_PWsearch(String d_id, String d_name, String d_email) {
		String pw = null;
		try {
			getConneticon();

			pst = conn.prepareStatement("select d_id from d_login where d_id=? and d_name=? and d_email=?");
			pst.setString(1, d_id);
			pst.setString(2, d_name);
			pst.setString(3, d_email);
			rs = pst.executeQuery();
			if (rs.next()) {
				d_id = rs.getString(1);
			} // 값은 하나밖에 안들어간다 2개이상 넣을려면 어레이리스트나 dto로 또담아줘야한다

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pst != null) {
					pst.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return d_id;

	}

	public int d_PWreset(String d_id, String d_pw) {
		try {
			getConneticon();

			pst = conn.prepareStatement("update d_login set d_pw=? where d_id=?");

			pst.setString(1, d_pw);
			pst.setString(2, d_id);

			cnt = pst.executeUpdate();
			if (cnt > 0) {
				System.out.println("수정완료");
			} else {
				System.out.println("x");// 값은 하나밖에 안들어간다 2개이상 넣을려면 어레이리스트나 dto로
										// 또담아줘야한다
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pst != null) {
					pst.close();
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

	public String d_LoginCheck(String id, String pw) {
		String name = null;
		try {
			getConneticon();

			pst = conn.prepareStatement("select l_name from login_check where l_id=? and l_pw=?");

			pst.setString(1, id);
			pst.setString(2, pw);

			rs = pst.executeQuery();

			if (rs.next()) {
				name = rs.getString(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pst != null) {
					pst.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return name;
	}

	public String d_IDsearch(String d_name, String d_email) {

		String d_id = null;
		try {
			getConneticon();

			pst = conn.prepareStatement("select d_id from d_login where d_name=? and d_email=?");

			pst.setString(1, d_name);
			pst.setString(2, d_email);

			rs = pst.executeQuery();

			if (rs.next()) {
				d_id = rs.getString(1); // 값은 하나밖에 안들어간다 2개이상 넣을려면 어레이리스트나 dto로
										// 또담아줘야한다
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pst != null) {
					pst.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return d_id;
	}

	public int d_confirmId(String d_id) {
		int result = -1;

		try {
			getConneticon();

			pst = conn.prepareStatement("select l_id from login_check where l_id=?");
			pst.setString(1, d_id);
			rs = pst.executeQuery();

			if (rs.next()) {
				result = 1;
			} else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pst != null)
					pst.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int d_update(d_loginDTO d_loginDTO) {
		int result = -1;

		try {
			getConneticon();

			pst = conn.prepareStatement(
					"update d_login set d_pw=?, d_name=?, d_phone=?, d_email=?, d_blog=? where d_id=?");

			pst.setString(1, d_loginDTO.getD_pw());
			pst.setString(2, d_loginDTO.getD_name());
			pst.setInt(3, d_loginDTO.getD_phone());
			pst.setString(4, d_loginDTO.getD_email());
			pst.setString(5, d_loginDTO.getD_blog());
			pst.setString(6, d_loginDTO.getD_id());

			result = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public ArrayList<d_loginDTO> d_selectAll() {
		ArrayList<d_loginDTO> list = new ArrayList<>();

		try {
			getConneticon();

			pst = conn.prepareStatement("select * from d_login where d_id=?");

			rs = pst.executeQuery();

			while (rs.next()) {
				d_loginDTO dto = new d_loginDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4),
						rs.getString(5), rs.getString(6));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public d_loginDTO d_select(String d_id) {
		d_loginDTO dto = null;

		try {
			getConneticon();

			pst = conn.prepareStatement("select * from d_login where d_id=?");
			pst.setString(1, d_id);

			rs = pst.executeQuery();

			if (rs.next()) {
				dto = new d_loginDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dto;
	}

	public String c_confirmId(String c_id) {
		String result = null;
		try {
			getConneticon();

			pst = conn.prepareStatement("select * from login_check where l_id=?");
			pst.setString(1, c_id);
			rs = pst.executeQuery();

			if (rs.next()) {
				result = rs.getString(1);
			} else {
				result = null;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pst != null) {
					pst.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	public int c_insert(c_joinCheckDTO c_joinCheckDTO) {

		try {
			getConneticon();

			pst = conn.prepareStatement("insert into c_login values(?,?,?,?,?,?,?,?,?,null)");

			pst.setString(1, c_joinCheckDTO.getC_id());
			pst.setString(2, c_joinCheckDTO.getC_pw());
			pst.setString(3, c_joinCheckDTO.getC_companyName());
			pst.setString(4, c_joinCheckDTO.getC_name());
			pst.setString(5, c_joinCheckDTO.getC_position());
			pst.setString(6, c_joinCheckDTO.getC_depart());
			pst.setInt(7, c_joinCheckDTO.getC_phone());
			pst.setInt(8, c_joinCheckDTO.getC_fax());
			pst.setString(9, c_joinCheckDTO.getC_email());

			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return cnt;
	}

	public int Client_insert(d_loginDTO d_loginDTO) {

		try {
			getConneticon();

			pst = conn.prepareStatement("insert into login_check values(?,?,?,?)");
			pst.setString(1, d_loginDTO.getD_id());
			pst.setString(2, d_loginDTO.getD_pw());
			pst.setString(3, d_loginDTO.getD_name());
			pst.setString(4, d_loginDTO.getD_div());

			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if (pst != null) {
					pst.close();
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

	public int Mix_insert1(c_joinCheckDTO c_joinCheckDTO) {

		try {
			getConneticon();

			pst = conn.prepareStatement("insert into login_check values(?,?,?,?)");
			pst.setString(1, c_joinCheckDTO.getC_id());
			pst.setString(2, c_joinCheckDTO.getC_pw());
			pst.setString(3, c_joinCheckDTO.getC_name());
			pst.setString(4, c_joinCheckDTO.getC_div());

			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pst != null) {
					pst.close();
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

	public int Client_PwReset(String d_id, String pw2_reset) {

		try {
			getConneticon();

			pst = conn.prepareStatement("update login_check set l_pw=? where l_id=?");
			pst.setString(1, pw2_reset);
			pst.setString(2, d_id);

			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pst != null) {
					pst.close();
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

	public int Client_Modify(d_loginDTO d_loginDTO) {
		int result = 0;
		try {
			getConneticon();

			pst = conn.prepareStatement("update login_check set l_pw=? where l_id=?");

			pst.setString(1, d_loginDTO.getD_pw());
			pst.setString(2, d_loginDTO.getD_id());

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int C_update(c_joinCheckDTO c_joinCheckDTO) {
		int result = -1;
		try {
			getConneticon();

			pst = conn.prepareStatement(
					"update c_login set c_pw1=?, c_name=?, c_position=?, c_depart=?,c_companyName=?, c_phone=?, c_fax=?, c_email=? where c_id=?");

			pst.setString(1, c_joinCheckDTO.getC_pw());
			pst.setString(2, c_joinCheckDTO.getC_name());
			pst.setString(3, c_joinCheckDTO.getC_position());
			pst.setString(4, c_joinCheckDTO.getC_depart());
			pst.setString(5, c_joinCheckDTO.getC_companyName());
			pst.setInt(6, c_joinCheckDTO.getC_phone());
			pst.setInt(7, c_joinCheckDTO.getC_fax());
			pst.setString(8, c_joinCheckDTO.getC_email());
			pst.setString(9, c_joinCheckDTO.getC_id());

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int Client_Modify1(c_joinCheckDTO c_joinCheckDTO) {
		int result = 0;
		try {
			getConneticon();

			pst = conn.prepareStatement("update login_check set l_pw=? where l_id=?");

			pst.setString(1, c_joinCheckDTO.getC_pw());
			pst.setString(2, c_joinCheckDTO.getC_id());

			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public String div_Select(String id) {
		String div = "";
		try {
			getConneticon();

			pst = conn.prepareStatement("select l_div from login_check where l_id=?");
			pst.setString(1, id);

			rs = pst.executeQuery();

			if (rs.next()) {
				div = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return div;
	}

	public c_joinCheckDTO c_select(String id) {
		c_joinCheckDTO dto = null;
		try {
			getConneticon();

			pst = conn.prepareStatement("select * from c_login where c_id=?");
			pst.setString(1, id);
			rs = pst.executeQuery();

			if (rs.next()) {
				dto = new c_joinCheckDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9),
						rs.getString(10));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (conn != null)
					conn.close();
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dto;
	}

	public String Admin_login(String id) {
		String name = null;
		try {
			getConneticon();
			pst = conn.prepareStatement("select a_name from Admin_login where a_id=?");
			pst.setString(1, id);

			rs = pst.executeQuery();
			if (rs.next()) {
				name = rs.getString(1);
			}

		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pst != null)
					pst.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return name;
	}

}
