package com.multi.mvc.tour.model.vo;


public class Food extends TourVO {

	public String chkcreditcardfood;
	public String discountinfofood;
	public String firstmenu;
	public String infocenterfood;
	public String kidsfacility;
	public String opendatefood;
	public String opentimefood;
	public String packing;
	public String parkingfood;
	public String reservationfood;
	public String restdatefood;
	public String scalefood;
	public String seat;
	public String smoking;
	public String treatmenu;
	public String lcnsno;
	
	
	public Food() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Food(int contentid, String contenttypeid, String homepage, String tel, String title, String firstimage,
			String firstimage2, String areacode, String sigungucode, String cat1, String cat2, String cat3,
			String addr1, String addr2, String zipcode, String mapx, String mapy, String overview, String mlevel) {
		super(contentid, contenttypeid, homepage, tel, title, firstimage, firstimage2, areacode, sigungucode, cat1, cat2, cat3,
				addr1, addr2, zipcode, mapx, mapy, overview, mlevel);
		// TODO Auto-generated constructor stub
	}
	
	public Food(TourVO tour, String chkcreditcardfood, String discountinfofood, String firstmenu, String infocenterfood,
			String kidsfacility, String opendatefood, String opentimefood, String packing, String parkingfood,
			String reservationfood, String restdatefood, String scalefood, String seat, String smoking,
			String treatmenu, String lcnsno) {
		super(tour.contentid, tour.contenttypeid, tour.homepage, tour.tel, tour.title, tour.firstimage,
				tour.firstimage2, tour.areacode, tour.sigungucode, tour.cat1, tour.cat2, tour.cat3, tour.addr1,
				tour.addr2, tour.zipcode, tour.mapx, tour.mapy, tour.overview, tour.mlevel);
		
		this.chkcreditcardfood = chkcreditcardfood;
		this.discountinfofood = discountinfofood;
		this.firstmenu = firstmenu;
		this.infocenterfood = infocenterfood;
		this.kidsfacility = kidsfacility;
		this.opendatefood = opendatefood;
		this.opentimefood = opentimefood;
		this.packing = packing;
		this.parkingfood = parkingfood;
		this.reservationfood = reservationfood;
		this.restdatefood = restdatefood;
		this.scalefood = scalefood;
		this.seat = seat;
		this.smoking = smoking;
		this.treatmenu = treatmenu;
		this.lcnsno = lcnsno;
	}

	@Override
	public String toString() {
		return "Food [chkcreditcardfood=" + chkcreditcardfood + ", discountinfofood=" + discountinfofood
				+ ", firstmenu=" + firstmenu + ", infocenterfood=" + infocenterfood + ", kidsfacility=" + kidsfacility
				+ ", opendatefood=" + opendatefood + ", opentimefood=" + opentimefood + ", packing=" + packing
				+ ", parkingfood=" + parkingfood + ", reservationfood=" + reservationfood + ", restdatefood="
				+ restdatefood + ", scalefood=" + scalefood + ", seat=" + seat + ", smoking=" + smoking + ", treatmenu="
				+ treatmenu + ", lcnsno=" + lcnsno + "]";
	}

	public String getChkcreditcardfood() {
		return chkcreditcardfood;
	}

	public void setChkcreditcardfood(String chkcreditcardfood) {
		this.chkcreditcardfood = chkcreditcardfood;
	}

	public String getDiscountinfofood() {
		return discountinfofood;
	}

	public void setDiscountinfofood(String discountinfofood) {
		this.discountinfofood = discountinfofood;
	}

	public String getFirstmenu() {
		return firstmenu == null ? "정보없음" : firstmenu;
	}

	public void setFirstmenu(String firstmenu) {
		this.firstmenu = firstmenu;
	}

	public String getInfocenterfood() {
		return infocenterfood;
	}

	public void setInfocenterfood(String infocenterfood) {
		this.infocenterfood = infocenterfood;
	}

	public String getKidsfacility() {
		return kidsfacility;
	}

	public void setKidsfacility(String kidsfacility) {
		this.kidsfacility = kidsfacility;
	}

	public String getOpendatefood() {
		return opendatefood;
	}

	public void setOpendatefood(String opendatefood) {
		this.opendatefood = opendatefood;
	}

	public String getOpentimefood() {
		return opentimefood == null ? "정보없음" : opentimefood;
	}

	public void setOpentimefood(String opentimefood) {
		this.opentimefood = opentimefood;
	}

	public String getPacking() {
		return packing == null ? "정보없음" : packing;
	}

	public void setPacking(String packing) {
		this.packing = packing;
	}

	public String getParkingfood() {
		return parkingfood == null ? "정보없음" : parkingfood;
	}

	public void setParkingfood(String parkingfood) {
		this.parkingfood = parkingfood;
	}

	public String getReservationfood() {
		return reservationfood;
	}

	public void setReservationfood(String reservationfood) {
		this.reservationfood = reservationfood;
	}

	public String getRestdatefood() {
		return restdatefood == null ? "정보없음" : restdatefood;
	}

	public void setRestdatefood(String restdatefood) {
		this.restdatefood = restdatefood;
	}

	public String getScalefood() {
		return scalefood;
	}

	public void setScalefood(String scalefood) {
		this.scalefood = scalefood;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getSmoking() {
		return smoking;
	}

	public void setSmoking(String smoking) {
		this.smoking = smoking;
	}

	public String getTreatmenu() {
		return treatmenu;
	}

	public void setTreatmenu(String treatmenu) {
		this.treatmenu = treatmenu;
	}

	public String getLcnsno() {
		return lcnsno;
	}

	public void setLcnsno(String lcnsno) {
		this.lcnsno = lcnsno;
	}
	
	
	
	
	
	

}
