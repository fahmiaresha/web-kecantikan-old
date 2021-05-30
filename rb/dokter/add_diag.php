<html>
<head>
<title>Tambah Data</title>
<link rel="stylesheet" type="text/css" href="../incl/template.css">
<link rel="stylesheet" href="../incl/jquery/chosen.css" />
<script type="text/javascript" src="../incl/jquery/jquery.js"></script> 
<script type="text/javascript" src="../incl/jquery/jquery-ui-1.8.2.custom.min.js"></script> 
<script type="text/javascript" src="../incl/jquery/chosen.jquery.js"></script>
<script type="text/javascript"> 
	$(document).ready(function(){
		$('#stok').autocomplete({source:'../apotik/suggest_obat.php', minLength:2});
		$(".chzn-select").chosen();
	});
</script>
<script type="text/javascript">
  function copas(a) {
        var isi = a.split(" - ");
		document.getElementById('resep').value = document.getElementById('resep').value+"\r\n"+isi[1];
		document.getElementById('stok').value = "";
  }
  var done = false;
  function isiresep() {
		var term = document.getElementById('formula').value;
        if (!done && http){
	   		http.open('GET', "isi_rsp.php?z=" + term, true);
	   		http.onreadystatechange = handleHttpResponse;
	   		http.send(null);
	   	    }
        }
  function handleHttpResponse() {
     if (http.readyState == 4 && http.status == 200) {
      	var isian = http.responseText;
      	//document.getElementById('resep').value = document.getElementById('resep').value + "\r\n" + isian;
      	document.getElementById('resep').value = isian;
      	}
  }
  // fungsi utama ajax
  function getHTTPObject() {
  var xmlhttp;
  if (!xmlhttp && typeof XMLHttpRequest != 'undefined') {
     try { xmlhttp = new XMLHttpRequest();
         }
     catch (e) {
         xmlhttp = false;
	 }
   }
   return xmlhttp;
   }
   var http = getHTTPObject();
</script>
<link rel="stylesheet" href="../incl/jquery/themes/ui-lightness/jquery-ui-1.8.4.custom.css" /> 
<style type="text/css"><!--	
	    /* style the auto-complete response */
	    li.ui-menu-item { font-size:12px !important; }	
--></style>
</head>
<body>
<center><table width="64%" class="title"><tr><td class='tg'><b>ENTRY PEMERIKSAAN PASIEN</b></td></tr></table>
<P><center>
<?
   include ('../incl/koneksi.php');
   echo "<h3 class='blue'>$message</h3></center>" ;
   $recordSes = &$db->Execute("select pasien,poli,dokter,asuransi from antrian where nomtri='$kode'");
   list($koas,$assr) = split(" - ",$recordSes->fields["asuransi"]);
   $nama = $recordSes->fields["pasien"];
   $poli = $recordSes->fields["poli"];
   if ($poli=='UGD'){ $poly="RAWAT INAP"; } else { $poly=$poli; }
   $dokter = $recordSes->fields["dokter"];
   list($kd,$nm)=split(" - ",$nama);
   $recordSet = &$db->Execute("select jnspny,jnsobat from riwayat where norekam='$kd'");
   $riwayat = $recordSet->fields["jnspny"];
   $alergi = $recordSet->fields["jnsobat"];
   $recordSer = &$db->Execute("select sex,ttl from pasien where kode='$kd'");
   $sex = $recordSer->fields["sex"];
   list($thx,$blx,$tgx) = split("-",$recordSer->fields["ttl"]);
   $umur = date("Y")-$thx;
   $isprs = "TB =    cm,\r\nBB =    kg,\r\nTD-Systole =    mmHg,\r\nTD-Diastole =    mmHg,\r\nResp.Rate =    /min,\r\nHeart Rate =    bpm";
