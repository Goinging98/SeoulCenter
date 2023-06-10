package com.multi.mvc.tour.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Replies {
	private int rno;			// rNO 				INT PRIMARY KEY AUTO_INCREMENT,
	private int contentid;		// contentid		INT,
	private int contenttypeid;	// contenttypeid	INT,
	private int mno;			// mNO 				INT,
	private String writerId;	// writerId 		String,
	private String content;		// CONTENT 			VARCHAR(1000),
	private String status;		// STATUS 			VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
	private Date createDate;	// CREATE_DATE 		DATETIME DEFAULT CURRENT_TIMESTAMP,
	private Date modifyDate;	// MODIFY_DATE 		DATETIME DEFAULT CURRENT_TIMESTAMP,
	
}
