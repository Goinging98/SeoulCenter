package com.multi.mvc.tour.model.vo;

public class Festival extends TourVO {
	public String agelimit;
	public String bookingplace;
	public String discountinfofestival;
	public String eventenddate;
	public String eventhomepage;
	public String eventplace;
	public String eventstartdate;
	public String festivalgrade;
	public String placeinfo;
	public String playtime;
	public String program;
	public String spendtimefestival;
	public String sponsor1;
	public String sponsor1tel;
	public String sponsor2;
	public String sponsor2tel;
	public String subevent;
	public String usetimefestival;
	
	
	public Festival() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Festival(int contentid, String contenttypeid, String homepage, String tel, String title, String firstimage,
			String firstimage2, String areacode, String sigungucode, String cat1, String cat2, String cat3,
			String addr1, String addr2, String zipcode, String mapx, String mapy, String overview, String mlevel) {
		super(contentid, contenttypeid, homepage, tel, title, firstimage, firstimage2, areacode, sigungucode, cat1, cat2, cat3,
				addr1, addr2, zipcode, mapx, mapy, overview, mlevel);
		// TODO Auto-generated constructor stub
	}
	public Festival(TourVO tour, String agelimit, String bookingplace, String discountinfofestival, String eventenddate,
			String eventhomepage, String eventplace, String eventstartdate, String festivalgrade, String placeinfo,
			String playtime, String program, String spendtimefestival, String sponsor1, String sponsor1tel,
			String sponsor2, String sponsor2tel, String subevent, String usetimefestival) {
		super(tour.contentid, tour.contenttypeid, tour.homepage, tour.tel, tour.title, tour.firstimage,
				tour.firstimage2, tour.areacode, tour.sigungucode, tour.cat1, tour.cat2, tour.cat3, tour.addr1,
				tour.addr2, tour.zipcode, tour.mapx, tour.mapy, tour.overview, tour.mlevel);
		
		this.agelimit = agelimit;
		this.bookingplace = bookingplace;
		this.discountinfofestival = discountinfofestival;
		this.eventenddate = eventenddate;
		this.eventhomepage = eventhomepage;
		this.eventplace = eventplace;
		this.eventstartdate = eventstartdate;
		this.festivalgrade = festivalgrade;
		this.placeinfo = placeinfo;
		this.playtime = playtime;
		this.program = program;
		this.spendtimefestival = spendtimefestival;
		this.sponsor1 = sponsor1;
		this.sponsor1tel = sponsor1tel;
		this.sponsor2 = sponsor2;
		this.sponsor2tel = sponsor2tel;
		this.subevent = subevent;
		this.usetimefestival = usetimefestival;
	}
	
	@Override
	public String toString() {
		return "Festival [agelimit=" + agelimit + ", bookingplace=" + bookingplace + ", discountinfofestival="
				+ discountinfofestival + ", eventenddate=" + eventenddate + ", eventhomepage=" + eventhomepage
				+ ", eventplace=" + eventplace + ", eventstartdate=" + eventstartdate + ", festivalgrade="
				+ festivalgrade + ", placeinfo=" + placeinfo + ", playtime=" + playtime + ", program=" + program
				+ ", spendtimefestival=" + spendtimefestival + ", sponsor1=" + sponsor1 + ", sponsor1tel=" + sponsor1tel
				+ ", sponsor2=" + sponsor2 + ", sponsor2tel=" + sponsor2tel + ", subevent=" + subevent
				+ ", usetimefestival=" + usetimefestival + "]";
	}
	public String getAgelimit() {
		return agelimit;
	}
	public void setAgelimit(String agelimit) {
		this.agelimit = agelimit;
	}
	public String getBookingplace() {
		return bookingplace;
	}
	public void setBookingplace(String bookingplace) {
		this.bookingplace = bookingplace;
	}
	public String getDiscountinfofestival() {
		return discountinfofestival;
	}
	public void setDiscountinfofestival(String discountinfofestival) {
		this.discountinfofestival = discountinfofestival;
	}
	public String getEventenddate() {
		return eventenddate;
	}
	public void setEventenddate(String eventenddate) {
		this.eventenddate = eventenddate;
	}
	public String getEventhomepage() {
		return eventhomepage;
	}
	public void setEventhomepage(String eventhomepage) {
		this.eventhomepage = eventhomepage;
	}
	public String getEventplace() {
		return eventplace;
	}
	public void setEventplace(String eventplace) {
		this.eventplace = eventplace;
	}
	public String getEventstartdate() {
		return eventstartdate;
	}
	public void setEventstartdate(String eventstartdate) {
		this.eventstartdate = eventstartdate;
	}
	public String getFestivalgrade() {
		return festivalgrade;
	}
	public void setFestivalgrade(String festivalgrade) {
		this.festivalgrade = festivalgrade;
	}
	public String getPlaceinfo() {
		return placeinfo;
	}
	public void setPlaceinfo(String placeinfo) {
		this.placeinfo = placeinfo;
	}
	public String getPlaytime() {
		return playtime;
	}
	public void setPlaytime(String playtime) {
		this.playtime = playtime;
	}
	public String getProgram() {
		return program;
	}
	public void setProgram(String program) {
		this.program = program;
	}
	public String getSpendtimefestival() {
		return spendtimefestival;
	}
	public void setSpendtimefestival(String spendtimefestival) {
		this.spendtimefestival = spendtimefestival;
	}
	public String getSponsor1() {
		return sponsor1;
	}
	public void setSponsor1(String sponsor1) {
		this.sponsor1 = sponsor1;
	}
	public String getSponsor1tel() {
		return sponsor1tel;
	}
	public void setSponsor1tel(String sponsor1tel) {
		this.sponsor1tel = sponsor1tel;
	}
	public String getSponsor2() {
		return sponsor2;
	}
	public void setSponsor2(String sponsor2) {
		this.sponsor2 = sponsor2;
	}
	public String getSponsor2tel() {
		return sponsor2tel;
	}
	public void setSponsor2tel(String sponsor2tel) {
		this.sponsor2tel = sponsor2tel;
	}
	public String getSubevent() {
		return subevent;
	}
	public void setSubevent(String subevent) {
		this.subevent = subevent;
	}
	public String getUsetimefestival() {
		return usetimefestival;
	}
	public void setUsetimefestival(String usetimefestival) {
		this.usetimefestival = usetimefestival;
	}
	
	
	
	
	
	

}
