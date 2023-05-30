package com.multi.parsing;


import java.sql.Connection;
import java.sql.PreparedStatement;


public class AccommodationDao {
	
	
//	INSERT INTO CulturalEvent(cNo,codename,guname,title, date,place,orgName,useTrgt,useFee,
//			player,program,etcDesc,orgLink, mainImg,rgstDate,ticket,strtDate
//            ,endDate,themecode) VALUES(0,'1'); 
	
	
	public int insert(Connection conn, Accommodation accommodation) {
		try {
			String sql = "INSERT INTO Accommodation "
					+ "        (contentid, contenttypeid, homepage, tel, title,"
					+ "firstimage, firstimage2, areacode, sigungucode, cat1,"
					+ "cat2, cat3, addr1, addr2, zipcode,"
					+ "mapx, mapy, overview, mlevel, accomcountlodging,"
					+ "benikia, checkintime, checkouttime, chkcooking, foodplace,"
					+ "goodstay, hanok, infocenterlodging, parkinglodging, pickup, "
					+ "roomcount, reservationlodging, reservationurl, roomtype, scalelodging, "
					+ "subfacility, barbecue,beauty,beverage, bicycle, "
					+ "campfire, fitness,karaoke,publicbath, publicpc, "
					+ "sauna, seminar, sports, refundregulation) "
					+ "   VALUES(?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?) ";	
			
			
			PreparedStatement pstmt = conn.prepareStatement(sql);

			int cnt = 1;
			pstmt.setInt(cnt++, accommodation.contentid);
			pstmt.setString(cnt++, accommodation.contenttypeid);
			pstmt.setString(cnt++, accommodation.homepage);
			pstmt.setString(cnt++, accommodation.tel);
			pstmt.setString(cnt++, accommodation.title);
			pstmt.setString(cnt++, accommodation.firstimage);
			pstmt.setString(cnt++, accommodation.firstimage2);
			pstmt.setString(cnt++, accommodation.areacode);
			pstmt.setString(cnt++, accommodation.sigungucode);
			pstmt.setString(cnt++, accommodation.cat1);
			pstmt.setString(cnt++, accommodation.cat2);
			pstmt.setString(cnt++, accommodation.cat3);
			pstmt.setString(cnt++, accommodation.addr1);
			pstmt.setString(cnt++, accommodation.addr2);
			pstmt.setString(cnt++, accommodation.zipcode);
			pstmt.setString(cnt++, accommodation.mapx);
			pstmt.setString(cnt++, accommodation.mapy);
			pstmt.setString(cnt++, accommodation.overview);
			pstmt.setString(cnt++, accommodation.mlevel);
			pstmt.setString(cnt++, accommodation.accomcountlodging);
			pstmt.setString(cnt++, accommodation.benikia);
			pstmt.setString(cnt++, accommodation.checkintime);
			pstmt.setString(cnt++, accommodation.checkouttime);
			pstmt.setString(cnt++, accommodation.chkcooking);
			pstmt.setString(cnt++, accommodation.foodplace);
			pstmt.setString(cnt++, accommodation.goodstay);
			pstmt.setString(cnt++, accommodation.hanok);
			pstmt.setString(cnt++, accommodation.infocenterlodging);
			pstmt.setString(cnt++, accommodation.parkinglodging);
			pstmt.setString(cnt++, accommodation.pickup);
			pstmt.setString(cnt++, accommodation.roomcount);
			pstmt.setString(cnt++, accommodation.reservationlodging);
			pstmt.setString(cnt++, accommodation.reservationurl);
			pstmt.setString(cnt++, accommodation.roomtype);
			pstmt.setString(cnt++, accommodation.scalelodging);
			pstmt.setString(cnt++, accommodation.subfacility);
			pstmt.setString(cnt++, accommodation.barbecue);
			pstmt.setString(cnt++, accommodation.beauty);
			pstmt.setString(cnt++, accommodation.beverage);
			pstmt.setString(cnt++, accommodation.bicycle);
			pstmt.setString(cnt++, accommodation.campfire);
			pstmt.setString(cnt++, accommodation.fitness);
			pstmt.setString(cnt++, accommodation.karaoke);
			pstmt.setString(cnt++, accommodation.publicbath);
			pstmt.setString(cnt++, accommodation.publicpc);
			pstmt.setString(cnt++, accommodation.sauna);
			pstmt.setString(cnt++, accommodation.seminar);
			pstmt.setString(cnt++, accommodation.sports);
			pstmt.setString(cnt++, accommodation.refundregulation);
			int result = pstmt.executeUpdate();
			pstmt.close();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	
//	public List<CulturalEvent> selectAll(Connection conn) {
//		List<CulturalEvent> list = new ArrayList<>();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		try {
//			String sql = "SELECT * FROM WEEKLY_BOXOFFICE ORDER BY YEARWEEKTIME, BOXOFFICE_RANK";
//			pstmt = conn.prepareStatement(sql);
//			rs = pstmt.executeQuery();
//
//			while (rs.next()) {
//				int count = 1;
//				int bNo = rs.getInt(count++);
//				int rnum = rs.getInt(count++);
//				int rank = rs.getInt(count++);
//				int rankInten = rs.getInt(count++);
//				String rankOldandnew = rs.getString(count++);
//				String moviecd = rs.getString(count++);
//				String movienm = rs.getString(count++);
//				LocalDate opendt = rs.getDate(count++).toLocalDate();
//				long salesamt = rs.getLong(count++);
//				double salesshare = rs.getDouble(count++);
//				long salesinten = rs.getLong(count++);
//				double saleschange = rs.getDouble(count++);
//				long salesacc = rs.getLong(count++);
//				long audicnt = rs.getLong(count++);
//				long audiinten = rs.getLong(count++);
//				double audichange = rs.getDouble(count++);
//				long audiacc = rs.getLong(count++);
//				long scrncnt = rs.getLong(count++);
//				long showcnt = rs.getLong(count++);
//				String boxofficeType = rs.getString(count++);
//				String showrange = rs.getString(count++);
//				String yearweektime = rs.getString(count++);
//
//				Boxoffice info = new Boxoffice(bNo, rnum, rank, rankInten, rankOldandnew, moviecd, movienm, opendt,
//						salesamt, salesshare, salesinten, saleschange, salesacc, audicnt, audiinten, audichange,
//						audiacc, scrncnt, showcnt, boxofficeType, showrange, yearweektime);
//				list.add(info);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			close(pstmt);
//			close(rs);
//		}
//		return list;
//	}

//	public Boxoffice selectOne(Connection conn, int bNo) {
//		Boxoffice info = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		try {
//			String sql = "SELECT * FROM WEEKLY_BOXOFFICE WHERE bNo = ?";
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, bNo);
//			rs = pstmt.executeQuery();
//
//			while (rs.next()) {
//				int count = 1;
//				int bNo2 = rs.getInt(count++);
//				int rnum = rs.getInt(count++);
//				int rank = rs.getInt(count++);
//				int rankInten = rs.getInt(count++);
//				String rankOldandnew = rs.getString(count++);
//				String moviecd = rs.getString(count++);
//				String movienm = rs.getString(count++);
//				LocalDate opendt = rs.getDate(count++).toLocalDate();
//				long salesamt = rs.getLong(count++);
//				double salesshare = rs.getDouble(count++);
//				long salesinten = rs.getLong(count++);
//				double saleschange = rs.getDouble(count++);
//				long salesacc = rs.getLong(count++);
//				long audicnt = rs.getLong(count++);
//				long audiinten = rs.getLong(count++);
//				double audichange = rs.getDouble(count++);
//				long audiacc = rs.getLong(count++);
//				long scrncnt = rs.getLong(count++);
//				long showcnt = rs.getLong(count++);
//				String boxofficeType = rs.getString(count++);
//				String showrange = rs.getString(count++);
//				String yearweektime = rs.getString(count++);
//
//				info = new Boxoffice(bNo2, rnum, rank, rankInten, rankOldandnew, moviecd, movienm, opendt, salesamt,
//						salesshare, salesinten, saleschange, salesacc, audicnt, audiinten, audichange, audiacc, scrncnt,
//						showcnt, boxofficeType, showrange, yearweektime);
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			close(pstmt);
//			close(rs);
//		}
//		return info;
//	}
//
//	public List<Boxoffice> selectByMvName(Connection conn, String movieName) {
//		List<Boxoffice> list = new ArrayList<>();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		try {
//			String sql = "SELECT * FROM WEEKLY_BOXOFFICE WHERE movieNm LIKE ?";
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, "%" + movieName + "%");
//			rs = pstmt.executeQuery();
//
//			while (rs.next()) {
//				int count = 1;
//				int bNo = rs.getInt(count++);
//				int rnum = rs.getInt(count++);
//				int rank = rs.getInt(count++);
//				int rankInten = rs.getInt(count++);
//				String rankOldandnew = rs.getString(count++);
//				String moviecd = rs.getString(count++);
//				String movienm = rs.getString(count++);
//				LocalDate opendt = rs.getDate(count++).toLocalDate();
//				long salesamt = rs.getLong(count++);
//				double salesshare = rs.getDouble(count++);
//				long salesinten = rs.getLong(count++);
//				double saleschange = rs.getDouble(count++);
//				long salesacc = rs.getLong(count++);
//				long audicnt = rs.getLong(count++);
//				long audiinten = rs.getLong(count++);
//				double audichange = rs.getDouble(count++);
//				long audiacc = rs.getLong(count++);
//				long scrncnt = rs.getLong(count++);
//				long showcnt = rs.getLong(count++);
//				String boxofficeType = rs.getString(count++);
//				String showrange = rs.getString(count++);
//				String yearweektime = rs.getString(count++);
//
//				Boxoffice info = new Boxoffice(bNo, rnum, rank, rankInten, rankOldandnew, moviecd, movienm, opendt,
//						salesamt, salesshare, salesinten, saleschange, salesacc, audicnt, audiinten, audichange,
//						audiacc, scrncnt, showcnt, boxofficeType, showrange, yearweektime);
//				list.add(info);
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			close(pstmt);
//			close(rs);
//		}
//		return list;
//	}
//
//	public List<Boxoffice> selectByYearweekTime(Connection conn, String yearweekTime) {
//		List<Boxoffice> list = new ArrayList<>();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		try {
//			String sql = "SELECT * FROM WEEKLY_BOXOFFICE WHERE YEARWEEKTIME = ?";
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, yearweekTime);
//			rs = pstmt.executeQuery();
//
//			while (rs.next()) {
//				int count = 1;
//				int bNo = rs.getInt(count++);
//				int rnum = rs.getInt(count++);
//				int rank = rs.getInt(count++);
//				int rankInten = rs.getInt(count++);
//				String rankOldandnew = rs.getString(count++);
//				String moviecd = rs.getString(count++);
//				String movienm = rs.getString(count++);
//				LocalDate opendt = rs.getDate(count++).toLocalDate();
//				long salesamt = rs.getLong(count++);
//				double salesshare = rs.getDouble(count++);
//				long salesinten = rs.getLong(count++);
//				double saleschange = rs.getDouble(count++);
//				long salesacc = rs.getLong(count++);
//				long audicnt = rs.getLong(count++);
//				long audiinten = rs.getLong(count++);
//				double audichange = rs.getDouble(count++);
//				long audiacc = rs.getLong(count++);
//				long scrncnt = rs.getLong(count++);
//				long showcnt = rs.getLong(count++);
//				String boxofficeType = rs.getString(count++);
//				String showrange = rs.getString(count++);
//				String yearweektime = rs.getString(count++);
//
//				Boxoffice info = new Boxoffice(bNo, rnum, rank, rankInten, rankOldandnew, moviecd, movienm, opendt,
//						salesamt, salesshare, salesinten, saleschange, salesacc, audicnt, audiinten, audichange,
//						audiacc, scrncnt, showcnt, boxofficeType, showrange, yearweektime);
//				list.add(info);
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			close(pstmt);
//			close(rs);
//		}
//		return list;
//	}

	
//	public static void main(String[] args) throws SQLException {
//		Connection conn = JDBCTemplate.openConnection();
//		List<Boxoffice> list = new CulturalEventDao().selectAll(conn);
//		for (Boxoffice info : list) {
//			System.out.println(info);
//		}
//		LocalDate date = LocalDate.now();
//		Boxoffice info = new Boxoffice(10, 2, 2, 0, "OLD", "20112207", "미션임파서블:고스트프로토콜2", date, 7840509500L, 35.8,
//				-1706758500, -17.9, 40541108500L, 1007683, -234848, -18.9, 5328435, 697, 9677, "주말 박스오피스",
//				"20111230~20120101", "201152");
//		int result = new CulturalEventDao().insert(conn, info);
//		conn.commit();
//		System.out.println(result);
//		list = new CulturalEventDao().selectAll(conn);
//		for (Boxoffice info2 : list) {
//			System.out.println(info2);
//		}
//	}
}
