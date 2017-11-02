package Draft;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DesignAgentDAO {
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

	public int insertPostDB(PostDTO post) {
		int cnt = 0;

		try {
			getConnection();

			String sql = "insert into post(p_num, title, photo_url, id, sort, category, comments) values(p_num.nextval, ?, ?, ?, ?, ?, ?)";
			pst = conn.prepareStatement(sql);
			pst.setString(1, post.getTitle());
			pst.setString(2, post.getPhoto_url());
			pst.setString(3, post.getId());
			pst.setString(4, post.getSort());
			pst.setString(5, post.getCategory());
			pst.setString(6, post.getComments());

			cnt = pst.executeUpdate();
		} catch (NamingException e1) {
			e1.printStackTrace();
		} catch (SQLException e) {
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

	public int getTotalSize(String sort, String category) {
		int totalSize = 1;

		try {
			getConnection();

			if (category == null) {
				sql = "select count(*) from post where sort = ?";
				pst = conn.prepareStatement(sql);
				pst.setString(1, sort);
				rs = pst.executeQuery();
			} else {
				sql = "select count(*) from post where sort = ? and category = ?";
				pst = conn.prepareStatement(sql);
				pst.setString(1, sort);
				pst.setString(2, category);
				rs = pst.executeQuery();
			}

			while (rs.next()) {
				totalSize = rs.getInt(1);
			}
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return totalSize;
	}

	public ArrayList<PostDTO> selectDraft(String sort, int nowPage, String division) {
		ArrayList<PostDTO> draftList = new ArrayList<PostDTO>();

		try {
			getConnection();

			if (division.equals("newest"))
				sql = "select p_num, photo_url, id from (select rownum r, temp.* from (select p_num, photo_url, id from post where sort = ? and approval = 1 order by upload_date desc)temp) temp2 where temp2.r between (?-1)*12+1 and ?*12";
			else if (division.equals("popularity"))
				sql = "select p_num, photo_url, id from (select rownum r, temp.* from (select p_num, photo_url, id from post where sort = ? and approval = 1 order by heart_num desc)temp) temp2 where temp2.r between (?-1)*12+1 and ?*12";

			pst = conn.prepareStatement(sql);
			pst.setString(1, sort);
			pst.setInt(2, nowPage);
			pst.setInt(3, nowPage);
			rs = pst.executeQuery();

			while (rs.next()) {
				PostDTO dto = new PostDTO(rs.getInt(1), rs.getString(2), rs.getString(3));
				draftList.add(dto);
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

		return draftList;
	}

	public PostDTO selectOne(int p_num) {
		PostDTO draft_info = null;
		try {
			getConnection();

			String sql = "select * from post where p_num = ?";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, p_num);

			rs = pst.executeQuery();

			if (rs.next()) {
				draft_info = new PostDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9),
						rs.getInt(10));
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

		return draft_info;
	}

	public ArrayList<PostDTO> selectBest(String sort) {
		ArrayList<PostDTO> bestList = new ArrayList<PostDTO>();

		try {
			getConnection();

			sql = "select temp2.p_num, photo_url, id from (select rownum r, temp.p_num, photo_url, id from(select p_num, photo_url, id from post where sort = ? and approval = 1 order by heart_num desc)temp)temp2 where temp2.r <= 3";
			pst = conn.prepareStatement(sql);
			pst.setString(1, sort);
			rs = pst.executeQuery();

			while (rs.next()) {
				PostDTO dto = new PostDTO(rs.getInt(1), rs.getString(2), rs.getString(3));
				bestList.add(dto);
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

		return bestList;
	}

	public ArrayList<PostDTO> selectMain() {
		ArrayList<PostDTO> mainList = new ArrayList<>();

		try {
			getConnection();

			sql = "select temp2.p_num, photo_url, id from (select rownum r, temp.p_num, photo_url, id from (select p_num, photo_url, id from post where approval = 1 order by heart_num desc)temp)temp2 where temp2.r <= 9";
			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			while (rs.next()) {
				PostDTO dto = new PostDTO(rs.getInt(1), rs.getString(2), rs.getString(3));
				mainList.add(dto);
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

		return mainList;
	}

	public ArrayList<PostDTO> selectMy(String id, int myNowPage) {
		ArrayList<PostDTO> myList = new ArrayList<>();
		try {
			getConnection();

			sql = "select p_num, photo_url from (select rownum r, temp.* from (select p_num, photo_url from post where id = ? order by upload_date desc)temp) temp2 where temp2.r between (?-1)*8+1 and ?*8";
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setInt(2, myNowPage);
			pst.setInt(3, myNowPage);
			rs = pst.executeQuery();

			while (rs.next()) {
				PostDTO dto = new PostDTO(rs.getInt(1), rs.getString(2));
				myList.add(dto);
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

		return myList;
	}

	public ArrayList<PostDTO> selectCategory(String sort, String category, int nowPage) {
		ArrayList<PostDTO> draftList = new ArrayList<>();

		try {
			getConnection();

			sql = "select p_num, photo_url, id from (select rownum r, post.p_num, photo_url, id from post where sort = ? and category = ? and approval = 1)temp where temp.r between (?-1)*12+1 and ?*12";
			pst = conn.prepareStatement(sql);
			pst.setString(1, sort);
			pst.setString(2, category);
			pst.setInt(3, nowPage);
			pst.setInt(4, nowPage);

			rs = pst.executeQuery();

			while (rs.next()) {
				PostDTO dto = new PostDTO(rs.getInt(1), rs.getString(2), rs.getString(3));
				draftList.add(dto);
			}
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return draftList;
	}

	public int updateHeart(int p_num, int chk) {
		int cnt = 0;

		try {
			getConnection();

			if (chk == 0)
				sql = "update post set heart_num=(heart_num-1) where p_num=?";
			else if (chk == 1)
				sql = "update post set heart_num=(heart_num+1) where p_num=?";

			pst = conn.prepareStatement(sql);
			pst.setInt(1, p_num);

			cnt = pst.executeUpdate();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pst != null)
					pst.close();
				if (conn != null)
					pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return cnt;
	}

	public int insertHeartDB(String id, int p_num) {
		int cnt = 0;

		try {
			getConnection();

			sql = "insert into heart values(h_num.nextval, ?, ?)";
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setInt(2, p_num);

			cnt = pst.executeUpdate();

		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
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

	public int deleteHeartDB(String id, int p_num) {
		int cnt = 0;

		try {
			getConnection();

			sql = "delete from heart where id=? and p_num=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setInt(2, p_num);

			cnt = pst.executeUpdate();

		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
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

	public int getMyTotalSize(String id) {
		int total = 0;

		try {
			getConnection();

			sql = "select count(*) from post where id = ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);

			rs = pst.executeQuery();

			while (rs.next()) {
				total = rs.getInt(1);
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

		return total;
	}

	public ArrayList<Integer> heartCheck(String id) {
		ArrayList<Integer> heart = new ArrayList<>();

		try {
			getConnection();

			sql = "select p_num from heart where id = ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);

			rs = pst.executeQuery();
			if (heart != null) {
				while (rs.next()) {
					heart.add(rs.getInt(1));
				}
			} else {
				heart.add(0);
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

		return heart;
	}
}
