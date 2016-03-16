<?php
include_once("inc/auth.php");

//获取公司名字
$sqlGSName ="SELECT GSName FROM pu_gs ORDER BY GSId ASC";
$ENGSName = exequery($connection, $sqlGSName);
while($rowGSName = mysql_fetch_array($ENGSName)){
	$tempGSName[]=$rowGSName;
}

foreach($tempGSName as $k=>$v){
	$arrGSName[] = $v['GSName'];
}

//获取职能考核及考核指标
$sqlGetPjb = "SELECT pu_khzb.*,pu_znkh.ZnKhName FROM pu_khzb left join pu_znkh on pu_khzb.ZnKhId=pu_znkh.ZnKhId where pu_khzb.state=1 and pu_znkh.state=1 order by ZnKhId,KhZbId ASC";
$EnGetPjbZn = exequery($connection,$sqlGetPjb);
while($rowGetPjbZn = mysql_fetch_array($EnGetPjbZn)){
	$tempGetPjbZn[] = $rowGetPjbZn;
}
if(isset($tempGetPjbZn)){
	$arrGetPjbZn = array();
	unset($arrGetPjbZn);
	$arrZnIdToName = array();
	unset($arrZnIdToName);
	$arrGetPjbKh = array();
	unset($arrGetPjbKh);
	$arrKhIdToName = array();
	unset($arrKhIdToName);		
	
	foreach($tempGetPjbZn as $k => $v){
		$arrKhZbZnId[] = $v['ZnKhId'];
		$arrZnIdToName[] = $v['ZnKhName'];
		$arrKhZbKhId[] = $v['KhZbId'];
		$arrKhIdToName[] = $v['KhZbName'];
	}
}else{
	echo "绩效考核查询无结果!";
	die();
}

//职能考核每个项目的个数
$sqlSetTableCount ="select  count(ZnKhId) ZnKhId from pu_khzb where state = 1 group by ZnKhId";
$EnSetTableCount = exequery($connection, $sqlSetTableCount);
while($rowSetTableCount = mysql_fetch_array($EnSetTableCount)){
	$tempSetTableCount[]=$rowSetTableCount;
}
if(isset($tempSetTableCount)){
	$arrSetTableCount = array();
	unset($arrSetTableCount);
	foreach($tempSetTableCount as $k=>$v){
		$arrSetTableCount[] = $v['ZnKhId'];//$arrSetTableCount 数组
	}
}else{
	die();
}


if($incom !="" && $inmonth !=""){
	//获取职能考核的评分和实际结果
	$sqlGetPjb = "SELECT SjJg,Pjf FROM pu_pj WHERE GSId = '$incom' and Time = '$inmonth"."-01' order by ZnKhId,KhZbId ASC";
	$EnGetPjbZn = exequery($connection,$sqlGetPjb);
	while($ROW = mysql_fetch_array($EnGetPjbZn)){
		$GetSjjg[] = $ROW["SjJg"];
		if($ROW["Pjf"] == 0)
			$GetPjf[] = "";
		else
			$GetPjf[] = $ROW["Pjf"];
	}
}
?>
<html>
<head>
<title>各公司每月评分录入</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<base target="_self"> 
<script Language="JavaScript">
function check(){
	if(document.form1.shijian.value == ""){
		alert('所属月份不能为空!');
		return false;
	}
}

function GetInfo(){
	var gs=document.getElementById("gongsi");
	var sj=document.getElementById("shijian");
	window.name = "dialogPage"; 
	window.open("PU_in.php?incom=" + gs.options[gs.selectedIndex].value + "&inmonth=" + sj.options[sj.selectedIndex].value,"dialogPage");
}
</script>
<base target="_self"> 
</head>

<body class="bodycolor" topmargin="5">
<center>
<form name="form1" action="PU_add.php" method="post" target="">
	<table border="1" cellspacing="0" width="98%" class="small" cellpadding="3" align="center" bordercolor="#000000">
        <tr>
        	<td align="center"><strong>公司</strong></td>
        	<td class="TableData" align="center">
            <select name="gongsi" id="gongsi" onChange="GetInfo()">
	        	<?php 
	        		for($sz = 0;$sz<count($arrGSName);$sz++){			
							
	        			?>
	        			<option value="<?php echo $sz+1;?>" <? if($sz+1 == $incom){echo "selected";}?>><?php echo $arrGSName[$sz];?></option>
	        			<?php 
	        		}
	        	?>
			</select>
            </td>
			<td align="center"><strong>所属月份</strong></td>
            <td class="TableData" align="center">
            <select id="shijian" name="shijian" class="BigSelect" onChange="GetInfo()">
            	<option value="">请选择</option>
            	<?
                	$first_month = date('Y-m',time()).'-01 00:00:01';
					$te = strtotime($first_month);
                	for($i=0;$i<7;$i++){
						if(date('Y-m',strtotime('- '.$i.' month',$te)) == $inmonth)
							echo "<option value=".date('Y-m',strtotime('- '.$i.' month',$te))." selected>".date('Y-m',strtotime('- '.$i.' month',$te))."</option>";
						else	
							echo "<option value=".date('Y-m',strtotime('- '.$i.' month',$te)).">".date('Y-m',strtotime('- '.$i.' month',$te))."</option>";
					}
				?>
            </select><!--<input id=time type="text" name="shijian" style="width:70px;" value="<?=date("Y-m")?>"/>--></td>
        </tr>
        <tr>
        	<td align="center" width="80"><strong>职能考核</strong></td>
        	<td align="center" width="120"><strong>考核指标</strong></td>
			<td align="center"><strong>实际结果</strong></td>
            <td align="center" width="80"><strong>评价分<br>(扣分制)</strong></td>
        </tr>
		<?php
			$topifs = true;
			$topifsNum = 1;
			$topifsCount = 0;
			for($fortemp = 0; $fortemp < count($arrKhZbZnId); $fortemp++) {
				echo "<tr>
					";
					if ($topifs) {
						echo "<td rowspan='".$arrSetTableCount[$topifsCount]."' width='80' style='WORD-BREAK: break-all; WORD-WRAP: break-word'>".$arrZnIdToName[$fortemp]."</td>";
					}
					echo "<td height='30' width='120' style='WORD-BREAK: break-all; WORD-WRAP: break-word'>".$arrKhIdToName[$fortemp]."</td>
					<td><input value='".$GetSjjg[$fortemp]."' type='text' style='width:270px;height:22px;' name='jg_"; echo $arrKhZbZnId[$fortemp];echo"_";echo $arrKhZbKhId[$fortemp];echo "' /></td>
					<td><input value='".$GetPjf[$fortemp]."'  type='text' style='width:63px;height:22px;text-align:right;' name='pj_"; echo $arrKhZbZnId[$fortemp];echo"_";echo $arrKhZbKhId[$fortemp];echo "' /></td>
				</tr>";
				$topifs = false;
				if ($topifsNum/$arrSetTableCount[$topifsCount]==1) {
					$topifs = true;
					$topifsCount ++;
					$topifsNum = 0;
				}
				$topifsNum ++;
			}
		?>
        <tr>
        	<td height="20" colspan="4" align="center" class="TableData">
        		<input type="submit" class="BigButton" value="提交" onClick="return check()"/>
        	</td>
        </tr>
	</table>
</form>
</center>
</body>
</html>

