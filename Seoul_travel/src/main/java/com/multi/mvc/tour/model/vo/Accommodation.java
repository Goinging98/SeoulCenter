package com.multi.mvc.tour.model.vo;

public class Accommodation extends TourVO {
	public String accomcountlodging;
	public String benikia;
	public String checkintime;
	public String checkouttime;
	public String chkcooking;
	public String foodplace;
	public String goodstay;
	public String hanok;
	public String infocenterlodging;
	public String parkinglodging;
	public String pickup;
	public String roomcount;
	public String reservationlodging;
	public String reservationurl;
	public String roomtype;
	public String scalelodging;
	public String subfacility;
	public String barbecue;
	public String beauty;
	public String beverage;
	public String bicycle;
	public String campfire;
	public String fitness;
	public String karaoke;
	public String publicbath;
	public String publicpc;
	public String sauna;
	public String seminar;
	public String sports;
	public String refundregulation;

	public Accommodation() {
		super();
	}

	public Accommodation(int contentid, String contenttypeid, String homepage, String tel, String title,
			String firstimage, String firstimage2, String areacode, String sigungucode, String cat1, String cat2,
			String cat3, String addr1, String addr2, String zipcode, String mapx, String mapy, String overview,
			String mlevel) {
		super(contentid, contenttypeid, homepage, tel, title, firstimage, firstimage2, areacode, sigungucode, cat1,
				cat2, cat3, addr1, addr2, zipcode, mapx, mapy, overview, mlevel);
	}

	public Accommodation(TourVO tour, String accomcountlodging, String benikia, String checkintime, String checkouttime,
			String chkcooking, String foodplace, String goodstay, String hanok, String infocenterlodging,
			String parkinglodging, String pickup, String roomcount, String reservationlodging, String reservationurl,
			String roomtype, String scalelodging, String subfacility, String barbecue, String beauty, String beverage,
			String bicycle, String campfire, String fitness, String karaoke, String publicbath, String publicpc,
			String sauna, String seminar, String sports, String refundregulation) {
		super(tour.contentid, tour.contenttypeid, tour.homepage, tour.tel, tour.title, tour.firstimage,
				tour.firstimage2, tour.areacode, tour.sigungucode, tour.cat1, tour.cat2, tour.cat3, tour.addr1,
				tour.addr2, tour.zipcode, tour.mapx, tour.mapy, tour.overview, tour.mlevel);
		
		this.accomcountlodging = accomcountlodging;
		this.benikia = benikia;
		this.checkintime = checkintime;
		this.checkouttime = checkouttime;
		this.chkcooking = chkcooking;
		this.foodplace = foodplace;
		this.goodstay = goodstay;
		this.hanok = hanok;
		this.infocenterlodging = infocenterlodging;
		this.parkinglodging = parkinglodging;
		this.pickup = pickup;
		this.roomcount = roomcount;
		this.reservationlodging = reservationlodging;
		this.reservationurl = reservationurl;
		this.roomtype = roomtype;
		this.scalelodging = scalelodging;
		this.subfacility = subfacility;
		this.barbecue = barbecue;
		this.beauty = beauty;
		this.beverage = beverage;
		this.bicycle = bicycle;
		this.campfire = campfire;
		this.fitness = fitness;
		this.karaoke = karaoke;
		this.publicbath = publicbath;
		this.publicpc = publicpc;
		this.sauna = sauna;
		this.seminar = seminar;
		this.sports = sports;
		this.refundregulation = refundregulation;
	}

	@Override
	public String toString() {
		return super.toString() + "Accommodation [accomcountlodging=" + accomcountlodging + ", benikia=" + benikia + ", checkintime="
				+ checkintime + ", checkouttime=" + checkouttime + ", chkcooking=" + chkcooking + ", foodplace="
				+ foodplace + ", goodstay=" + goodstay + ", hanok=" + hanok + ", infocenterlodging=" + infocenterlodging
				+ ", parkinglodging=" + parkinglodging + ", pickup=" + pickup + ", roomcount=" + roomcount
				+ ", reservationlodging=" + reservationlodging + ", reservationurl=" + reservationurl + ", roomtype="
				+ roomtype + ", scalelodging=" + scalelodging + ", subfacility=" + subfacility + ", barbecue="
				+ barbecue + ", beauty=" + beauty + ", beverage=" + beverage + ", bicycle=" + bicycle + ", campfire="
				+ campfire + ", fitness=" + fitness + ", karaoke=" + karaoke + ", publicbath=" + publicbath
				+ ", publicpc=" + publicpc + ", sauna=" + sauna + ", seminar=" + seminar + ", sports=" + sports
				+ ", refundregulation=" + refundregulation + "]";
	}

