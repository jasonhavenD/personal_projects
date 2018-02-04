<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<!--框架必需start-->
<script type="text/javascript" src="<%=path%>/libs/js/jquery.js"></script>
<script type="text/javascript" src="<%=path%>/libs/js/language/cn.js"></script>
<script type="text/javascript" src="<%=path%>/libs/js/framework.js"></script>
<link href="<%=path%>/libs/css/import_basic.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" id="skin" prePath="<%=path%>/"/>
<link rel="stylesheet" type="text/css" id="customSkin"/>
<!--框架必需end-->

<!--数字分页start-->
<script type="text/javascript" src="<%=path%>/libs/js/nav/pageNumber.js"></script>
<!--数字分页end-->
</head>
<body>
<div class="box1" panelWidth="900">
	<fieldset> 
     <legend>1、默认设置</legend>	
	<div class="pageNumber" total="200" id="page-1"></div>
	</fieldset>
	 <div class="height_15"></div>
	
	<fieldset> 
     <legend>2、自定义属性1（复杂）</legend>	
	<div class="pageNumber" total="200" pageSize="5" centerPageNum="10" edgePageNum="4" page="2" prevText="向前翻页" nextText="向后翻页" ></div>
	</fieldset>
	<div class="height_15"></div>
	
	<fieldset> 
     <legend>3、自定义属性2（简洁）</legend>	
	<div class="pageNumber" total="200" pageSize="10" centerPageNum="2" edgePageNum="0"  prevText="前" nextText="后" ></div>
	</fieldset>
	<div class="height_15"></div>
	
	<fieldset> 
     <legend>4、含下拉框</legend>	
		<div class="pageNumber" total="200" showSelect="true" id="page-4"></div>
	</fieldset>
	<div class="height_15"></div>
	
	<fieldset> 
     <legend>5、自定义下拉框数据和展开方向</legend>	
		<div class="pageNumber" total="200"" pageSize="50" showSelect="true" selectDirection="bottom" selectData='{"list":[{"key":20,"value":20},{"key":50,"value":50},{"key":100,"value":100}]}'></div>
	</fieldset>
	<div class="height_15"></div>
	
	<fieldset> 
     <legend>6、含跳转框</legend>	
		<div class="pageNumber" total="200" showInput="true" id="page-6"></div>
	</fieldset>
	<div class="height_15"></div>
	
	<fieldset> 
     <legend>7、综合布局</legend>	
	 <div style="height:35px;">
		<div class="float_left padding5">左侧要放置的内容。如没有可去掉。</div>
		<div class="float_right padding5">
			<div class="pageNumber" total="200" showSelect="true" showInput="true" id="page-7"></div>
		</div>
		<div class="clear"></div>
	</div>
	
	</fieldset>
	
	<fieldset> 
     <legend>8、动态创建</legend>	
     	<button onclick="addPager()" id="testBtn">点击添加</button>
		<div id="pageContent" style="height:35px;"></div>
	</fieldset>
	 <div class="height_15"></div>
	 
	 <fieldset> 
     <legend>9、动态改变属性</legend>	
     	<div class="pageNumber" total="200" id="page-9"></div>
     	<button onclick="changePager()">改变总条数</button>
	</fieldset>
	 <div class="height_15"></div>
</div>
<script>
	$(function(){
		$("#page-1").bind("pageChange",function(e,index){
			alert(index)			
		})
		
		$("#page-4").bind("sizeChange",function(e,num){
			alert(num)			
		})
		
		$("#page-6").bind("pageChange",function(e,index){
			alert(index)			
		})
		
		$("#page-7").bind("pageChange",function(e,index){
			alert("触发分页事件，当前页："+(index+1))			
		})
		$("#page-7").bind("sizeChange",function(e,num){
			alert("触发条数改变事件，每页条数："+num)			
		})
	})
 	function addPager(){
 		var $pager=$('<div class="pageNumber" total="200" showSelect="true" showInput="true"></div>');
 		$pager.attr("total",300);
        var $pagerCon = $('<div class="float_left padding5">左侧要放置的内容。如没有可去掉。</div><div class="float_right padding5"></div><div class="clear"></div>');
		$pagerCon.eq(1).append($pager);
		$("#pageContent").append($pagerCon);
		$pager.render();
		$pager.bind("pageChange",function(e,index){
			alert(index)			
		})
		$pager.bind("sizeChange",function(e,num){
			alert(num)			
		})
    }
    function changePager(){
 		$("#page-9").attr("total",300);
		$("#page-9").render();
    }
    
</script>
</body>
</html>