package com.multi.mvc.tour.model.vo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Community {
	private int bno;
	private int mno;
	private String writerId;
	private String title;
	private String content;
	private String type;
	private String originalFileName;
	private String renamedFileName;
	private int readCount;
	private String status;
	private Date createDate;
	private Date modifyDate;
	private List<Replies> replies;
}
