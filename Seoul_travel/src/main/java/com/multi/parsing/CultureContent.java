package com.multi.parsing;

public class CultureContent extends TourVO{
	public String accomcountculture; 		//수용인원
	public String chkbabycarriageculture; //유모차대여정보
	public String chkcreditcardculture; 		//신용카드가능정보
	public String chkpetculture; 				//애완동물동반가능정보
	public String discountinfo; 					//할인정보
	public String infocenterculture; 			//문의및안내
	public String parkingculture; 				//주차시설
	public String parkingfee; 					//주차요금
	public String restdateculture; 			//쉬는날
	public String usefee; 							//이용요금
	public String usetimeculture; 				//이용시간
	public String scale; 							//규모
	public String spendtime; 					//관람소요시간
	
	public CultureContent() {
		super();
	}
	
	public CultureContent(int contentid, String contenttypeid, String homepage, String tel, String title,
			String firstimage, String firstimage2, String areacode, String sigungucode, String cat1, String cat2,
			String cat3, String addr1, String addr2, String zipcode, String mapx, String mapy, String overview,
			String mlevel) {
		super(contentid, contenttypeid, homepage, tel, title, firstimage, firstimage2, areacode, sigungucode, cat1, cat2, cat3,
				addr1, addr2, zipcode, mapx, mapy, overview, mlevel);
	}
	
	public CultureContent(TourVO tour, String accomcountculture, String chkbabycarriageculture, String chkcreditcardculture,
			String chkpetculture, String discountinfo, String infocenterculture, String parkingculture,
			String parkingfee, String restdateculture, String usefee, String usetimeculture, String scale,
			String spendtime) {
		super(tour.contentid, tour.contenttypeid, tour.homepage, tour.tel, tour.title, tour.firstimage,
				tour.firstimage2, tour.areacode, tour.sigungucode, tour.cat1, tour.cat2, tour.cat3, tour.addr1,
				tour.addr2, tour.zipcode, tour.mapx, tour.mapy, tour.overview, tour.mlevel);
		
		this.accomcountculture = accomcountculture;
		this.chkbabycarriageculture = chkbabycarriageculture;
		this.chkcreditcardculture = chkcreditcardculture;
		this.chkpetculture = chkpetculture;
		this.discountinfo = discountinfo;
		this.infocenterculture = infocenterculture;
		this.parkingculture = parkingculture;
		this.parkingfee = parkingfee;
		this.restdateculture = restdateculture;
		this.usefee = usefee;
		this.usetimeculture = usetimeculture;
		this.scale = scale;
		this.spendtime = spendtime;
	}
	@Override
	public String toString() {
		return "CultureContent [accomcountculture=" + accomcountculture + ", chkbabycarriageculture="
				+ chkbabycarriageculture + ", chkcreditcardculture=" + chkcreditcardculture + ", chkpetculture="
				+ chkpetculture + ", discountinfo=" + discountinfo + ", infocenterculture=" + infocenterculture
				+ ", parkingculture=" + parkingculture + ", parkingfee=" + parkingfee + ", restdateculture="
				+ restdateculture + ", usefee=" + usefee + ", usetimeculture=" + usetimeculture + ", scale=" + scale
				+ ", spendtime=" + spendtime + "]";
	}
	public String getAccomcountculture() {
		return accomcountculture;
	}
	public void setAccomcountculture(String accomcountculture) {
		this.accomcountculture = accomcountculture;
	}
	public String getChkbabycarriageculture() {
		return chkbabycarriageculture;
	}
	public void setChkbabycarriageculture(String chkbabycarriageculture) {
		this.chkbabycarriageculture = chkbabycarriageculture;
	}
	public String getChkcreditcardculture() {
		return chkcreditcardculture;
	}
	public void setChkcreditcardculture(String chkcreditcardculture) {
		this.chkcreditcardculture = chkcreditcardculture;
	}
	public String getChkpetculture() {
		return chkpetculture;
	}
	public void setChkpetculture(String chkpetculture) {
		this.chkpetculture = chkpetculture;
	}
	public String getDiscountinfo() {
		return discountinfo;
	}
	public void setDiscountinfo(String discountinfo) {
		this.discountinfo = discountinfo;
	}
	public String getInfocenterculture() {
		return infocenterculture;
	}
	public void setInfocenterculture(String infocenterculture) {
		this.infocenterculture = infocenterculture;
	}
	public String getParkingculture() {
		return parkingculture;
	}
	public void setParkingculture(String parkingculture) {
		this.parkingculture = parkingculture;
	}
	public String getParkingfee() {
		return parkingfee;
	}
	public void setParkingfee(String parkingfee) {
		this.parkingfee = parkingfee;
	}
	public String getRestdateculture() {
		return restdateculture;
	}
	public void setRestdateculture(String restdateculture) {
		this.restdateculture = restdateculture;
	}
	public String getUsefee() {
		return usefee;
	}
	public void setUsefee(String usefee) {
		this.usefee = usefee;
	}
	public String getUsetimeculture() {
		return usetimeculture;
	}
	public void setUsetimeculture(String usetimeculture) {
		this.usetimeculture = usetimeculture;
	}
	public String getScale() {
		return scale;
	}
	public void setScale(String scale) {
		this.scale = scale;
	}
	public String getSpendtime() {
		return spendtime;
	}
	public void setSpendtime(String spendtime) {
		this.spendtime = spendtime;
	}
	

}
