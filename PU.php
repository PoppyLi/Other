<?php
include_once("inc/auth.php");
include_once("inc/menu_button.js");
include_once("inc/utility_all.php");
?>
<html>
<head>
<title>添加绩效</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<base target ="_self" />
<script>
function LoadWindow()
{
	URL="PU_in.php";
	var returnVal=window.showModalDialog(URL,self,"edge:raised;scroll:1;status:0;help:0;resizable:1;dialogWidth:620px;dialogHeight:445px;");
	if(returnVal)   {
	   alert('添加成功！');
	}
}
</script>
<base target="_self"> 
</head>

<body class="bodycolor" topmargin="5">
<a id="reload" href="PU.php?did=<?=$did?>" style="display:none"></a>
<table width="98%" cellspacing="0" cellpadding="3" class="small" align="center">
	<tr>
    	<td><img src="/images/notify_new.gif" width="16" height="16" align="absmiddle" />&nbsp;<a href="#" onClick="LoadWindow()">对各公司进行每月评分</a>&nbsp;&nbsp;<? if($Com !="" && $month !="") echo "<input  type='button' value='返回' class='SmallButton' onClick='reload.click()'/>"?></td>
    </tr>
</table>
<?
if($Com =="" && $month ==""){
	$all_list = explode(":",$did);
	foreach($all_list as $key => $val){
		if($key==0) continue;
		$duty_list .= $key.",";
		$duty_name .= $val.",";
	}
		
	$query = "SELECT user_id,user_company,user_name from perf_user group by user_company,user_id,user_name order by user_company,user_id,user_duty";
	$cursor = exequery($connection, $query);
	$i = 0;
	$keynum = 1;
	while($ROW = mysql_fetch_array($cursor))
	{
		$i++;
		$sqlGSName ="SELECT GSName FROM pu_gs WHERE GSId = ".$ROW['user_company'];
		$ENGSName = exequery($connection, $sqlGSName);
		while($rowGSName = mysql_fetch_array($ENGSName)){
			$DUser[$i]["user_company"] = $rowGSName['GSName']; 
		}
		if($DUser[$i]["user_company"] == $DUser[$i - 1]["user_company"]){ 
			$keynum = $keynum + 1;
		}else{ 
			$keynum = 1;
		}
		$DUser[$i]["keynum"] = $keynum;
		$DUser[$i]["user_company_id"] = $ROW['user_company'];
		$DUser[$i]["user_name"] = $ROW['user_name'];
		$DUser[$i]["user_id"] = $ROW['user_id'];
		$query_str = "SELECT user_duty,user_weight from perf_user where user_id = '".$ROW['user_id']."' and user_name = '".$ROW['user_name']."' and user_company = '".$ROW['user_company']."' order by user_duty";
		$cursor_str = exequery($connection, $query_str);
		$DUser[$i]["user_noduty"] = $duty_list;
		while($R = mysql_fetch_array($cursor_str)){
			if(strpos(",".$duty_list,$R['user_duty'].",") && $R['user_weight'] != 0){
				$DUser[$i]["user_noduty"] = str_replace($R['user_duty'].",","",$DUser[$i]["user_noduty"]); 	
			}
			
			if($R['user_weight'] != 0)
				$DUser[$i]["user_duty"] .= $R['user_duty'].","; 
			$DUser[$i]["user_weight"] .= (int)$R['user_weight'].","; 
		}
}
?>
<table border="1" cellspacing="0" width="98%" class="small" cellpadding="3" align="center" bordercolor="#000000">
	<tr class="TableControl">
		<td class="menulines" align="center" style="cursor:hand" width="30"><strong>序号</strong></td>
        <td class="menulines" align="center" style="cursor:hand" width="75"><strong>公司</strong></td>
		<td class="menulines" align="center" style="cursor:hand" width="75"><strong>姓名</strong></td>
		<? foreach($all_list as $val){
			if($val == "") continue;	
		?>
		<td class="menulines" align="center" style="cursor:hand"><strong><?=$val?></strong></td>
		<? }?>
	</tr>
	<? 
	$max = 0;
	for($i=count($DUser);$i>0;$i--){
		if($max < $DUser[$i]["keynum"])
			$max = $DUser[$i]["keynum"];
				
		if($DUser[$i]["keynum"] == 1){
			$DUser[$i]["keynum"] = $max;
			$max = 0;
		}else{
			$DUser[$i]["keynum"] = 0;
		}		
	}
	
	foreach($DUser as $key => $val){
		$DuserWeight = "";
		if($DUser[$key]["user_noduty"]=="") $DUser[$key]["user_noduty"]="all";
		$DuserWeight = explode(",",substr($DUser[$key]["user_weight"],0,-1));		
	?>	
    <tr class="TableControl" style="cursor:hand">
		<td class="menulines" align="center"><?=$key?></td>
        <? if($DUser[$key]['keynum'] > 0){echo "<td class='menulines' align='center'  rowspan='".$DUser[$key]['keynum']."'>".$DUser[$key]['user_company']."</td>";}?>        
		<td class="menulines"><a href="PU.php?Com=<?=$DUser[$key]['user_company_id']?>&ComName=<?=$DUser[$key]['user_company']?>&month=<?=date("Y-m",strtotime("last month"))."-01"?>&Duty=<?=$DUser[$key]["user_noduty"]?>&UserWeight=<?=substr($DUser[$key]["user_weight"],0,-1)?>&did=<?=$did?>&DUserName=<?=$DUser[$key]["user_name"]?>"><?=$DUser[$key]["user_name"]?></a></td>
		<? foreach($all_list as $k => $v){
                if($v == "") continue;
                if($DuserWeight[$k - 1] == 0){
                    $Weight = "";
                }else{
                    $Weight = $DuserWeight[$k - 1]."%";	
                }
        ?>
                <td class="menulines" align="center"><?=$Weight?></td>
        <? }?>
	</tr>    
<? } ?>
</table>
<? }else{ 
	if(isset($Com) && isset($month)){
		//获取职能考核
		$sqlGetPjb = "SELECT * FROM pu_pj WHERE GSId = '$Com' and Time= '$month' order by ZnKhId,KhZbId ASC";
		$EnGetPjbZn = exequery($connection,$sqlGetPjb);
		while($rowGetPjbZn = mysql_fetch_array($EnGetPjbZn)){
			$tempGetPjbZn[] = $rowGetPjbZn;
		}
		if(isset($tempGetPjbZn)){
			$arrGetPjbZn = array();
			unset($arrGetPjbZn);
			foreach($tempGetPjbZn as $k => $v){
				$arrGetPjbZn[] = $v['ZnKhId'];//$arrGetPjbZn  数组
			}
		}else{
			echo "职能考核Id查询无结果!";
			die();
		}
				
		//通过职能考核id查询职能考核名
		$sqlZnIdToName = "SELECT ZnKhName FROM pu_znkh ORDER BY ZnKhId ASC";
		$EnZnIdToName = exequery($connection, $sqlZnIdToName);
		while($rowZnIdToName = mysql_fetch_array($EnZnIdToName)){
			$tempZnIdToName[]=$rowZnIdToName;
		}
		if(isset($tempZnIdToName)){
			$arrZnIdToName = array();
			unset($arrZnIdToName);
			foreach($tempZnIdToName as $k => $v){
				$arrZnIdToName[] = $v['ZnKhName'];//$arrZnIdToName  数组
			}
		}else{
			echo "职能考核Name查询无结果!";
			die();
		}
		
		//获取考核指标
		$EnGetPjbKh = exequery($connection, $sqlGetPjb);
		while($rowGetPjbKh = mysql_fetch_array($EnGetPjbKh)){
			$tempGetPjbKh[]=$rowGetPjbKh;
		}
		if(isset($tempGetPjbKh)){
			$arrGetPjbKh = array();
			unset($arrGetPjbKh);
			foreach($tempGetPjbKh as $k=>$v){
				$arrGetPjbKh[] = $v['KhZbId'];//$arrGetPjbKh 数组
			}
		}else{
			echo "考核Id指标查询无结果!";
			die();
		}
	
		//通过考核指标id查询职能考核名
		$sqlKhIdToName = "SELECT KhZbName FROM pu_khzb ORDER BY KhZbId ASC";
		$EnKhIdToName = exequery($connection, $sqlKhIdToName);
		while($rowKhIdToName = mysql_fetch_array($EnKhIdToName)){
			$tempKhIdToName[]=$rowKhIdToName;
		}
		if(isset($tempKhIdToName)){
			$arrKhIdToName = array();
			unset($arrKhIdToName);
			foreach($tempKhIdToName as $k=>$v){
				$arrKhIdToName[] = $v['KhZbName'];//$arrKhIdToName 数组
			}
		}else{
			echo "考核Name指标查询无结果!";
			die();
		}
		
		//获取实际结果
		$EnGetPjbSj = exequery($connection, $sqlGetPjb);
		while($rowGetPjbSj = mysql_fetch_array($EnGetPjbSj)){
			$tempGetPjbSj[]=$rowGetPjbSj;
		}
		if(isset($tempGetPjbSj)){
			$arrGetPjbSj = array();
			unset($arrGetPjbSj);
			foreach($tempGetPjbSj as $k=>$v){
				$arrGetPjbSj[] = $v['SjJg'];//$arrGetPjbSj 数组
			}
		}else{
			echo "实际结果查询无结果!";
			die();
		}
		//获取评价分
		$EnGetPjbPjf = exequery($connection, $sqlGetPjb);
		while($rowGetPjbPjf = mysql_fetch_array($EnGetPjbPjf)){
			$tempGetPjbPjf[]=$rowGetPjbPjf;
		}
		if(isset($tempGetPjbPjf)){
			$arrGetPjbPjf = array();
			unset($arrGetPjbPjf);
			foreach($tempGetPjbPjf as $k=>$v){
				$arrGetPjbPjf[] = $v['Pjf'];//$arrGetPjbPjf 数组
			}
		}else{
			echo "评价分查询无结果!";
			die();
		}
		//职能考核每个项目的个数	
		$sqlGetPjbKhCount ="select count(ZnKhId) ZnKhId from pu_pj where GSId = '$Com' and Time = '$month' group by ZnKhId order by KhZbId";
		$EnGetPjbKhCount = exequery($connection,$sqlGetPjbKhCount);
		while($rowGetPjbPKhCount = mysql_fetch_array($EnGetPjbKhCount)){
			$tempGetPjbPKhCount[] = $rowGetPjbPKhCount;
		}
		if(isset($tempGetPjbPKhCount)){
			$arrGetPjbPKhCount = array();
			unset($arrGetPjbPKhCount);
			foreach($tempGetPjbPKhCount as $k => $v){
				$arrGetPjbPKhCount[] = $v['ZnKhId'];//$arrGetPjbPKhCount 数组
			}
		}else{
			echo "职能个数查询无结果!";
			die();
		}
	}
?>
<table border="1" cellspacing="0" width="98%" class="small" cellpadding="3" align="center" bordercolor="#000000" onClick="add_alone()" style="cursor:pointer">
	<tr class="TableControl">
        <td colspan="4" height="30" style="font-size:16;"><strong>公司：</strong><?=$ComName?>&nbsp;&nbsp;<strong>姓名：</strong><?=$DUserName?>&nbsp;&nbsp;<strong>月份：</strong><?=$month?></td>
    </tr>
    <tr class="TableControl">
        <td align="center" width="80"><strong>职能考核</strong></td>
        <td align="center" width="120"><strong>考核指标</strong></td>
        <td align="center"><strong>实际结果</strong></td>
        <td align="center" width="80"><strong>评价分<br>(扣分制)</strong></td>
    </tr>
	<?php
		$topifs = true;
		$topifsNum = 1;
		$topifsCount = 0;
		for($fortemp = 0;$fortemp < count($arrGetPjbKh);$fortemp++){
			echo  "<tr>
			"; if($topifs){ echo "
			<td rowspan='"; echo $arrGetPjbPKhCount[$topifsCount]; echo "' width='80' height='15'>"; echo $arrZnIdToName[$arrGetPjbZn[$fortemp]-1]; echo "</td>
			"; } echo"
			<td width='120'>"; echo $arrKhIdToName[$arrGetPjbKh[$fortemp]-1]; echo "</td>
			<td>"; echo $arrGetPjbSj[$fortemp]; echo "</td>
			<td width='80'>"; echo $arrGetPjbPjf[$fortemp]; echo"</td>
			</tr>";
			$topifs = false;
			if($topifsNum/$arrGetPjbPKhCount[$topifsCount]==1){
				$topifs = true;
				$topifsCount++;
				$topifsNum = 0;
			}
			$topifsNum++;
		}
    ?>
<script Language="JavaScript">
var parent_window = parent.dialogArguments;
function add_alone(){
	parent_window.form1.Passive.value='<?=$DUserName?>';	
	parent_window.form1.distxt.value='<?=$Duty?>';		
	<?
	$tifs = true;
	$tifsNum = 1;
	$tifsCount = 0;
	$Num = 0;
	$UserWeight = explode(",",$UserWeight);
	
	foreach($UserWeight as $key => $val){
		if($val != 0)
			echo "parent_window.form1.QZ".$key.".value='".$val."';";
		else
			echo "parent_window.form1.QZ".$key.".value='';";
	}
	for($i = 0;$i < count($arrGetPjbKh);$i++){
		$Num++;
		if(!empty($arrGetPjbKh[$i])){
			echo "parent_window.form1.SJJG".$arrGetPjbKh[$i].".value='".$arrGetPjbSj[$i]."';";
			if($arrGetPjbPjf[$i] != 0)
				echo "parent_window.form1.PJF".$arrGetPjbKh[$i].".value='".$arrGetPjbPjf[$i]."';";
			else
				echo "parent_window.form1.PJF".$arrGetPjbKh[$i].".value='';";
			$tifs = false;
			if($tifsNum/$arrGetPjbPKhCount[$tifsCount]==1){
				$tifs = true;
				$tifsCount++;
				$tifsNum = 0;
			}
			$tifsNum++;
		}
	}
	?>
	parent.close();
}
</script>
</table>
<?
}
?>
</body>
</html>