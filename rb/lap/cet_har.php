<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="../incl/template2.css">
<script src="../incl/jquery/jquery.js"></script>  
<script type="text/JavaScript">
$(document).ready(function(){
    $("#btnExport").click(function(e) {
        window.open('data:application/vnd.ms-excel,' + encodeURIComponent($('#dvData').html()));
        e.preventDefault();
    });
});
</script>
</head>
<body>
<?php  	
include ('../incl/koneksi.php');
list ($day,$month,$year) = split('[/.-]',$var);
$kini = $year.'-'.$month.'-'.$day;
echo "<center><table width=780px class='title'><tr><td class='tg'><b>LAPORAN HARIAN POLI RAWAT-JALAN</b></td></tr></table>";
$query = "select no_kwit,tgl,pasien,dokter,unit,netto from kunj where tgl='$kini' order by no_kwit";
$recordSet = &$db->Execute($query);
$jumlah = $recordSet->NumRows();
$recordSet = &$db->PageExecute($query,100,$n,false,0);
echo "<center><h2>total kunjungan tgl $var : $jumlah org </center>";
echo "<div id='dvData'>";
if($recordSet == 0){
   echo "<center><h3><i>hasil pencarian : tidak ada satupun !!</i></h3></center>";
}else{
   echo "<center><table width=780px class='isi'><tr>
         <td class='tg'><b>Kuitansi</b></font></td>
  	 	 <td class='tg'><b>Tgl</b></td>
	 	 <td class='tg'><b>Nama Pasien</b></td>
	 	 <td class='tg'><b>Dokter</b></td>
 	 	 <td class='tg'><b>-</b></td>
 	 	 <td class='tg'><b>Nilai(Rp)</b></td>
 	 	</tr>";
   while(!$recordSet->EOF){
        list($thx,$blx,$tgx)=split("-",$recordSet->fields["tgl"]);
     	$hari = $tgx."-".$blx."-".$thx;
        echo "<tr><td class='isi2'><b>".$recordSet->fields["kwit"]."</b></td>";
   		echo "<td class='isi2'><b>".$hari."</b></td>";
   		echo "<td class='isi1'><b>&nbsp;".$recordSet->fields["pasien"]."</b></td>";
   		echo "<td class='isi2'><b>".$recordSet->fields["dokter"]."</b></td>";
		echo "<td class='isi2'><b>".$recordSet->fields["unit"]."</b></td>";
		echo "<td class='isi3'><b>".number_format($recordSet->fields["netto"],0,',','.')."</b></td>";
		echo "</tr>";
		$tot = $tot+$recordSet->fields["netto"];
		$recordSet->MoveNext();
   		}
   	echo "<tr>";
	echo "<td class='isi2' colspan=5><b>Total (Rp)</b></td>";
   	echo "<td class='isi3'><b>".number_format($tot,0,',','.')."</b></td>";
	echo "</tr>";
}
echo "</table>";
echo "<p class='small'>";
$hal = ($jumlah/100);
if ($hal>1) {
	for ($j=1; $j<=$hal+1; $j++) {
	    if ($j==$n) { echo "<b>$j</b>"; }
	    else { echo " <a href=\"cet_har.php?n=$j&var=$var\" class=\"mainmenu\">$j</a> "; }
            }
	}
echo "</p>";
$db->Close($dbh);
?>
</div>
<form>
<input type=button value='cetak laporan' onclick="window.print()">
<input type="button" id="btnExport" value=" Export ke Excel " />
</form></center>
</body>
</html>