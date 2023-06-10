package com.multi.mvc.tour.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Replies {
	public int rno;			// rNO 				INT PRIMARY KEY AUTO_INCREMENT,
	public int contentid;		// contentid		INT,
	public int contenttypeid;	// contenttypeid	INT,
	public int mno;			// mNO 				INT,
	public String writerId;	// writerId 		String,
	public String content;		// CONTENT 			VARCHAR(1000),
	public String status;		// STATUS 			VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
	public Date createDate;	// CREATE_DATE 		DATETIME DEFAULT CURRENT_TIMESTAMP,
	public Date modifyDate;	// MODIFY_DATE 		DATETIME DEFAULT CURRENT_TIMESTAMP,
}
