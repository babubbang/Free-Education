<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<style>
	header {
        background: lightgray;
        height: 100px;
      }
    section {
    	background: lightblue;
    	height: 300px;
      }
    html, body {
    margin: 0;
    padding: 0;
    height: 100%;
}

#body-wrapper {
    min-height: 100%;
    position: relative;
}

#body-content {
    margin-top: 100px;
    padding-bottom: 99999px; /* footer의 높이 */
}

footer {
    width: 100%;
    height: 99999px; /* footer의 높이 */
    position: absolute;  
    bottom: 0;
    left: 0;
}
    
</style>