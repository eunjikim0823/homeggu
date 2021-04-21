package com.content.util;

//형식 유지태그때문에 요즘은 잘 쓰지 않는다
//글내용보기 <textarea><pre><%=content%></pre></textarea>
public class StringUtil {
	public static String parseBr(String msg){
		
		if(msg == null) return null;
		// \r\n(enter)
		return msg.replace("\r\n", "<br>")
                  .replace("\n", "<br>");
	}
}
