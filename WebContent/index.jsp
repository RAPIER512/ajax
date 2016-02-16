<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		//1.获取a 节点 并且为其添加onclick 响应函数
		document.getElementsByTagName("a")[0].onclick = function(){
			//2 创建一个XMLHttpRequest 对象
			var request = new XMLHttpRequest();
			//3准备发送请求的数据：URL
			var url = this.href;
			var method = "GET";
			//5调用XMLHttpRequest 对象的open 方法
			request.open(method,url);
			//6调用XMLHttprequest 对象的send 方法
			request.send(null);
			//7为XMLHttpRequest 对象添加onreadyStateChange 响应函数
			request.onreadystatechange = function(){
    			alert("**"+request.readyState+"**");
				//8判断响应是否完成 ：XMLHttpRequest 对 象的readyState 属性值为4 的时候
				if(request.readyState == 4){
					//9在判断响应是否可用：XMLHttpRequest 对象的status 属性值为200
					if(request.status == 200 || request.status == 304){
						//10 打印响应结果：responseText
						alert(request.responseText);
					}
				}
			}
			//4取消a 节点的默认行为
			return false;
		}
	}

</script>
</head>
<body>
	<a href="helloAjax.txt">HelloAjax</a>
</body>
</html>