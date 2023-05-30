package com.multi.parsing;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class FestivalDao {

	public int insert(Connection conn, Festival festival) {
		try {
			String sql = "INSERT INTO Festival " + "        (contentid, contenttypeid, homepage, tel, title,"
					+ "firstimage, firstimage2, areacode, sigungucode, cat1," + "cat2, cat3, addr1, addr2, zipcode,"
					+ "mapx, mapy, overview, mlevel, agelimit,"
					+ "bookingplace,discountinfofestival,eventenddate,eventhomepage,eventplace,"
					+ "eventstartdate,festivalgrade,placeinfo,playtime,program, "
					+ "spendtimefestival,sponsor1,sponsor1tel,sponsor2,sponsor2tel, " + "subevent,usetimefestival) "
					+ "   VALUES(?,?,?,?,?" + "			 ,?,?,?,?,?" + "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?" + "			 ,?,?,?,?,?" + "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?" + "			 ,?,?) ";

			PreparedStatement pstmt = conn.prepareStatement(sql);

			int cnt = 1;
			pstmt.setInt(cnt++, festival.contentid);
			pstmt.setString(cnt++, festival.contenttypeid);
			pstmt.setString(cnt++, festival.homepage);
			pstmt.setString(cnt++, festival.tel);
			pstmt.setString(cnt++, festival.title);
			pstmt.setString(cnt++, festival.firstimage);
			pstmt.setString(cnt++, festival.firstimage2);
			pstmt.setString(cnt++, festival.areacode);
			pstmt.setString(cnt++, festival.sigungucode);
			pstmt.setString(cnt++, festival.cat1);
			pstmt.setString(cnt++, festival.cat2);
			pstmt.setString(cnt++, festival.cat3);
			pstmt.setString(cnt++, festival.addr1);
			pstmt.setString(cnt++, festival.addr2);
			pstmt.setString(cnt++, festival.zipcode);
			pstmt.setString(cnt++, festival.mapx);
			pstmt.setString(cnt++, festival.mapy);
			pstmt.setString(cnt++, festival.overview);
			pstmt.setString(cnt++, festival.mlevel);
			pstmt.setString(cnt++, festival.agelimit);
			pstmt.setString(cnt++, festival.bookingplace);
			pstmt.setString(cnt++, festival.discountinfofestival);
			pstmt.setString(cnt++, festival.eventenddate);
			pstmt.setString(cnt++, festival.eventhomepage);
			pstmt.setString(cnt++, festival.eventplace);
			pstmt.setString(cnt++, festival.eventstartdate);
			pstmt.setString(cnt++, festival.festivalgrade);
			pstmt.setString(cnt++, festival.placeinfo);
			pstmt.setString(cnt++, festival.playtime);
			pstmt.setString(cnt++, festival.program);
			pstmt.setString(cnt++, festival.spendtimefestival);
			pstmt.setString(cnt++, festival.sponsor1);
			pstmt.setString(cnt++, festival.sponsor1tel);
			pstmt.setString(cnt++, festival.sponsor2);
			pstmt.setString(cnt++, festival.sponsor2tel);
			pstmt.setString(cnt++, festival.subevent);
			pstmt.setString(cnt++, festival.usetimefestival);

			int result = pstmt.executeUpdate();
			pstmt.close();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