?>
<form action="new_diag.php" method="post" name="trans">
<TABLE width="65%" class="isi">
  <TR>
    <TD class="ki"><b>&nbsp;No.Antrian :*</b></TD>
    <TD class="ki2"><INPUT size=10 type=text name="nomtri" class="inputbox" value=<?php echo $kode; ?> readonly="readonly" style="background-color:#FFFF99"> -> Pembayaran : <b><?=$assr?></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Tanggal :*</b></TD>
    <TD class="ki2"><INPUT size=10 type=text name="tgl" class="inputbox" value="<?php echo date("d-m-Y"); ?>" style="background-color:#FFFFFF"></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Nama Pasien :*</b></TD>
    <TD class="ki2"><INPUT size=40 type=text name="nama" class="inputbox" value="<?php echo $nama; ?>" readonly="readonly" style="background-color:#FFFF99"> <? echo $sex." ($umur th)"; ?></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Nama Dokter :*</b></TD>
    <TD class="ki2"><select name="dokter" class="inputbox">
	<?
	$recordSer = &$db->Execute("select kode,nama from dokter order by nama");
	echo "<option value=''>---</option>";
	while(!$recordSer->EOF){
  	  	$isi = $recordSer->fields["kode"]." - ".$recordSer->fields["nama"];
     	echo "<option value=".pilih($isi,$dokter).">".$isi."</option>";
  		$recordSer->MoveNext();
  	}
	?>
	</select></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Riwayat Penyakit (sebelum daftar)</b></TD>
    <TD class="ki2"><TEXTAREA name="ripen" rows=3 cols=80 class="inputbox"><?php echo $riwayat; ?></TEXTAREA></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Alergi Obat :</b></TD>
    <TD class="ki2"><TEXTAREA name="alob" rows=3 cols=80 class="inputbox"><?php echo $alergi; ?></TEXTAREA></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Anamnesa :</b></TD>
    <TD class="ki2"><TEXTAREA name="anamnesa" rows=3 cols=80 class="inputbox"></TEXTAREA></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Pemeriksaan :</b></TD>
    <TD class="ki2"><TEXTAREA name="periksa" rows=4 cols=80 class="inputbox"></TEXTAREA></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Pemeriksaan<br>&nbsp;Penunjang :</b></TD>
    <TD class="ki2"><TEXTAREA name="periksa2" rows=7 cols=80 class="inputbox"><?=$isprs?></TEXTAREA></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Diagnosa 1 :</b></TD>
    <TD class="ki2"><select name="diagnosa1" id="diagnosa1" class="chzn-select" style="width:300px;">
    <option value='' />---
	<?php
	$query = "select nama from penyakit order by nama";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $items=$recordSet->fields["nama"];
	      			echo "<option value='$items' />".strtoupper($items);
					$recordSet->MoveNext();
			}
	?>
	</SELECT></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Diagnosa 2 :</b></TD>
    <TD class="ki2"><select name="diagnosa2" id="diagnosa2" class="chzn-select" style="width:300px;">
    <option value='' />---
	<?php
	$query = "select nama from penyakit order by nama";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $items=$recordSet->fields["nama"];
	      			echo "<option value='$items' />".strtoupper($items);
					$recordSet->MoveNext();
			}
	?>
	</SELECT></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Jasa 1 :</b></TD>
    <TD class="ki2"><SELECT name="jasa1" id="jasa1" class="chzn-select" style="width:250px;">
    <option value='' />---
	<?php
	$query = "select kode,item from tarif where tipe='JASA' order by item";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["item"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Jasa 2 :</b></TD>
    <TD class="ki2"><SELECT name="jasa2" id="jasa2" class="chzn-select" style="width:250px;">
    <option value='' />---
	<?php
	$query = "select kode,item from tarif where tipe='JASA' order by item";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["item"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Tindakan 1 :</b></TD>
    <TD class="ki2"><SELECT name="tindakan1" id="tindakan1" class="chzn-select" style="width:350px;">
    <option value='' />---
	<?php
	$query = "select kode,item from tarif where unit='$poly' and tipe='TINDAKAN' order by item";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["item"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT> Pakai BHP? <INPUT type="checkbox" name="bhp1" value=1 checked></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Tindakan 2 :</b></TD>
    <TD class="ki2"><SELECT name="tindakan2" id="tindakan2" class="chzn-select" style="width:350px;">
    <option value='' />---
	<?php
	$query = "select kode,item from tarif where unit='$poly' and tipe='TINDAKAN' order by item";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["item"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT>  Pakai BHP? <INPUT type="checkbox" name="bhp2" value=1 checked></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Tindakan 3 :</b></TD>
    <TD class="ki2"><SELECT name="tindakan3" id="tindakan3" class="chzn-select" style="width:350px;">
    <option value='' />---
	<?php
	$query = "select kode,item from tarif where unit='$poly' and tipe='TINDAKAN' order by item";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["item"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT>  Pakai BHP? <INPUT type="checkbox" name="bhp3" value=1 checked></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Tindakan 4 :</b></TD>
    <TD class="ki2"><SELECT name="tindakan4" id="tindakan4" class="chzn-select" style="width:350px;">
    <option value='' />---
	<?php
	$query = "select kode,item from tarif where unit='$poly' and tipe='TINDAKAN' order by item";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["item"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT>  Pakai BHP? <INPUT type="checkbox" name="bhp4" value=1 checked></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Tindakan 5 :</b></TD>
    <TD class="ki2"><SELECT name="tindakan5" id="tindakan5" class="chzn-select" style="width:350px;">
    <option value='' />---
	<?php
	$query = "select kode,item from tarif where unit='$poly' and tipe='TINDAKAN' order by item";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["item"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT>  Pakai BHP? <INPUT type="checkbox" name="bhp5" value=1 checked></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Tindakan 6 :</b></TD>
    <TD class="ki2"><SELECT name="tindakan6" id="tindakan6" class="chzn-select" style="width:350px;">
    <option value='' />---
	<?php
	$query = "select kode,item from tarif where unit='$poly' and tipe='TINDAKAN' order by item";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["item"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT>  Pakai BHP? <INPUT type="checkbox" name="bhp6" value=1 checked></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Tindakan 7 :</b></TD>
    <TD class="ki2"><SELECT name="tindakan7" id="tindakan7" class="chzn-select" style="width:350px;">
    <option value='' />---
	<?php
	$query = "select kode,item from tarif where unit='$poly' and tipe='TINDAKAN' order by item";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["item"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT>  Pakai BHP? <INPUT type="checkbox" name="bhp7" value=1 checked></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Tindakan 8 :</b></TD>
    <TD class="ki2"><SELECT name="tindakan8" id="tindakan8" class="chzn-select" style="width:350px;">
    <option value='' />---
	<?php
	$query = "select kode,item from tarif where unit='$poly' and tipe='TINDAKAN' order by item";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["item"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT>  Pakai BHP? <INPUT type="checkbox" name="bhp8" value=1 checked></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Laboratorium Klinik 1 :</b></TD>
    <TD class="ki2"><SELECT name="lab1" id="lab1" class="chzn-select" style="width:320px;">
    <option value='' />---
	<?php
	$query = "select kode,nama from tariflab order by nama";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["nama"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Laboratorium Klinik 2 :</b></TD>
    <TD class="ki2"><SELECT name="lab2" id="lab2" class="chzn-select" style="width:320px;">
    <option value='' />---
	<?php
	$query = "select kode,nama from tariflab order by nama";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["nama"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Laboratorium Klinik 3 :</b></TD>
    <TD class="ki2"><SELECT name="lab3" id="lab3" class="chzn-select" style="width:320px;">
    <option value='' />---
	<?php
	$query = "select kode,nama from tariflab order by nama";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["nama"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Laboratorium Klinik 4 :</b></TD>
    <TD class="ki2"><SELECT name="lab4" id="lab4" class="chzn-select" style="width:320px;">
    <option value='' />---
	<?php
	$query = "select kode,nama from tariflab order by nama";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["nama"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Laboratorium Klinik 5 :</b></TD>
    <TD class="ki2"><SELECT name="lab5" id="lab5" class="chzn-select" style="width:320px;">
    <option value='' />---
	<?php
	$query = "select kode,nama from tariflab order by nama";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["nama"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Laboratorium Klinik 6 :</b></TD>
    <TD class="ki2"><SELECT name="lab6" id="lab6" class="chzn-select" style="width:320px;">
    <option value='' />---
	<?php
	$query = "select kode,nama from tariflab order by nama";
        		$recordSet = &$db->Execute($query);
        		while(!$recordSet->EOF){
        		    $kodes=$recordSet->fields["kode"];
	      			$items=$recordSet->fields["nama"];
	      			echo "<option value='$kodes - $items' />".ucwords(strtolower($items));
					$recordSet->MoveNext();
			}
	?>
	</SELECT></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;di Rujuk ke :</b></TD>
    <TD class="ki2"><SELECT id="rujuk" name="rujuk" class="chzn-select" style="width:150px;"><OPTION value="">---</OPTION><OPTION value="Rawat Inap">Rawat Inap</OPTION><OPTION value="ICU">ICU</OPTION><OPTION value="Operasi">Operasi</OPTION></SELECT></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;di Rujuk ke RS lain :</b></TD>
    <TD class="ki2"><INPUT size=50 type="text" id="rujukrs" name="rujukrs" class="inputbox"></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;ICD-X 1 :</b></TD>
    <TD class="ki2"><INPUT size=83 type="text" id="icdx1" name="icdx1" class="inputbox"></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;ICD-X 2 :</b></TD>
    <TD class="ki2"><INPUT size=83 type="text" id="icdx2" name="icdx2" class="inputbox"></TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Cari stok obat (ketik 2 hrf awal):</b></TD>
    <TD class="ki2"><INPUT size=63 type=text id="stok" name="stok" class="inputbox" value=""> <img src="../img/next.gif" id="plus" onclick="copas(document.getElementById('stok').value)"></img> (klik u/ salin nama obat)</TD></TR>
  <TR>
    <TD class="ki"><b>&nbsp;Terapi/Resep :</b></TD>
    <TD class="ki2">
	<SELECT name="formula" id="formula" class="inputbox" onchange="isiresep()">
    <option value=''> -- pilih dari daftar formula resep yg ada -- </option>
	<?php
	$recordSem = &$db->Execute("select id,nama from formula order by nama");
    while(!$recordSem->EOF){
        	$ide=$recordSem->fields["id"];
	      	$items=$recordSem->fields["nama"];
	      	echo "<option value='$ide'>$items</option>";
			$recordSem->MoveNext();
	}
	?>
	</SELECT></TD></TR>
  <TR>
    <TD class="tg2"><a href="../admin/dat_mims.php" target="_blank"><INPUT name=mims type=button value="DATA OBAT MIMS"></a></TD>
    <TD class="ki2"><TEXTAREA id="resep" name="resep" rows=8 cols=80 class="inputbox"></TEXTAREA></TD></TR>
  <TR>
    <TD colspan=2 class="tg2"><INPUT type="hidden" name="poli" value="<?=$poli?>">
    <INPUT name=submit type=submit value=" MASUKKAN " class="button" onclick="return confirm('sudah benar isi RESEP nya?')"></TD></TR>
</TABLE></P>
</form></center>
<?php
function pilih($isi,$var)
{
 if ($var==$isi){ $isi="'".$isi."' selected"; }
 else { $isi="'".$isi."'"; }
 return $isi;
}
?>
</body>
</html>
