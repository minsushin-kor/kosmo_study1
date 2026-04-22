package com.google.app.misspet;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MisspetDTO {

	private Long misspetNum;
	private String misspetSort;
	private String misspetName;
	private String misspetTitle;
	private String misspetWriterId;
	private String misspetContents;
	private String misspetPn;
	private String misspetEmail;
	private Long memberNum;
}
