package com.multi.mvc.board.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reply {
	private int rno;			// rNO 			INT PRIMARY KEY AUTO_INCREMENT,
	private int bno;			// bNO 			INT,
	private int mno;			// mNO 			INT,
	private String writerId;		// writerId 	String,
	private String content;		// CONTENT 		VARCHAR(1000),
	private String status;		// STATUS 		VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
	private Date createDate;	// CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
	private Date modifyDate;	// MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
}
