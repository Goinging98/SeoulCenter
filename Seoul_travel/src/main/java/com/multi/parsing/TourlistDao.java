package com.multi.parsing;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class TourlistDao {
	
	
	public int insert(Connection conn, Tourlist tourlist) {
		try {
			String sql = "INSERT INTO tourlist"
					+ "(contentid, contenttypeid, homepage, tel, title,"
					+ "firstimage, firstimage2, areacode, sigungucode, cat1,"
					+ "cat2, cat3, addr1, addr2, zipcode,"
					+ "mapx, mapy, overview, mlevel, accomcount,"
					+ "chkbabycarriage, chkcreditcard, chkpet, expagerange, expguide,"
					+ "heritage1, heritage2, heritage3, infocenter, opendate,"
					+ "parking, restdate, useseason, usetime)"
					+ " VALUE(?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?,?"
					+ "			,?,?,?,?)";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			int cnt = 1;
			pstmt.setInt(cnt++, tourlist.contentid);
			pstmt.setString(cnt++, tourlist.contenttypeid);
			pstmt.setString(cnt++, tourlist.homepage);
			pstmt.setString(cnt++, tourlist.tel);
			pstmt.setString(cnt++, tourlist.title);
			pstmt.setString(cnt++, tourlist.firstimage);
			pstmt.setString(cnt++, tourlist.firstimage2);
			pstmt.setString(cnt++, tourlist.areacode);
			pstmt.setString(cnt++, tourlist.sigungucode);
			pstmt.setString(cnt++, tourlist.cat1);
			pstmt.setString(cnt++, tourlist.cat2);
			pstmt.setString(cnt++, tourlist.cat3);
			pstmt.setString(cnt++, tourlist.addr1);
			pstmt.setString(cnt++, tourlist.addr2);
			pstmt.setString(cnt++, tourlist.zipcode);
			pstmt.setString(cnt++, tourlist.mapx);
			pstmt.setString(cnt++, tourlist.mapy);
			pstmt.setString(cnt++, tourlist.overview);
			pstmt.setString(cnt++, tourlist.mlevel);
			pstmt.setString(cnt++, tourlist.accomcount);		
			pstmt.setString(cnt++, tourlist.chkbabycarriage);
			pstmt.setString(cnt++, tourlist.chkcreditcard);	
			pstmt.setString(cnt++, tourlist.chkpet);			
			pstmt.setString(cnt++, tourlist.expagerange);		
			pstmt.setString(cnt++, tourlist.expguide);			
			pstmt.setString(cnt++, tourlist.heritage1);		
			pstmt.setString(cnt++, tourlist.heritage2);		
			pstmt.setString(cnt++, tourlist.heritage3);		
			pstmt.setString(cnt++, tourlist.infocenter);		
			pstmt.setString(cnt++, tourlist.opendate);			
			pstmt.setString(cnt++, tourlist.parking);			
			pstmt.setString(cnt++, tourlist.restdate);			
			pstmt.setString(cnt++, tourlist.useseason);		
			pstmt.setString(cnt++, tourlist.usetime);			
			int result = pstmt.executeUpdate();
			pstmt.close();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
