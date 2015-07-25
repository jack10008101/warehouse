package cn.longkai.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * MD5加密
 * @author jack
 *  2015年7月25日
 *
 */
public class Md5 {
	public static String stringByMD5(String strString) throws NoSuchAlgorithmException{
		if (strString!=null) {
				MessageDigest messageDigest=MessageDigest.getInstance("MD5");
				byte []result=messageDigest.digest(strString.getBytes());
				StringBuffer md5StrBuff = new StringBuffer();  
				  
		        for (int i = 0; i < result.length; i++) {              
		            if (Integer.toHexString(0xFF & result[i]).length() == 1)  
		                md5StrBuff.append("0").append(Integer.toHexString(0xFF & result[i]));  
		            else  
		                md5StrBuff.append(Integer.toHexString(0xFF & result[i]));  
		        } 
		        return md5StrBuff.toString();
		}
		return null;	
	}
}
