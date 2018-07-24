package com.groupware.util;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class Encoder {

	public static String isoToUtf(String str) throws UnsupportedEncodingException {
		String utf = "";
		if(str != null) {
			utf = new String(str.getBytes("ISO-8859-1"), "UTF-8");
		}
		return utf;
	}
	
	public static String isoToEuc(String str) throws UnsupportedEncodingException {
		String utf = "";
		if(str != null) {
			utf = new String(str.getBytes("ISO-8859-1"), "EUC-KR");
		}
		return utf;
	}
	
	public static String urlUtf(String str) throws UnsupportedEncodingException {
		String utf = "";
		if(str != null) {
			utf = URLEncoder.encode(str, "UTF-8");
		}
		return utf;
	}
	
	public static String urlEuc(String str) throws UnsupportedEncodingException {
		String utf = "";
		if(str != null) {
			utf = URLEncoder.encode(str, "EUC-KR");
		}
		return utf;
	}
}
