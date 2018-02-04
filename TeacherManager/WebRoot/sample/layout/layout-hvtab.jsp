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
<link rel="stylesheet" type="text/css" id="skin" prePath="<%=path%>/" scrollerY="false"/>
<link rel="stylesheet" type="text/css" id="customSkin"/>
<!--框架必需end-->

<!--基本选项卡start-->
<script type="text/javascript" src="<%=path%>/libs/js/nav/basicTab.js"></script>
<!--基本选项卡end-->
</head>
<body>
<table width="100%" >
	<tr>
		<!--左侧区域start-->
		<td class="ver01" width="100">
		  	<div class="singleNavMin">
				<div class="current"><span><a >选项1</a></span></div>
				<div><span><a >选项2</a></span></div>
				<div><span><a >选项3</a></span></div>
				<div><span><a >选项4</a></span></div>
				<div><span><a >选项5</a></span></div>
			</div>
		</td>
		<!--左侧区域end-->
		
		<!--右侧区域start-->
		<td width="100%" class="ver01" >
			<div class="box1">
				<div class="basicTab" iframeMode="true" showProgress="true" data='{"list":[{"name":"选项1","url":"<%=path%>/sample/layout/layout-htab-content1.jsp"},{"name":"选项2","url":"<%=path%>/sample/layout/layout-htab-content2.jsp"}]}'>
					<div style="width:99%;" id="tabContent">
						<IFRAME width="100%" height="100%" frameBorder=0 id=frmrightChild 
							name=frmrightChild 
							 allowTransparency="true"></IFRAME>
					</div>
				</div> 
			</div>			
		</td>
		<!--右侧区域end-->
	</tr>
	</table>
<script>
function customHeightSet(contentHeight){
		$("#tabContent").height(contentHeight-55)
	}
</script>
</body>
</html>