	public String getAccomcountlodging() {
		return accomcountlodging;
	}

	public void setAccomcountlodging(String accomcountlodging) {
		this.accomcountlodging = accomcountlodging;
	}

	public String getBenikia() {
		return benikia;
	}

	public void setBenikia(String benikia) {
		this.benikia = benikia;
	}

	public String getCheckintime() {
		return checkintime;
	}

	public void setCheckintime(String checkintime) {
		this.checkintime = checkintime;
	}

	public String getCheckouttime() {
		return checkouttime;
	}

	public void setCheckouttime(String checkouttime) {
		this.checkouttime = checkouttime;
	}

	public String getChkcooking() {
		return chkcooking;
	}

	public void setChkcooking(String chkcooking) {
		this.chkcooking = chkcooking;
	}

	public String getFoodplace() {
		return foodplace;
	}

	public void setFoodplace(String foodplace) {
		this.foodplace = foodplace;
	}

	public String getGoodstay() {
		return goodstay;
	}

	public void setGoodstay(String goodstay) {
		this.goodstay = goodstay;
	}

	public String getHanok() {
		return hanok;
	}

	public void setHanok(String hanok) {
		this.hanok = hanok;
	}

	public String getInfocenterlodging() {
		return infocenterlodging;
	}

	public void setInfocenterlodging(String infocenterlodging) {
		this.infocenterlodging = infocenterlodging;
	}

	public String getParkinglodging() {
		return parkinglodging;
	}

	public void setParkinglodging(String parkinglodging) {
		this.parkinglodging = parkinglodging;
	}

	public String getPickup() {
		return pickup;
	}

	public void setPickup(String pickup) {
		this.pickup = pickup;
	}

	public String getRoomcount() {
		return roomcount;
	}

	public void setRoomcount(String roomcount) {
		this.roomcount = roomcount;
	}

	public String getReservationlodging() {
		return reservationlodging;
	}

	public void setReservationlodging(String reservationlodging) {
		this.reservationlodging = reservationlodging;
	}

	public String getReservationurl() {
		return reservationurl;
	}

	public void setReservationurl(String reservationurl) {
		this.reservationurl = reservationurl;
	}

	public String getRoomtype() {
		return roomtype;
	}

	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}

	public String getScalelodging() {
		return scalelodging;
	}

	public void setScalelodging(String scalelodging) {
		this.scalelodging = scalelodging;
	}

	public String getSubfacility() {
		return subfacility;
	}

	public void setSubfacility(String subfacility) {
		this.subfacility = subfacility;
	}

	public String getBarbecue() {
		return barbecue;
	}

	public void setBarbecue(String barbecue) {
		this.barbecue = barbecue;
	}

	public String getBeauty() {
		return beauty;
	}

	public void setBeauty(String beauty) {
		this.beauty = beauty;
	}

	public String getBeverage() {
		return beverage;
	}

	public void setBeverage(String beverage) {
		this.beverage = beverage;
	}

	public String getBicycle() {
		return bicycle;
	}

	public void setBicycle(String bicycle) {
		this.bicycle = bicycle;
	}

	public String getCampfire() {
		return campfire;
	}

	public void setCampfire(String campfire) {
		this.campfire = campfire;
	}

	public String getFitness() {
		return fitness;
	}

	public void setFitness(String fitness) {
		this.fitness = fitness;
	}

	public String getKaraoke() {
		return karaoke;
	}

	public void setKaraoke(String karaoke) {
		this.karaoke = karaoke;
	}

	public String getPublicbath() {
		return publicbath;
	}

	public void setPublicbath(String publicbath) {
		this.publicbath = publicbath;
	}

	public String getPublicpc() {
		return publicpc;
	}

	public void setPublicpc(String publicpc) {
		this.publicpc = publicpc;
	}

	public String getSauna() {
		return sauna;
	}

	public void setSauna(String sauna) {
		this.sauna = sauna;
	}

	public String getSeminar() {
		return seminar;
	}

	public void setSeminar(String seminar) {
		this.seminar = seminar;
	}

	public String getSports() {
		return sports;
	}

	public void setSports(String sports) {
		this.sports = sports;
	}

	public String getRefundregulation() {
		return refundregulation;
	}

	public void setRefundregulation(String refundregulation) {
		this.refundregulation = refundregulation;
	}

}
