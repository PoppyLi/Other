<?
include_once("inc/auth.php");

if(isset($_POST['gongsi'])){
	$gongsi = $_POST['gongsi'];
}else{
	die();
}
if(isset($_POST['shijian'])){
	$shijian = $_POST['shijian'];
}else{
	echo"<script>alert('时间格式错误。');history.go(-1);</script>";
	die();
}

//判断时间
if(strlen($shijian)==6||strlen($shijian)==7){
	$qgshijian = explode('-',$shijian);
	if(!isset($qgshijian[1])){
		echo"<script>alert('时间格式错误。');history.go(-1);</script>";
		die();
	}
	if($qgshijian[0]>1900 && $qgshijian[0]<2100 && $qgshijian[1]>0 && $qgshijian[1]<=12){

	}else{
		echo"<script>alert('时间格式错误。');history.go(-1);</script>";
		die();
	}
}else{
	echo"<script>alert('时间格式错误。');history.go(-1);</script>";
	die();
}

if(strlen($shijian)==6){
	$qgshijian = explode('-',$shijian);
	if($qgshijian[1]<10){
		$shijian2 = "0".$qgshijian[1];
	}
	$shijian=$qgshijian[0]."-".$shijian2;
}

$shijianqy = $shijian;
$shijian = $shijian."-01";


//判断是否存在该公司该月份数据
$sqlSeaGsSj = "SELECT * FROM pu_pj WHERE Time ='$shijian' and GSId='$gongsi'";
$EnSeaGsSj = exequery($connection, $sqlSeaGsSj);
if($rowSeaGsSj = mysql_fetch_array($EnSeaGsSj)){
/*	echo"<script>alert('该公司该月份已经录入');window.close();</script>";
	die();*/
	$sqlDel="DELETE FROM pu_pj WHERE Time ='$shijian' and GSId='$gongsi'";
  	exequery($connection, $sqlDel);
}

?>
<html>
<head>
<title>评分</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body class="bodycolor">
<?
include_once("SetTable.php");

$arrJg = array();
unset($arrJg);
$arrPj = array();
unset($arrPj);

 for($fortemp = 0; $fortemp < count ( $arrKhZbZnId ); $fortemp ++) {
 	$jg = $_POST['jg_'.$arrKhZbZnId[$fortemp].'_'.$arrKhZbKhId[$fortemp].''];
 	$arrJg[] = $jg;
 	$pj = $_POST['pj_'.$arrKhZbZnId[$fortemp].'_'.$arrKhZbKhId[$fortemp].''];
 	$arrPj[] = $pj;
 }

 for($fortemp2 = 0; $fortemp2 < count ( $arrKhZbZnId ); $fortemp2 ++) {
  	$sqlAdd="insert into pu_pj (Time,GSId,ZnKhId,KhZbId,SjJg,Pjf) values ('$shijian','$gongsi','$arrKhZbZnId[$fortemp2];','$arrKhZbKhId[$fortemp2]','$arrJg[$fortemp2]','$arrPj[$fortemp2]')";
  	exequery($connection, $sqlAdd);
 }

echo "<script>alert('提交成功！');window.close();</script>"
?>
</body>
</html>