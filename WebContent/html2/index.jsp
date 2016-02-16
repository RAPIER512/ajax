<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
  	<script type="text/javascript" src="../scripts/jquery.js"></script>
  	<script type="text/javascript">
  	$(function(){
  		$("a").click(function(){
  			var url = this.href;
  			var args ={"time":new Date()};
  			//任何一个html节点都可以使用load 方法来加载AJax，将结果直接插入html 节点中
  			$("#details").load(url,args);
  			return false;
  		});
  	});
  	
  	</script>
  </head>
  
  <body>
    <h1>People</h1>
    <ul>
    	<li><a href="files/andy.html">Andy</a></li>
       	<li><a href="files/richard.html">Richard</a></li>
       	<li><a href="files/jeremy.html">Jeremy</a></li>
    </ul>
    <div id="details"></div>
  </body>
</html>
