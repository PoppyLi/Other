<?
	$sqlZnKh = "SELECT * FROM pu_znkh WHERE state =1 ORDER BY ZnKhId ASC";
	//-------------------------------------------------------------获取职能考核
	$EnZnKh = exequery($connection, $sqlZnKh);
	while($rowZnKh = mysql_fetch_array($EnZnKh)){
		$tempZnKh[]=$rowZnKh;
	}
	if(isset($tempZnKh)){
		$arrZnKh = array();
		unset($arrZnKh);
		foreach($tempZnKh as $k=>$v){
			$arrZnKhId[] = $v['ZnKhId'];//$arrZnKhId  数组
			$arrZnKhName[] = $v['ZnKhName'];//$arrZnKhName  数组
		}
	
	}else{
		die();
	}
	
	
	$sqlKhZb = "SELECT * FROM pu_khzb WHERE state =1 ORDER BY ZnKhId ASC,KhZbId ASC";
	//获取考核指标表
	$EnKhZb = exequery($connection, $sqlKhZb);
	while($rowKhZb = mysql_fetch_array($EnKhZb)){
		$tempKhZb[]=$rowKhZb;
	}
	if(isset($tempKhZb)){
		$arrKhZb = array();
		unset($arrKhZb);
		foreach($tempKhZb as $k=>$v){
			$arrKhZbZnId[] = $v['ZnKhId'];//$arrKhZbZnId  数组
			$arrKhZbKhId[] = $v['KhZbId'];//$arrKhZbKhId  数组
			$arrKhZbName[] = $v['KhZbName'];//$arrKhZbName 数组
		}
	}else{
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
	
	$sqlKhZbNoSta = "SELECT * FROM pu_khzb ORDER BY ZnKhId ASC,KhZbId ASC";
	$EnKhZbNoSta = exequery($connection, $sqlKhZbNoSta);
	while($rowKhZbNoSta = mysql_fetch_array($EnKhZbNoSta)){
		$tempKhZbNoSta[]=$rowKhZbNoSta;
	}
	if(isset($tempKhZbNoSta)){
		$arrKhZbNoSta = array();
		unset($arrKhZbNoSta);
		foreach($tempKhZbNoSta as $k=>$v){
			$arrKhZbNoStaZnId[] = $v['ZnKhId'];//$arrKhZbNoStaZnId  数组
			$arrKhZbNoStaKhId[] = $v['KhZbId'];//$arrKhZbNoStaKhId  数组
			$arrKhZbNoStaName[] = $v['KhZbName'];//$arrKhZbNoStaName 数组
			$arrKhZbNoStaSta[] = $v['state'];//$arrKhZbNoStaSta
		}
	}else{
		die();
	}
	
	
	//-------------------------------------------------------------职能考核每个项目的个数
	$sqlSetTableCountNo ="select count(ZnKhId) ZnKhId from pu_khzb group by ZnKhId";
	$EnSetTableCountNo = exequery($connection, $sqlSetTableCountNo);
	while($rowSetTableCountNo = mysql_fetch_array($EnSetTableCountNo)){
		$tempSetTableCountNo[]=$rowSetTableCountNo;
	}
	if(isset($tempSetTableCountNo)){
		$arrSetTableCountNo = array();
		unset($arrSetTableCountNo);
		foreach($tempSetTableCountNo as $k=>$v){
			$arrSetTableCountNo[] = $v['ZnKhId'];//$arrSetTableCountNo 数组
		}
	}else{
		die();
	}
	
	$sqlZnKhNo = "SELECT * FROM pu_znkh ORDER BY ZnKhId ASC";
	//-------------------------------------------------------------获取职能考核
	$EnZnKhNo = exequery($connection, $sqlZnKhNo);
	while($rowZnKhNo = mysql_fetch_array($EnZnKhNo)){
		$tempZnKhNo[]=$rowZnKhNo;
	}
	if(isset($tempZnKhNo)){
		$arrZnKhNo = array();
		unset($arrZnKhNo);
		foreach($tempZnKhNo as $k=>$v){
			$arrZnKhNoId[] = $v['ZnKhId'];//$arrZnKhNoId  数组
			$arrZnKhNoName[] = $v['ZnKhName'];//$arrZnKhNoName  数组
			$arrZnKhNoSta[] = $v['state'];//$arrZnKhNoSta
		}
	}else{
		die();
	}
?>