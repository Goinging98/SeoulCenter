package com.multi.parsing;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CultureContentDao {
	
	public int insert(Connection conn, CultureContent cultureContent) {
		try {
			String sql = "INSERT INTO CultureContent"
					+ "        (contentid, contenttypeid, homepage, tel, title,"
					+ "firstimage, firstimage2, areacode, sigungucode, cat1,"
					+ "cat2, cat3, addr1, addr2, zipcode,"
					+ "mapx, mapy, overview, mlevel, accomcountculture,"
					+ "chkbabycarriageculture, chkcreditcardculture, chkpetculture, discountinfo, infocenterculture,"
					+ "parkingculture, parkingfee, restdateculture, usefee, usetimeculture,"
					+ "scale, spendtime)"
					+ "VALUE(?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?)";
			
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			int cnt = 1;
			pstmt.setInt(cnt++, cultureContent.contentid);
			pstmt.setString(cnt++, cultureContent.contenttypeid);
			pstmt.setString(cnt++, cultureContent.homepage);
			pstmt.setString(cnt++, cultureContent.tel);
			pstmt.setString(cnt++, cultureContent.title);
			pstmt.setString(cnt++, cultureContent.firstimage);
			pstmt.setString(cnt++, cultureContent.firstimage2);
			pstmt.setString(cnt++, cultureContent.areacode);
			pstmt.setString(cnt++, cultureContent.sigungucode);
			pstmt.setString(cnt++, cultureContent.cat1);
			pstmt.setString(cnt++, cultureContent.cat2);
			pstmt.setString(cnt++, cultureContent.cat3);
			pstmt.setString(cnt++, cultureContent.addr1);
			pstmt.setString(cnt++, cultureContent.addr2);
			pstmt.setString(cnt++, cultureContent.zipcode);
			pstmt.setString(cnt++, cultureContent.mapx);
			pstmt.setString(cnt++, cultureContent.mapy);
			pstmt.setString(cnt++, cultureContent.overview);
			pstmt.setString(cnt++, cultureContent.mlevel);
			pstmt.setString(cnt++, cultureContent.accomcountculture);
			pstmt.setString(cnt++, cultureContent.chkbabycarriageculture);
			pstmt.setString(cnt++, cultureContent.chkcreditcardculture);
			pstmt.setString(cnt++, cultureContent.chkpetculture);
			pstmt.setString(cnt++, cultureContent.discountinfo);
			pstmt.setString(cnt++, cultureContent.infocenterculture);
			pstmt.setString(cnt++, cultureContent.parkingculture);
			pstmt.setString(cnt++, cultureContent.parkingfee);
			pstmt.setString(cnt++, cultureContent.restdateculture);
			pstmt.setString(cnt++, cultureContent.usefee);
			pstmt.setString(cnt++, cultureContent.usetimeculture);
			pstmt.setString(cnt++, cultureContent.scale);
			pstmt.setString(cnt++, cultureContent.spendtime);
			int result = pstmt.executeUpdate();
			pstmt.close();
			return result;			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

}
