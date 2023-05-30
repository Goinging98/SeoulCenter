package com.multi.parsing;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class AreaParsing {
	public static final String KEY_ENCODING = "om3RTmlgU63mi%2BHOrOxuTwZLpEIQU2RmG%2FfrYXjjdn%2B6HDJpPqqJbEGvB8cu5niGGuDUK%2Fbp%2B28FfmI8eL34RA%3D%3D";
	public static final String KEY_DECODING = "om3RTmlgU63mi+HOrOxuTwZLpEIQU2RmG/frYXjjdn+6HDJpPqqJbEGvB8cu5niGGuDUK/bp+28FfmI8eL34RA==";
	public static final String URL = "http://apis.data.go.kr/B551011/KorService1/";

	

	public static List<TourVO> areaBasedListStep1(String targetData, int areaCode, int pageNo, int contentTypeId) {
		List<TourVO> list = new ArrayList<>();
		try {
			
			// areaBasedList - 지역기반 관광정보 조회 시작
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append(targetData);
			urlBuilder.append("?" + "serviceKey" + "=" + KEY_ENCODING);
			urlBuilder.append("&" + "numOfRows" + "=" + 300);
			urlBuilder.append("&" + "pageNo" + "=" + pageNo);
			urlBuilder.append("&" + "listYN" + "=" + "Y");
			urlBuilder.append("&" + "arrange" + "=" + "A");
			urlBuilder.append("&" + "contentTypeId" + "=" + contentTypeId);
			urlBuilder.append("&" + "MobileOS" + "=" + "ETC");
			urlBuilder.append("&" + "MobileApp" + "=" + "APPTest");
			urlBuilder.append("&" + "areaCode" + "=" + areaCode);
			urlBuilder.append("&" + "_type" + "=" + "json");
			System.out.println(urlBuilder);
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			System.out.println("Response code: " + conn.getResponseCode());
			if (conn.getResponseCode() < 200 || conn.getResponseCode() >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return null;
			}
			InputStream is = conn.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
			BufferedReader br = new BufferedReader(isr);
			JSONParser jsonParser = new JSONParser();
			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
			JSONObject childObj = (JSONObject) ((JSONObject) ((JSONObject) rootObj.get("response")).get("body"))
					.get("items");
			JSONArray array = (JSONArray) childObj.get("item");
			for (int i = 0; i < array.size(); i++) {
				TourVO tour = new TourVO();
				JSONObject obj = (JSONObject) array.get(i);
				int contentid = getIntData(obj, "contentid");
				String contenttypeid = getStrForJSON(obj, "contenttypeid");
				String title = getStrForJSON(obj, "title");
				String tel = getStrForJSON(obj, "tel");
				String firstimage = getStrForJSON(obj, "firstimage");
				String firstimage2 = getStrForJSON(obj, "firstimage2");
				String areacode = getStrForJSON(obj, "areacode");
				String sigungucode = getStrForJSON(obj, "sigungucode");
				String cat1 = getStrForJSON(obj, "cat1");
				String cat2 = getStrForJSON(obj, "cat2");
				String cat3 = getStrForJSON(obj, "cat3");
				String addr1 = getStrForJSON(obj, "addr1");
				String addr2 = getStrForJSON(obj, "addr2");
				String zipcode = getStrForJSON(obj, "zipcode");
				String mapx = getStrForJSON(obj, "mapx");
				String mapy = getStrForJSON(obj, "mapy");
				String mlevel = getStrForJSON(obj, "mlevel");
				tour = new TourVO(contentid, contenttypeid, null, tel, title, firstimage, firstimage2, areacode, sigungucode, cat1, cat2, cat3, addr1, addr2, zipcode, mapx, mapy, null, mlevel);
				list.add(tour);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public static void detailCommonStep2(TourVO tourVO) {
		try {
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("detailCommon1");
			urlBuilder.append("?" + "serviceKey" + "=" + KEY_ENCODING);
			urlBuilder.append("&" + "MobileOS" + "=" + "ETC");
			urlBuilder.append("&" + "MobileApp" + "=" + "APPTest");
			urlBuilder.append("&" + "contentId" + "=" + tourVO.getContentid());
			urlBuilder.append("&" + "defaultYN" + "=" + "Y");
			urlBuilder.append("&" + "overviewYN" + "=" + "Y");
			urlBuilder.append("&" + "_type" + "=" + "json");
			
			System.out.println(urlBuilder);

			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			System.out.println("Response code: " + conn.getResponseCode());
			if (conn.getResponseCode() < 200 || conn.getResponseCode() >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return;
			}
			InputStream is = conn.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
			BufferedReader br = new BufferedReader(isr);
			JSONParser jsonParser = new JSONParser();
			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
			JSONObject childObj = (JSONObject) ((JSONObject) ((JSONObject) rootObj.get("response")).get("body"))
					.get("items");

			JSONArray detailArray = (JSONArray) childObj.get("item");
			JSONObject obj = (JSONObject) detailArray.get(0);
			
			String homepage = getStrForJSON(obj, "homepage");
			String overview = getStrForJSON(obj, "overview");
			
			tourVO.setHomepage(homepage);
			tourVO.setOverview(overview);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public static Accommodation detailAccomodationStep3(TourVO tourVO) {
		try {
			Accommodation accommodation = null;
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("detailIntro1");
			urlBuilder.append("?" + "serviceKey" + "=" + KEY_ENCODING);
			urlBuilder.append("&" + "MobileOS" + "=" + "ETC");
			urlBuilder.append("&" + "MobileApp" + "=" + "APPTest");
			urlBuilder.append("&" + "contentId" + "=" + tourVO.getContentid());
			urlBuilder.append("&" + "contentTypeId" + "=" + tourVO.getContenttypeid());
			urlBuilder.append("&" + "_type" + "=" + "json");
			
			System.out.println("@@@@"+urlBuilder);

			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			System.out.println("Response code: " + conn.getResponseCode());
			if (conn.getResponseCode() < 200 || conn.getResponseCode() >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return accommodation;
			}
			InputStream is = conn.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
			BufferedReader br = new BufferedReader(isr);
//			StringBuffer sb = new StringBuffer();
//			String read = "";
//			while((read = br.readLine()) != null) {
//				sb.append(read);
//			}
			
//			String str = sb.toString();
//			str = str.replace("</a>", "");
//			str = str.replace("<a href", "");
			
//			System.out.println(str);
			
			JSONParser jsonParser = new JSONParser();
			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
			JSONObject childObj = (JSONObject) ((JSONObject) ((JSONObject) rootObj.get("response")).get("body"))
					.get("items");

			JSONArray detailArray = (JSONArray) childObj.get("item");
			JSONObject obj = (JSONObject) detailArray.get(0);
			
			String accomcountlodging = getStrForJSON(obj, "accomcountlodging");
			String benikia = getStrForJSON(obj, "benikia");
			String checkintime = getStrForJSON(obj, "checkintime");
			String checkouttime = getStrForJSON(obj, "checkouttime");
			String chkcooking = getStrForJSON(obj, "chkcooking");
			String foodplace = getStrForJSON(obj, "foodplace");
			String goodstay = getStrForJSON(obj, "goodstay");
			String hanok = getStrForJSON(obj, "hanok");
			String infocenterlodging = getStrForJSON(obj, "infocenterlodging");
			String parkinglodging = getStrForJSON(obj, "parkinglodging");
			String pickup = getStrForJSON(obj, "pickup");
			String roomcount = getStrForJSON(obj, "roomcount");
			String reservationlodging = getStrForJSON(obj, "reservationlodging");
			String reservationurl = "";
			String roomtype = getStrForJSON(obj, "roomtype");
			String scalelodging = getStrForJSON(obj, "scalelodging");
			String subfacility = getStrForJSON(obj, "subfacility");
			String barbecue = getStrForJSON(obj, "barbecue");
			String beauty = getStrForJSON(obj, "beauty");
			String beverage = getStrForJSON(obj, "beverage");
			String bicycle = getStrForJSON(obj, "bicycle");
			String campfire = getStrForJSON(obj, "campfire");
			String fitness = getStrForJSON(obj, "fitness");
			String karaoke = getStrForJSON(obj, "karaoke");
			String publicbath = getStrForJSON(obj, "publicbath");
			String publicpc = getStrForJSON(obj, "publicpc");
			String sauna = getStrForJSON(obj, "sauna");
			String seminar = getStrForJSON(obj, "seminar");
			String sports = getStrForJSON(obj, "sports");
			String refundregulation = getStrForJSON(obj, "refundregulation");
			accommodation = new Accommodation(tourVO, accomcountlodging, benikia, checkintime, checkouttime, chkcooking, foodplace, goodstay, hanok, infocenterlodging, parkinglodging, pickup, roomcount, reservationlodging, reservationurl, roomtype, scalelodging, subfacility, barbecue, beauty, beverage, bicycle, campfire, fitness, karaoke, publicbath, publicpc, sauna, seminar, sports, refundregulation);

			return accommodation;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static Tourlist detailTourlistStep3(TourVO tourVO) {
		try {
			Tourlist tourlist = null;
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("detailIntro1");
			urlBuilder.append("?" + "serviceKey" + "=" + KEY_ENCODING);
			urlBuilder.append("&" + "MobileOS" + "=" + "ETC");
			urlBuilder.append("&" + "MobileApp" + "=" + "APPTest");
			urlBuilder.append("&" + "contentId" + "=" + tourVO.getContentid());
			urlBuilder.append("&" + "contentTypeId" + "=" + tourVO.getContenttypeid());
			urlBuilder.append("&" + "_type" + "=" + "json");
			
			System.out.println("@@@@"+urlBuilder);

			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			System.out.println("Response code: " + conn.getResponseCode());
			if (conn.getResponseCode() < 200 || conn.getResponseCode() >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return tourlist;
			}
			InputStream is = conn.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
			BufferedReader br = new BufferedReader(isr);
			
			JSONParser jsonParser = new JSONParser();
			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
			JSONObject childObj = (JSONObject) ((JSONObject) ((JSONObject) rootObj.get("response")).get("body"))
					.get("items");

			JSONArray detailArray = (JSONArray) childObj.get("item");
			JSONObject obj = (JSONObject) detailArray.get(0);
			
			String accomcount = getStrForJSON(obj, "accomcount");
			String chkbabycarriage = getStrForJSON(obj, "chkbabycarriage");
			String chkcreditcard = getStrForJSON(obj, "chkcreditcard");
			String chkpet = getStrForJSON(obj, "chkpet");
			String expagerange = getStrForJSON(obj, "expagerange");
			String expguide = getStrForJSON(obj, "expguide");
			String heritage1 = getStrForJSON(obj, "heritage1");
			String heritage2 = getStrForJSON(obj, "heritage2");
			String heritage3 = getStrForJSON(obj, "heritage3");
			String infocenter = getStrForJSON(obj, "infocenter");
			String opendate = getStrForJSON(obj, "opendate");
			String parking = getStrForJSON(obj, "parking");
			String restdate = getStrForJSON(obj, "restdate");
			String useseason = getStrForJSON(obj, "useseason");
			String usetime = getStrForJSON(obj, "usetime");
			tourlist = new Tourlist(tourVO, accomcount, chkbabycarriage, chkcreditcard, chkpet, expagerange,
					expguide, heritage1, heritage2, heritage3, infocenter, opendate, parking, restdate, useseason, usetime);

			return tourlist;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	
	public static CultureContent detailCultureContentStep3(TourVO tourVO) {
		try {
			CultureContent cultureContent = null;
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("detailIntro1");
			urlBuilder.append("?" + "serviceKey" + "=" + KEY_ENCODING);
			urlBuilder.append("&" + "MobileOS" + "=" + "ETC");
			urlBuilder.append("&" + "MobileApp" + "=" + "APPTest");
			urlBuilder.append("&" + "contentId" + "=" + tourVO.getContentid());
			urlBuilder.append("&" + "contentTypeId" + "=" + tourVO.getContenttypeid());
			urlBuilder.append("&" + "_type" + "=" + "json");
			
			System.out.println("@@@@"+urlBuilder);

			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			System.out.println("Response code: " + conn.getResponseCode());
			if (conn.getResponseCode() < 200 || conn.getResponseCode() >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return cultureContent;
			}
			InputStream is = conn.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
			BufferedReader br = new BufferedReader(isr);
			
			JSONParser jsonParser = new JSONParser();
			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
			JSONObject childObj = (JSONObject) ((JSONObject) ((JSONObject) rootObj.get("response")).get("body"))
					.get("items");

			JSONArray detailArray = (JSONArray) childObj.get("item");
			JSONObject obj = (JSONObject) detailArray.get(0);
			
			String accomcountculture = getStrForJSON(obj, "accomcountculture");
			String chkbabycarriageculture = getStrForJSON(obj, "chkbabycarriageculture");
			String chkcreditcardculture = getStrForJSON(obj, "chkcreditcardculture");
			String chkpetculture = getStrForJSON(obj, "chkpetculture");
			String discountinfo = getStrForJSON(obj, "discountinfo");
			String infocenterculture = getStrForJSON(obj, "infocenterculture");
			String parkingculture = getStrForJSON(obj, "parkingculture");
			String parkingfee = getStrForJSON(obj, "parkingfee");
			String restdateculture = getStrForJSON(obj, "restdateculture");
			String usefee = getStrForJSON(obj, "usefee");
			String usetimeculture = getStrForJSON(obj, "usetimeculture");
			String scale = getStrForJSON(obj, "scale");
			String spendtime = getStrForJSON(obj, "spendtime");
			cultureContent = new CultureContent(tourVO, accomcountculture, chkbabycarriageculture, chkcreditcardculture, chkpetculture, discountinfo,
					infocenterculture, parkingculture, parkingfee, restdateculture, usefee, usetimeculture, scale, spendtime);

			return cultureContent;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static Food detailFoodStep3(TourVO tourvo) {
		try {
			Food food = null;
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("detailIntro1");
			urlBuilder.append("?" + "serviceKey" + "=" + KEY_ENCODING);
			urlBuilder.append("&" + "MobileOS" + "=" + "ETC");
			urlBuilder.append("&" + "MobileApp" + "=" + "APPTest");
			urlBuilder.append("&" + "contentId" + "=" + tourvo.getContentid());
			urlBuilder.append("&" + "contentTypeId" + "=" + tourvo.getContenttypeid());
			urlBuilder.append("&" + "_type" + "=" + "json");

			System.out.println("@@@@" + urlBuilder);

			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			System.out.println("Response code: " + conn.getResponseCode());
			if (conn.getResponseCode() < 200 || conn.getResponseCode() >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return food;
			}
			InputStream is = conn.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
			BufferedReader br = new BufferedReader(isr);

			JSONParser jsonParser = new JSONParser();
			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
			JSONObject childObj = (JSONObject) ((JSONObject) ((JSONObject) rootObj.get("response")).get("body"))
					.get("items");

			JSONArray detailArray = (JSONArray) childObj.get("item");
			JSONObject obj = (JSONObject) detailArray.get(0);

			String chkcreditcardfood = getStrForJSON(obj, "chkcreditcardfood");
			String discountinfofood = getStrForJSON(obj, "discountinfofood");
			String firstmenu = getStrForJSON(obj, "firstmenu");
			String infocenterfood = getStrForJSON(obj, "infocenterfood");
			String kidsfacility = getStrForJSON(obj, "kidsfacility");
			String opendatefood = getStrForJSON(obj, "opendatefood");
			String opentimefood = getStrForJSON(obj, "opentimefood");
			String packing = getStrForJSON(obj, "packing");
			String parkingfood = getStrForJSON(obj, "parkingfood");
			String reservationfood = getStrForJSON(obj, "reservationfood");
			String restdatefood = getStrForJSON(obj, "restdatefood");
			String scalefood = getStrForJSON(obj, "scalefood");
			String seat = getStrForJSON(obj, "seat");
			String smoking = getStrForJSON(obj, "smoking");
			String treatmenu = getStrForJSON(obj, "treatmenu");
			String lcnsno = getStrForJSON(obj, "lcnsno");

			food = new Food(tourvo, chkcreditcardfood, discountinfofood, firstmenu, infocenterfood, kidsfacility,
					opendatefood, opentimefood, packing, parkingfood, reservationfood, restdatefood, scalefood, seat,
					smoking, treatmenu, lcnsno);

			return food;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
////////행사 칼럼 분류 
	public static Festival detailFestivalStep3(TourVO tourvo) {
		try {
			Festival festival = null;
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("detailIntro1");
			urlBuilder.append("?" + "serviceKey" + "=" + KEY_ENCODING);
			urlBuilder.append("&" + "MobileOS" + "=" + "ETC");
			urlBuilder.append("&" + "MobileApp" + "=" + "APPTest");
			urlBuilder.append("&" + "contentId" + "=" + tourvo.getContentid());
			urlBuilder.append("&" + "contentTypeId" + "=" + tourvo.getContenttypeid());
			urlBuilder.append("&" + "_type" + "=" + "json");

			System.out.println("@@@@" + urlBuilder);

			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			System.out.println("Response code: " + conn.getResponseCode());
			if (conn.getResponseCode() < 200 || conn.getResponseCode() >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return festival;
			}
			InputStream is = conn.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
			BufferedReader br = new BufferedReader(isr);

			JSONParser jsonParser = new JSONParser();
			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
			JSONObject childObj = (JSONObject) ((JSONObject) ((JSONObject) rootObj.get("response")).get("body"))
					.get("items");

			JSONArray detailArray = (JSONArray) childObj.get("item");
			JSONObject obj = (JSONObject) detailArray.get(0);

			String agelimit = getStrForJSON(obj, "agelimit");
			String bookingplace = getStrForJSON(obj, "bookingplace");
			String discountinfofestival = getStrForJSON(obj, "discountinfofestival");
			String eventenddate = getStrForJSON(obj, "eventenddate");
			String eventhomepage = getStrForJSON(obj, "eventhomepage");
			String eventplace = getStrForJSON(obj, "eventplace");
			String eventstartdate = getStrForJSON(obj, "eventstartdate");
			String festivalgrade = getStrForJSON(obj, "festivalgrade");
			String placeinfo = getStrForJSON(obj, "placeinfo");
			String playtime = getStrForJSON(obj, "playtime");
			String program = getStrForJSON(obj, "program");
			String spendtimefestival = getStrForJSON(obj, "spendtimefestival");
			String sponsor1 = getStrForJSON(obj, "sponsor1");
			String sponsor1tel = getStrForJSON(obj, "sponsor1tel");
			String sponsor2 = getStrForJSON(obj, "sponsor2");
			String sponsor2tel = getStrForJSON(obj, "sponsor2tel");
			String subevent = getStrForJSON(obj, "subevent");
			String usetimefestival = getStrForJSON(obj, "usetimefestival");

			festival = new Festival(tourvo, agelimit, bookingplace, discountinfofestival, eventenddate, eventhomepage,
					eventplace, eventstartdate, festivalgrade, placeinfo, playtime, program, spendtimefestival,
					sponsor1, sponsor1tel, sponsor2, sponsor2tel, subevent, usetimefestival);
			return festival;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static List<TourImageVO> detailCommonImageStep3(int contentId) {
		List<TourImageVO> list = new ArrayList<>();
		try {
			StringBuilder urlBuilder = new StringBuilder(URL);
			urlBuilder.append("detailImage1");
			urlBuilder.append("?" + "serviceKey" + "=" + KEY_ENCODING);
			urlBuilder.append("&" + "MobileOS" + "=" + "ETC");
			urlBuilder.append("&" + "MobileApp" + "=" + "APPTest");
			urlBuilder.append("&" + "contentId" + "=" + contentId);
			urlBuilder.append("&" + "imageYN" + "=" + "Y");
			urlBuilder.append("&" + "subImageYN" + "=" + "Y");
			urlBuilder.append("&" + "_type" + "=" + "json");
			
			System.out.println(urlBuilder);
			
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			System.out.println("Response code: " + conn.getResponseCode());
			if (conn.getResponseCode() < 200 || conn.getResponseCode() >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return list;
			}
			InputStream is = conn.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
			BufferedReader br = new BufferedReader(isr);
			JSONParser jsonParser = new JSONParser();
			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
			
			JSONObject 	childObj = (JSONObject) ((JSONObject) ((JSONObject) rootObj.get("response")).get("body"))
					.get("items");
			JSONArray imageArray = (JSONArray) childObj.get("item");
			for(int j = 0; j < imageArray.size(); j++) {
				JSONObject imageObj = (JSONObject) imageArray.get(j);
				String imgname = getStrForJSON(imageObj, "imgname");
				String originimgurl = getStrForJSON(imageObj, "originimgurl");
				String smallimageurl = getStrForJSON(imageObj, "smallimageurl");
				TourImageVO imageVO = new TourImageVO(contentId, imgname, originimgurl, smallimageurl);
				list.add(imageVO);
			}
		} catch (Exception e) {
		}
		
		return list;
		
	}

	public static String getStrForJSON(JSONObject obj, String key) {
		if (obj.get(key) == null || obj.get(key) == "") {
			return null;
		} else {
			return (String) obj.get(key);
		}
	}
	
	private static int getIntData(JSONObject obj , String key){
		String str = (String) obj.get(key);
		if(str != null) {
			try {
				return Integer.parseInt(str);
			} catch (Exception e) {}
		}
		return 0;
	}
}
