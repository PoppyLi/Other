<?
	$sqlZnKh = "SELECT * FROM pu_znkh WHERE state =1 ORDER BY ZnKhId ASC";
	//-------------------------------------------------------------��ȡְ�ܿ���
	$EnZnKh = exequery($connection, $sqlZnKh);
	while($rowZnKh = mysql_fetch_array($EnZnKh)){
		$tempZnKh[]=$rowZnKh;
	}
	if(isset($tempZnKh)){
		$arrZnKh = array();
		unset($arrZnKh);
		foreach($tempZnKh as $k=>$v){
			$arrZnKhId[] = $v['ZnKhId'];//$arrZnKhId  ����
			$arrZnKhName[] = $v['ZnKhName'];//$arrZnKhName  ����
		}
	
	}else{
		die();
	}
	
	
	$sqlKhZb = "SELECT * FROM pu_khzb WHERE state =1 ORDER BY ZnKhId ASC,KhZbId ASC";
	//��ȡ����ָ���
	$EnKhZb = exequery($connection, $sqlKhZb);
	while($rowKhZb = mysql_fetch_array($EnKhZb)){
		$tempKhZb[]=$rowKhZb;
	}
	if(isset($tempKhZb)){
		$arrKhZb = array();
		unset($arrKhZb);
		foreach($tempKhZb as $k=>$v){
			$arrKhZbZnId[] = $v['ZnKhId'];//$arrKhZbZnId  ����
			$arrKhZbKhId[] = $v['KhZbId'];//$arrKhZbKhId  ����
			$arrKhZbName[] = $v['KhZbName'];//$arrKhZbName ����
		}
	}else{
		die();
	}
	
	//ְ�ܿ���ÿ����Ŀ�ĸ���
	$sqlSetTableCount ="select  count(ZnKhId) ZnKhId from pu_khzb where state = 1 group by ZnKhId";
	$EnSetTableCount = exequery($connection, $sqlSetTableCount);
	while($rowSetTableCount = mysql_fetch_array($EnSetTableCount)){
		$tempSetTableCount[]=$rowSetTableCount;
	}
	if(isset($tempSetTableCount)){
		$arrSetTableCount = array();
		unset($arrSetTableCount);
		foreach($tempSetTableCount as $k=>$v){
			$arrSetTableCount[] = $v['ZnKhId'];//$arrSetTableCount ����
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
			$arrKhZbNoStaZnId[] = $v['ZnKhId'];//$arrKhZbNoStaZnId  ����
			$arrKhZbNoStaKhId[] = $v['KhZbId'];//$arrKhZbNoStaKhId  ����
			$arrKhZbNoStaName[] = $v['KhZbName'];//$arrKhZbNoStaName ����
			$arrKhZbNoStaSta[] = $v['state'];//$arrKhZbNoStaSta
		}
	}else{
		die();
	}
	
	
	//-------------------------------------------------------------ְ�ܿ���ÿ����Ŀ�ĸ���
	$sqlSetTableCountNo ="select count(ZnKhId) ZnKhId from pu_khzb group by ZnKhId";
	$EnSetTableCountNo = exequery($connection, $sqlSetTableCountNo);
	while($rowSetTableCountNo = mysql_fetch_array($EnSetTableCountNo)){
		$tempSetTableCountNo[]=$rowSetTableCountNo;
	}
	if(isset($tempSetTableCountNo)){
		$arrSetTableCountNo = array();
		unset($arrSetTableCountNo);
		foreach($tempSetTableCountNo as $k=>$v){
			$arrSetTableCountNo[] = $v['ZnKhId'];//$arrSetTableCountNo ����
		}
	}else{
		die();
	}
	
	$sqlZnKhNo = "SELECT * FROM pu_znkh ORDER BY ZnKhId ASC";
	//-------------------------------------------------------------��ȡְ�ܿ���
	$EnZnKhNo = exequery($connection, $sqlZnKhNo);
	while($rowZnKhNo = mysql_fetch_array($EnZnKhNo)){
		$tempZnKhNo[]=$rowZnKhNo;
	}
	if(isset($tempZnKhNo)){
		$arrZnKhNo = array();
		unset($arrZnKhNo);
		foreach($tempZnKhNo as $k=>$v){
			$arrZnKhNoId[] = $v['ZnKhId'];//$arrZnKhNoId  ����
			$arrZnKhNoName[] = $v['ZnKhName'];//$arrZnKhNoName  ����
			$arrZnKhNoSta[] = $v['state'];//$arrZnKhNoSta
		}
	}else{
		die();
	}
?>