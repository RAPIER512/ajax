<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
  <script type="text/javascript" src="../scripts/jquery.js"></script>
  <script type="text/javascript">
	//url:ajax请求的目标url
	//args:传递的参数：json 类型
	//data: ajax响应成功的后的数据 可能是 xml,html，json
  
  $(function () {
		$("a").click(function(data){
			var url = this.href;
			var args = {"time":new Date()};
			$.getJSON(url,args,function(){
				var name = data.person.name;
				var email = data.person.email;
				var website = data.perosn.website;
				$("details").empty()
								.append("<h2><a href='mailto:"+email+"'>"+name+"</a></h2>")
								.append("<a href='"+website+"'>"+website+"</a>");
			});
			return false;
		});
	});
  </script>
  </head>
  
  <body>
    <h1>People</h1>
    <ul>
    	<li><a href="files/andy.js">Andy</a></li>
       	<li><a href="files/richard.js">Richard</a></li>
       	<li><a href="files/jeremy.js">Jeremy</a></li>
    </ul>
    <div id="details"></div>
  </body>
</html>
