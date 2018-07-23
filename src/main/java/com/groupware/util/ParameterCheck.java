package com.groupware.util;

public class ParameterCheck {
	
	public static String nullToBlank(String str) {
		return str == null ? "" : str;
	}

	public static int naNToZero(String numStr) {
		int num = 0;
		if(isNumber(numStr))
			num = Integer.parseInt(numStr);
		return num;
	}
	
	public static int naNToOne(String numStr) {
		int num = 1;
		if(isNumber(numStr))
			num = Integer.parseInt(numStr);
		return num;
	}

	private static boolean isNumber(String numStr) {
		boolean flag = true;
		if(numStr != null && !numStr.isEmpty()) {
			int len = numStr.length();
			for(int i=0;i<len;i++) {
				int x = numStr.charAt(i) - 48;
				if(x < 0 || x > 9) {
					flag = false;
					break;
				}
			}
		} else {
			return false;
		}
		return flag;
	}
	
}
