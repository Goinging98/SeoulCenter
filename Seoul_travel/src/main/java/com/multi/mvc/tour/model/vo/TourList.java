package com.multi.mvc.tour.model.vo;

public class TourList extends TourVO {
	public String accomcount; // 수용인원
	public String chkbabycarriage; // 유모차대여정보
	public String chkcreditcard; // 신용카드가능정보
	public String chkpet; // 애완동물동반가능정보
	public String expagerange; // 체험가능연령
	public String expguide; // 체험안내
	public String heritage1; // 세계문화유산유무
	public String heritage2; // 세계자연유산유무
	public String heritage3; // 세계기록유산유무
	public String infocenter; // 문의및안내
	public String opendate; // 개장일
	public String parking; // 주차시설
	public String restdate; // 쉬는날
	public String useseason; // 이용시기
	public String usetime; // 이용시간

	public TourList() {
		super();
	}

	public TourList(int contentid, String contenttypeid, String homepage, String tel, String title, String firstimage,
			String firstimage2, String areacode, String sigungucode, String cat1, String cat2, String cat3,
			String addr1, String addr2, String zipcode, String mapx, String mapy, String overview, String mlevel) {
		super(contentid, contenttypeid, homepage, tel, title, firstimage, firstimage2, areacode, sigungucode, cat1,
				cat2, cat3, addr1, addr2, zipcode, mapx, mapy, overview, mlevel);
	}

	public TourList(TourVO tour, String accomcount, String chkbabycarriage, String chkcreditcard, String chkpet,
			String expagerange, String expguide, String heritage1, String heritage2, String heritage3,
			String infocenter, String opendate, String parking, String restdate, String useseason, String usetime) {
		super(tour.contentid, tour.contenttypeid, tour.homepage, tour.tel, tour.title, tour.firstimage,
				tour.firstimage2, tour.areacode, tour.sigungucode, tour.cat1, tour.cat2, tour.cat3, tour.addr1,
				tour.addr2, tour.zipcode, tour.mapx, tour.mapy, tour.overview, tour.mlevel);
		this.accomcount = accomcount;
		this.chkbabycarriage = chkbabycarriage;
		this.chkcreditcard = chkcreditcard;
		this.chkpet = chkpet;
		this.expagerange = expagerange;
		this.expguide = expguide;
		this.heritage1 = heritage1;
		this.heritage2 = heritage2;
		this.heritage3 = heritage3;
		this.infocenter = infocenter;
		this.opendate = opendate;
		this.parking = parking;
		this.restdate = restdate;
		this.useseason = useseason;
		this.usetime = usetime;
	}

	@Override
	public String toString() {
		return "Tourlist [accomcount=" + accomcount + ", chkbabycarriage=" + chkbabycarriage + ", chkcreditcard="
				+ chkcreditcard + ", chkpet=" + chkpet + ", expagerange=" + expagerange + ", expguide=" + expguide
				+ ", heritage1=" + heritage1 + ", heritage2=" + heritage2 + ", heritage3=" + heritage3 + ", infocenter="
				+ infocenter + ", opendate=" + opendate + ", parking=" + parking + ", restdate=" + restdate
				+ ", useseason=" + useseason + ", usetime=" + usetime + "]";
	}

	public String getAccomcount() {
		return accomcount;
	}

	public void setAccomcount(String accomcount) {
		this.accomcount = accomcount;
	}

	public String getChkbabycarriage() {
		return chkbabycarriage;
	}

	public void setChkbabycarriage(String chkbabycarriage) {
		this.chkbabycarriage = chkbabycarriage;
	}

	public String getChkcreditcard() {
		return chkcreditcard;
	}

	public void setChkcreditcard(String chkcreditcard) {
		this.chkcreditcard = chkcreditcard;
	}

	public String getChkpet() {
		return chkpet;
	}

	public void setChkpet(String chkpet) {
		this.chkpet = chkpet;
	}

	public String getExpagerange() {
		return expagerange;
	}

	public void setExpagerange(String expagerange) {
		this.expagerange = expagerange;
	}

	public String getExpguide() {
		return expguide;
	}

	public void setExpguide(String expguide) {
		this.expguide = expguide;
	}

	public String getHeritage1() {
		return heritage1;
	}

	public void setHeritage1(String heritage1) {
		this.heritage1 = heritage1;
	}

	public String getHeritage2() {
		return heritage2;
	}

	public void setHeritage2(String heritage2) {
		this.heritage2 = heritage2;
	}

	public String getHeritage3() {
		return heritage3;
	}

	public void setHeritage3(String heritage3) {
		this.heritage3 = heritage3;
	}

	public String getInfocenter() {
		return infocenter;
	}

	public void setInfocenter(String infocenter) {
		this.infocenter = infocenter;
	}

	public String getOpendate() {
		return opendate;
	}

	public void setOpendate(String opendate) {
		this.opendate = opendate;
	}

	public String getParking() {
		return parking;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}

	public String getRestdate() {
		return restdate;
	}

	public void setRestdate(String restdate) {
		this.restdate = restdate;
	}

	public String getUseseason() {
		return useseason;
	}

	public void setUseseason(String useseason) {
		this.useseason = useseason;
	}

	public String getUsetime() {
		return usetime;
	}

	public void setUsetime(String usetime) {
		this.usetime = usetime;
	}

}
