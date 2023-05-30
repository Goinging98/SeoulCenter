package com.multi.parsing;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RunMain {
	public static void main(String[] args) throws SQLException {
		Connection conn = JDBCTemplate.openConnection();

		// 숙박 정보 파싱
		List<TourVO> list = AreaParsing.areaBasedListStep1("areaBasedList1", 1, 1, 32);
		List<Accommodation> aList = new ArrayList<>();
		List<TourImageVO> imageList = new ArrayList<>();
		for (int i = 0; i < list.size(); i++) {
			AreaParsing.detailCommonStep2(list.get(i));
			Accommodation accommodation = AreaParsing.detailAccomodationStep3(list.get(i));
			if (accommodation != null) {
				aList.add(accommodation);
			}
			System.out.println(accommodation);
			System.out.println();
			List<TourImageVO> imageList2 = AreaParsing.detailCommonImageStep3(list.get(i).getContentid());
			imageList.addAll(imageList2);
		}
//		for(TourImageVO item : imageList) {
//			System.out.println(item);
//		}

		AccommodationDao dao = new AccommodationDao();
		for (Accommodation a : aList) {
			dao.insert(conn, a);
		}

		// 관광지 정보 파싱
		List<TourVO> list2 = AreaParsing.areaBasedListStep1("areaBasedList1", 1, 1, 12);
		List<Tourlist> tList = new ArrayList<>();
		List<TourImageVO> imageList3 = new ArrayList<>();
		for (int i = 0; i < list2.size(); i++) {
			AreaParsing.detailCommonStep2(list2.get(i));
			Tourlist tourlist = AreaParsing.detailTourlistStep3(list2.get(i));
			if (tourlist != null) {
				tList.add(tourlist);
			}
			System.out.println(tourlist);
			System.out.println();
			List<TourImageVO> imageList4 = AreaParsing.detailCommonImageStep3(list.get(i).getContentid());
			imageList.addAll(imageList4);
		}

		TourlistDao tDao = new TourlistDao();
		for (Tourlist a : tList) {
			tDao.insert(conn, a);
		}

		// 문화시설 정보 파싱
		List<TourVO> list3 = AreaParsing.areaBasedListStep1("areaBasedList1", 1, 1, 14);
		List<CultureContent> cList = new ArrayList<>();
		List<TourImageVO> imageList5 = new ArrayList<>();
		for (int i = 0; i < list3.size(); i++) {
			AreaParsing.detailCommonStep2(list3.get(i));
			CultureContent cultureContent = AreaParsing.detailCultureContentStep3(list3.get(i));
			if (cultureContent != null) {
				cList.add(cultureContent);
			}
			System.out.println(cultureContent);
			System.out.println();
			List<TourImageVO> imageList6 = AreaParsing.detailCommonImageStep3(list.get(i).getContentid());
			imageList.addAll(imageList6);
		}

		CultureContentDao cDao = new CultureContentDao();
		for (CultureContent a : cList) {
			cDao.insert(conn, a);
		}

		// 음식점 정보 파싱
		List<TourVO> list4 = AreaParsing.areaBasedListStep1("areaBasedList1", 1, 1, 39);
		List<Food> aList2 = new ArrayList<>();
		List<TourImageVO> imageList7 = new ArrayList<>();
		for (int i = 0; i < list4.size(); i++) {
			AreaParsing.detailCommonStep2(list4.get(i));
			Food food = AreaParsing.detailFoodStep3(list4.get(i));
			if (food != null) {
				aList2.add(food);
			}
			System.out.println(food);
			System.out.println();
			List<TourImageVO> imageList8 = AreaParsing.detailCommonImageStep3(list2.get(i).getContentid());
			imageList3.addAll(imageList8);
		}
		FoodDao dao2 = new FoodDao();
		for (Food b : aList2) {
			dao2.insert(conn, b);
		}

		// 행사 정보 파싱
		List<TourVO> list5 = AreaParsing.areaBasedListStep1("areaBasedList1", 1, 1, 15);
		List<Festival> aList3 = new ArrayList<>();
		List<TourImageVO> imageList9 = new ArrayList<>();
		for (int i = 0; i < list5.size(); i++) {
			AreaParsing.detailCommonStep2(list5.get(i));
			Festival festival = AreaParsing.detailFestivalStep3(list5.get(i));
			if (festival != null) {
				aList3.add(festival);
			}
			System.out.println(festival);
			System.out.println();
			List<TourImageVO> imageList10 = AreaParsing.detailCommonImageStep3(list3.get(i).getContentid());
			imageList5.addAll(imageList10);
		}
		
		FestivalDao dao3 = new FestivalDao();
		for (Festival c : aList3) {
			dao3.insert(conn, c);
		}

		conn.commit();

	}
}
