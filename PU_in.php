<?php
include_once("inc/auth.php");

//��ȡ��˾����
$sqlGSName ="SELECT GSName FROM pu_gs ORDER BY GSId ASC";
$ENGSName = exequery($connection, $sqlGSName);
while($rowGSName = mysql_fetch_array($ENGSName)){
	$tempGSName[]=$rowGSName;
}

foreach($tempGSName as $k=>$v){
	$arrGSName[] = $v['GSName'];
}

include_once("SetTable.php");


//ͨ��ְ�ܿ���id��ѯְ�ܿ�����
$sqlZnIdToName = "SELECT ZnKhName FROM pu_znkh ORDER BY ZnKhId ASC";
$EnZnIdToName = exequery($connection, $sqlZnIdToName);
while($rowZnIdToName = mysql_fetch_array($EnZnIdToName)){
	$tempZnIdToName[]=$rowZnIdToName;
}
if(isset($tempZnIdToName)){
	$arrZnIdToName = array();
	unset($arrZnIdToName);
	foreach($tempZnIdToName as $k=>$v){
		$arrZnIdToName[] = $v['ZnKhName'];//$arrZnIdToName  ����
	}
}else{
	echo"<script>alert('ְ�ܿ���Name��ѯ�޽��!');history.go(-1);</script>";
	die();
}

//ͨ������ָ��id��ѯְ�ܿ�����
$sqlKhIdToName = "SELECT KhZbName FROM pu_khzb ORDER BY KhZbId ASC";
$EnKhIdToName = exequery($connection, $sqlKhIdToName);
while($rowKhIdToName = mysql_fetch_array($EnKhIdToName)){
	$tempKhIdToName[]=$rowKhIdToName;
}
if(isset($tempKhIdToName)){
	$arrKhIdToName = array();
	unset($arrKhIdToName);
	foreach($tempKhIdToName as $k=>$v){
		$arrKhIdToName[] = $v['KhZbName'];//$arrKhIdToName ����
	}
}else{
	echo"<script>alert('����Nameָ���ѯ�޽��!');history.go(-1);</script>";
	die();
}

if($incom !="" && $inmonth !=""){
	//��ȡְ�ܿ���
	$sqlGetPjb = "SELECT SjJg,Pjf FROM pu_pj WHERE GSId = '$incom' and Time = '$inmonth"."-01' order by KhZbId";
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
<title>����˾ÿ������¼��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<base target="_self"> 
<script Language="JavaScript">
function check(){
	if(document.form1.shijian.value == ""){
		alert('�����·ݲ���Ϊ��!');
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
        	<td align="center"><strong>��˾</strong></td>
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
			<td align="center"><strong>�����·�</strong></td>
            <td class="TableData" align="center">
            <select id="shijian" name="shijian" class="BigSelect" onChange="GetInfo()">
            	<option value="">��ѡ��</option>
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
        	<td align="center" width="80"><strong>ְ�ܿ���</strong></td>
        	<td align="center" width="120"><strong>����ָ��</strong></td>
			<td align="center"><strong>ʵ�ʽ��</strong></td>
            <td align="center" width="80"><strong>���۷�<br>(�۷���)</strong></td>
        </tr>
		<?php
			$topifs = true;
			$topifsNum = 1;
			$topifsCount = 0;
			for($fortemp = 0; $fortemp < count ( $arrKhZbZnId ); $fortemp ++) {
				echo "<tr>
					";
					if ($topifs) {
						echo "<td rowspan='".$arrSetTableCount[$topifsCount]."' width='80' style='WORD-BREAK: break-all; WORD-WRAP: break-word'>".$arrZnIdToName[$arrKhZbZnId [$fortemp] - 1]."</td>";
					}
					echo "<td height='30' width='120' style='WORD-BREAK: break-all; WORD-WRAP: break-word'>".$arrKhIdToName [$arrKhZbKhId [$fortemp] - 1]."</td>
					<td><input value='".$GetSjjg[$fortemp]."' type='text' style='width:270px;height:22px;' name='jg_"; echo $arrKhZbZnId[$fortemp];echo"_";echo $arrKhZbKhId[$fortemp];echo "' /></td>
					<td><input value='".$GetPjf[$fortemp]."'  type='text' style='width:63px;height:22px;text-align:right;' name='pj_"; echo $arrKhZbZnId[$fortemp];echo"_";echo $arrKhZbKhId[$fortemp];echo "' /></td>
				</tr>";
				$topifs = false;
				if ($topifsNum / $arrSetTableCount [$topifsCount] == 1) {
					$topifs = true;
					$topifsCount ++;
					$topifsNum = 0;
				}
				$topifsNum ++;
			}
		?>
        <tr>
        	<td height="20" colspan="4" align="center" class="TableData">
        		<input type="submit" class="BigButton" value="�ύ" onClick="return check()"/>
        	</td>
        </tr>
	</table>
</form>
</center>
</body>
</html>

