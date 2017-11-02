package Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class AdminDAO {
	private Connection conn;
	private PreparedStatement pst;
	private Context initContext;
	private ResultSet rs;
	private String sql;

	private void getConnection() throws NamingException, SQLException {
		initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
	}

	public ArrayList<Admin_dDTO> AdminSelect() {
		ArrayList<Admin_dDTO> d_list = new ArrayList<>();

		try {
			getConnection();
			sql = "select rownum r, d_login.d_id, d_name, d_email, d_phone from d_login";
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				Admin_dDTO dto = new Admin_dDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5));
				d_list.add(dto);

				System.out.println(d_list.size());
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

		return d_list;
	}

	public int DesignerDelete(String d_id) {
		int cnt = 0;
		try {
			getConnection();

			sql = "delete from d_login where d_id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, d_id);
			cnt = pst.executeUpdate();

			sql = "delete from login_check where l_id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, d_id);
			cnt = pst.executeUpdate();

		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
		return cnt;
	}

	public ArrayList<Admin_cDTO> SelectManuFacture() {
		ArrayList<Admin_cDTO> c_list = new ArrayList<>();

		try {
			getConnection();
			sql = "select rownum r, c_login.c_companyName,c_id, c_name, c_depart, c_fax from c_login";
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				Admin_cDTO dto = new Admin_cDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getInt(6));
				c_list.add(dto);

				System.out.println(c_list.size());
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

		return c_list;
	}

	public int ManuFactureDelete(String c_id) {
		int cnt = 0;
		try {
			getConnection();

			sql = "delete c_login where c_id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, c_id);
			pst.executeUpdate();

			System.out.println(c_id);

			sql = "delete login_check where l_id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, c_id);
			cnt = pst.executeUpdate();
			System.out.println(cnt);

		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
		return cnt;
	}

	public ArrayList<Admin_cDTO> ManuFactureSelect() {

		ArrayList<Admin_cDTO> c_list = new ArrayList<>();

		try {
			getConnection();
			sql = "select rownum r, c_login.c_companyName,c_id, c_name, c_depart, c_fax from c_login";
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				Admin_cDTO dto = new Admin_cDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getInt(6));
				c_list.add(dto);

				System.out.println(c_list.size());
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

		return c_list;
	}

	public ArrayList<AdminQADTO> QaSelect() {
		ArrayList<AdminQADTO> list = new ArrayList<>();
		AdminQADTO dto;

		try {
			getConnection();
			sql = "select QnA.q_num,q_writer,q_title,q_content,TO_CHAR(q_date,'yyyy-mm-dd'), q_re from QnA";
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				dto = new AdminQADTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6));
				list.add(dto);
			}

		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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

		return list;
	}

	public int UpdateRe() {
		
		return 0;
	}

	public int UpdateRe(AdminQADTO adminQADTO) {
		int cnt = 0;
		try {
			getConnection();
			sql = "update QnA set q_re=? where q_num=? ";
			pst = conn.prepareStatement(sql);
			pst.setString(1,adminQADTO.getQ_re());
			pst.setInt(2,adminQADTO.getQ_num());
			cnt = pst.executeUpdate();
			
			
			
			
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
		
		
		return cnt;
	}

	public ArrayList<AdminPostDTO> getAllPost() {
		ArrayList<AdminPostDTO> list = new ArrayList<>();
		
		
		try {
			getConnection();
			sql = "select * from post";
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()){
				list.add(new AdminPostDTO(rs.getInt(1),rs.getString(2),
						rs.getString(3),rs.getString(4),
							rs.getString(5),rs.getString(6),rs.getString(7),
									rs.getString(8),rs.getInt(9),rs.getInt(10)));
						}
		} catch (NamingException e) {
	
			e.printStackTrace();
		} catch (SQLException e) {
	
			e.printStackTrace();
		}finally {
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
		
		
		return list;
	}

	public void ApprovalUpdate(int p_num) {
		try {
			getConnection();
			sql = "update post set approval=1 where p_num=?  ";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, p_num);
			pst.executeUpdate();
			
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
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
		
		
	}
}
