package com.multi.mvc.tour.model.vo;

public class TourImageVO {
	private int iNo;
	private int contentid;
	private String imgname;
	private String originimgurl;
	private String smallimageurl;

	public TourImageVO(int iNo, int contentid, String imgname, String originimgurl, String smallimageurl) {
		super();
		this.iNo = iNo;
		this.contentid = contentid;
		this.imgname = imgname;
		this.originimgurl = originimgurl;
		this.smallimageurl = smallimageurl;
	}

	public TourImageVO() {
		super();
	}

	@Override
	public String toString() {
		return "TourImageVO [iNo=" + iNo + ", contentid=" + contentid + ", imgname=" + imgname + ", originimgurl=" + originimgurl
				+ ", smallimageurl=" + smallimageurl + "]";
	}

	public int getIno() {
		return iNo;
	}
	
	public void setIno(int iNo) {
		this.iNo = iNo;
	}
		
	public int getContentid() {
		return contentid;
	}

	public void setContentid(int contentid) {
		this.contentid = contentid;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public String getOriginimgurl() {
		return originimgurl;
	}

	public void setOriginimgurl(String originimgurl) {
		this.originimgurl = originimgurl;
	}

	public String getSmallimageurl() {
		return smallimageurl;
	}

	public void setSmallimageurl(String smallimageurl) {
		this.smallimageurl = smallimageurl;
	}

}
