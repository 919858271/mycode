

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>无标题文档</title>
	<link href="../../tools/css/style.css" rel="stylesheet" type="text/css" />
	<link href="../../tools/css/select.css" rel="stylesheet" type="text/css" />
	  <link rel="stylesheet" href="../../tools/css/bbs.min.css" type="text/css"/>
	<link href="../../tools/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="../../tools/js/jquery.js"></script>
	<script type="text/javascript" src="../../tools/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../../tools/js/jquery.idTabs.min.js"></script>
	<script type="text/javascript" src="../../tools/js/select-ui.min.js"></script>
	<script type="text/javascript" src="../../tools/editor/kindeditor.js"></script>
	<script type="text/javascript">
		KE.show({
			id : 'que_content',
			cssPath : './index.css'
		});
	  </script>
	<script type="text/javascript">
	$(document).ready(function(e) {
		$(".select1").uedSelect({
			width : 145			  
		});
	});
	</script>
</head>
<body style="background-color:#F2F0F1; ">
	<div class="xline"></div>
	 <div class="mainindex">   
    <div class="welinfo">
    <span><img src="../../tools/images/dp.png"  /></span>
    <b>在线答疑</b>
    </div>
    <div class="formbody">
		<div id="usual1" class="usual"> 
		
			<div class="itab">
				<ul> 
				<li><a href="#tab1" class="selected ">主题列表</a></li> 
				<li><a href="#tab2">我要发表</a></li> 
				</ul>
			</div>    
			<div id="tab1" class="tabson">	
					<table  width="100%" border="1" align="center"  class="expinf tablelist">
						  <tr>
							<td><div align="center"><strong>分类</div></td>
							<td><div align="center"><strong>标题</div></td>
							<td><div align="center"><strong>作者</div></td>
							<td><div align="center"><strong>发表时间</div></td>
							<td><div align="center"><strong>回/看</div></td>
							<td><div align="center"><strong>最后回复</div></td>
							<td><div align="center"><strong>回复时间</div></td>
							<td><div align="center"><strong>操作</div></td>
						  </tr>
			  <!---循环开始-{section name=i loop=$data1}---->
						  <tr>
							<td width="8%" align="center">{$data1[i][1]}</td>
							<td width="40%" align="left" style="padding-left:18px">
								<a href="bbs_list.php?tnumber={$tnumber}&&course_id={$c_id}&&action=detial&&id={$data1[i][0]}&&pageNum=1&&idf=1" title="点击查看详细">{$data1[i][2]}</a>
							</td>
							<td width="9%" align="center"><span style="padding-left:8px">{$data1[i][4]}</span></td>
							<td width="11%" align="center"><span style="padding-left:8px">{$data1[i][5]}</span></td>
							<td width="7%" align="center"><span style="padding-left:8px">{$data1[i][7]}/{$data1[i][6]}</span></td>
							<td width="8%" align="center"><span style="padding-left:8px">{$data1[i][8]}</span></td>
							 <td width="11%" align="center"><span style="padding-left:8px">{$data1[i][9]}</span></td>
							 <td width="11%" >
							 <ul class="toolbar3" style="margin-right:35px">
									<li class="click">
										 <input name="snumber" type="hidden" id="{$data1[i][0]}" value="{$data1[i][0]}" />
										<input name="submit" type="image" src="../../tools/images/delete.png" title="点击删除" onclick="det{$data1[i][0]}()"/></a></li>
												
									</li>
		
								</ul> 
							 </td>
						  </tr>
			  <!---循环结束- {/section}---->
					</table>
				
					<ul class="am-pagination am-fr admin-content-pagination">
			  <li class="{$sty1[0]}"><a href="bbs_list.php?tnumber={$tnumber}&&course_id={$c_id}&&action=list&&pageNum=1">首页</a></li>
              <li class="{$sty1[0]}"><a href="bbs_list.php?tnumber={$tnumber}&&course_id={$c_id}&&action=list&&pageNum={$left1}">&laquo;</a></li>
              <li class="{$sty1[6]}"><a href="bbs_list.php?tnumber={$tnumber}&&course_id={$c_id}&&action=list&&pageNum={$pageNum1}">{$pageNum1}</a></li>
              <li class="{$sty1[1]}"><a href="bbs_list.php?tnumber={$tnumber}&&course_id={$c_id}&&action=list&&pageNum={$pageNum1+1}">{$pageNum1+1}</a></li>
              <li class="{$sty1[2]}"><a href="bbs_list.php?tnumber={$tnumber}&&course_id={$c_id}&&action=list&&pageNum={$pageNum1+2}">{$pageNum1+2}</a></li>
              <li class="{$sty1[3]}"><a href="bbs_list.php?tnumber={$tnumber}&&course_id={$c_id}&&action=list&&pageNum={$pageNum1+3}">{$pageNum1+3}</a></li>
              <li class="{$sty1[4]}"><a href="bbs_list.php?tnumber={$tnumber}&&course_id={$c_id}&&action=list&&pageNum={$pageNum1+4}">{$pageNum1+4}</a></li>
              <li class="{$sty1[1]}"><a href="bbs_list.php?tnumber={$tnumber}&&course_id={$c_id}&&action=list&&pageNum={$pageNum1+1}">&raquo;</a></li>
			  <li class="{$sty1[5]}"><a href="bbs_list.php?tnumber={$tnumber}&&course_id={$c_id}&&action=list&&pageNum={$last1}">最后页</a></li>
            </ul> 
				
			</div>
        </div> 
    
    
		<div id="tab2" class="tabson">  
			<ul class="forminfo">
			<form id="publish_form" name="publish_form" method="post" action="bbs_list.php?action=publish&&course_id={$c_id}&&tnumber={$tnumber}">

				<li><label><b>主题标题</b></label>		
					<div class="vocation">
					<select class="select1" name="que_kind" id="que_kind">
						<option value="默认">---请选择分类---</option>
						<option value="综合">综合</option>
						<option value="求助">求助</option>
						<option value="提问">提问</option>
						<option value="交流">交流</option>
						<option value="其他">其他</option>
					</select>
					</div>&nbsp;	
					<input name="que_title" id="que_title" type="text" class="dfinput" value=""  style="width:518px;"/>
				</li>	   	
				<li><label><b>问题内容</b></label>
				   <textarea id="que_content" name="que_content" style="width:700px;height:250px;visibility:hidden;"></textarea>   
				</li>
				<li><label>&nbsp;</label><input name="publish" id="publish" type="submit" class="btn1" value="马上发表"/></li>
		</form>
			</ul>    
		</div>     
    </div>         
	
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>   
 <script type="text/javascript"> 
	var e=document.getElementById( "link1 ") 
	e.removeAttribute( "href ") 
 </script>  
<script type="text/javascript">
	var send=document.getElementById("publish");
	send.onclick=function(){
	var title=document.getElementById("que_title").value.trim();
	
	if(title.length<5){
		alert("主题标题不少于5个字符");
			return false;
		}
	}
</script> 
<script type="text/javascript">
<!---循环开始-{section name=i loop=$data1}---->	
function det{$data1[i][0]}(){ 
  		
		 var pnumber=document.getElementById("{$data1[i][0]}").value.trim();
	   
  		 if (confirm("是否删除！！！"))  {
				if(confirm("请再次确认，是否删除！！！")){
					location.href="bbs_list.php?action=delete&&que_id="+pnumber+"&&course_id={$c_id}&&tnumber={$tnumber}";
				}else{
					return  false;
				}		 
		 }else{
			 return  false;
		 }		
}
<!---循环结束- {/section}---->		
</script>

</body>

</html>
