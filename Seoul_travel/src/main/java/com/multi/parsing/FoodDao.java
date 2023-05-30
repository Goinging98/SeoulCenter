package com.multi.parsing;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class FoodDao {
	public int insert(Connection conn, Food food) {
		/*
		 * chkcreditcardfood, discountinfofood, firstmenu, infocenterfood, kidsfacility,
		 * opendatefood, opentimefood, packing, parkingfood, reservationfood,
		 * restdatefood, scalefood, seat, smoking, treatmenu, lcnsno,
		 */

		try {
			String sql = "INSERT INTO Food " 
					+ "        (contentid, contenttypeid, homepage, tel, title,"
					+ "firstimage, firstimage2, areacode, sigungucode, cat1," 
					+ "cat2, cat3, addr1, addr2, zipcode,"
					+ "mapx, mapy, overview, mlevel, chkcreditcardfood,"
					+ "discountinfofood, firstmenu, infocenterfood, kidsfacility, opendatefood,"
					+ "opentimefood, packing, parkingfood, reservationfood, restdatefood, "
					+ "scalefood, seat, smoking, treatmenu, lcnsno) " 
					+ "   VALUES(?,?,?,?,?" 
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?" 
					+ "			 ,?,?,?,?,?" 
					+ "			 ,?,?,?,?,?"
					+ "			 ,?,?,?,?,?" 
					+ "			 ,?,?,?,?,?) ";

			PreparedStatement pstmt = conn.prepareStatement(sql);

			int cnt = 1;
			pstmt.setInt(cnt++, food.contentid);
			pstmt.setString(cnt++, food.contenttypeid);
			pstmt.setString(cnt++, food.homepage);
			pstmt.setString(cnt++, food.tel);
			pstmt.setString(cnt++, food.title);
			pstmt.setString(cnt++, food.firstimage);
			pstmt.setString(cnt++, food.firstimage2);
			pstmt.setString(cnt++, food.areacode);
			pstmt.setString(cnt++, food.sigungucode);
			pstmt.setString(cnt++, food.cat1);
			pstmt.setString(cnt++, food.cat2);
			pstmt.setString(cnt++, food.cat3);
			pstmt.setString(cnt++, food.addr1);
			pstmt.setString(cnt++, food.addr2);
			pstmt.setString(cnt++, food.zipcode);
			pstmt.setString(cnt++, food.mapx);
			pstmt.setString(cnt++, food.mapy);
			pstmt.setString(cnt++, food.overview);
			pstmt.setString(cnt++, food.mlevel);
			pstmt.setString(cnt++, food.chkcreditcardfood);
			pstmt.setString(cnt++, food.discountinfofood);
			pstmt.setString(cnt++, food.firstmenu);
			pstmt.setString(cnt++, food.infocenterfood);
			pstmt.setString(cnt++, food.kidsfacility);
			pstmt.setString(cnt++, food.opendatefood);
			pstmt.setString(cnt++, food.opentimefood);
			pstmt.setString(cnt++, food.packing);
			pstmt.setString(cnt++, food.parkingfood);
			pstmt.setString(cnt++, food.reservationfood);
			pstmt.setString(cnt++, food.restdatefood);
			pstmt.setString(cnt++, food.scalefood);
			pstmt.setString(cnt++, food.seat);
			pstmt.setString(cnt++, food.smoking);
			pstmt.setString(cnt++, food.treatmenu);
			pstmt.setString(cnt++, food.lcnsno);

			int result = pstmt.executeUpdate();
			pstmt.close();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;

	}
}