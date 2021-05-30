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
switch ($var){
    case '0':
        $bulan='';
        break;
    case '01':
        $bulan='Januari';
        break;
    case '02':
        $bulan='Pebruari';
        break;
    case '03':
        $bulan='Maret';
        break;
    case '04':
        $bulan='April';
        break;
    case '05':
        $bulan='Mei';
        break;
    case '06':
        $bulan='Juni';
        break;
    case '07':
        $bulan='Juli';
        break;
    case '08':
        $bulan='Agustus';
        break;
    case '09':
        $bulan='September';
        break;
    case '10':
        $bulan='Oktober';
        break;
    case '11':
        $bulan='Nopember';
        break;
    case '12':
        $bulan='Desember';
        break;
}
include ('../incl/koneksi.php');
$saat = $var1."-".$var;
if ($var2=='all') { $sqladd=""; }
else { $sqladd=" and supp='$var2'"; }
echo "<center><table width=850px class='title'><tr><td class='tg'><b>LAPORAN PEMBELIAN BARANG/OBAT - SUPPLIER : ".strtoupper($var2)."</b></td></tr></table>";
echo "<center><h2>Bulan : $bulan $var1</center>";
$recordSet = &$db->Execute("select tgl,supp,no_fkt,netto,expired from faktur where tgl like '$saat%' $sqladd");
//echo "select tgl,supp,no_fkt,netto,expired from faktur where tgl like '$saat%' $sqladd";
$no=1;
echo "<div id='dvData'>";
echo "<center><table width=850px class='isi'><tr>
         <td class='tg'><b>Tgl</b></td>
  	 	 <td class='tg'><b>No.Faktur</b></td>
	 	 <td class='tg'><b>Supplier</b></td>
	 	 <td class='tg'><b>Nama Barang/Obat</b></td>
	 	 <td class='tg'><b>Stok</b></td>
	 	 <td class='tg'><b>Satuan</b></td>
	 	 <td class='tg'><b>Hrg Beli</b></td>";
	 	 //echo "<td class='tg'><b>H.Beli(Avrg)</b></td>";
	 	 echo "<td class='tg'><b>Total</b></td>
	 	 </tr>";
   while(!$recordSet->EOF){
        $items=""; $harga=""; $itemz=""; $havrg=""; $sat="";
		list($thx,$blx,$tgx)=split("-",$recordSet->fields["tgl"]);
        $kini=$tgx."-".$blx."-".$thx;
        $recordSes = &$db->Execute("select nama from supplier where kode='".$recordSet->fields["supp"]."'");
        $recordSer = &$db->Execute("select a.kd_brg,b.nm_brg,a.jml,a.harga,a.sat,b.jml_stk from faktur_2 a,stock2 b where a.no_fkt='".$recordSet->fields["no_fkt"]."' and a.kd_brg=b.kd_brg");
        while(!$recordSer->EOF){
        	$items .= " - ".$recordSer->fields["nm_brg"]." (".$recordSer->fields["jml"].")<br/>";
        	$harga .= " Rp.".number_format($recordSer->fields["harga"],0,',','.')."<br/>";
        	$itemz .= $recordSer->fields["jml_stk"]."<br/>";
        	$sat .= $recordSer->fields["sat"]."<br/>";
        	$slsh = $recordSer->fields["jml_stk"];
        	$n=1; $jumlah=0;
			$recordSen = &$db->Execute("select masuk,akhir,hbeli from rwy_stock2 where kode='".$recordSer->fields["kd_brg"]."' and masuk>0 order by tgl desc");
        	while(!$recordSen->EOF){
        	  if ($recordSen->fields["masuk"]>=$slsh){ $jml[$n]=$slsh; $hrg[$n]=$recordSen->fields["hbeli"]; $slsh=0; }
        	  else { $jml[$n]=$recordSen->fields["masuk"]; $hrg[$n]=$recordSen->fields["hbeli"]; $slsh=$slsh-$recordSen->fields["masuk"]; }
        	  $jumlah += ($jml[$n]*$hrg[$n]);
        	  //echo "jumlah: ".$recordSer->fields["kd_brg"]." -> $n : ".$jumlah."<br/>";
        	  $n++;
        	  $recordSen->MoveNext(); 
        	  }
        	$havrg .= " Rp.".number_format($jumlah/$recordSer->fields["jml_stk"],0,',','.')."<br/>";
        	$recordSer->MoveNext(); 
        	}
   		echo "<tr><td class='isi2'><b>".$kini."</b></td>";
   		echo "<td class='isi2'>".$recordSet->fields["no_fkt"]."</td>";
   		echo "<td class='isi1'>&nbsp;".$recordSes->fields["nama"]."</td>";
   		echo "<td class='isi1'>".$items."</td>";
   		echo "<td class='isi3'>".$itemz."</td>";
   		echo "<td class='isi2'>".$sat."</td>";
   		echo "<td class='isi3'>".$harga."</td>";
   		//echo "<td class='isi3'>".$havrg."</td>";
   		echo "<td class='isi3'><b>".number_format($recordSet->fields["netto"],0,',','.')."</b></td>";
   		echo "</tr>";
		$no+=1;
		$total+=$recordSet->fields["netto"];
		$recordSet->MoveNext(); 
   	}
echo "<tr><td class='isi2' colspan=7><b>TOTAL</b></td>";
echo "<td class='isi3'><b>".number_format($total,0,',','.')."</b></td>";
echo "</table>";
$db->Close($dbh);
?>
</div>
<form>
<input type=button value='cetak laporan' onclick="window.print()">
<input type="button" id="btnExport" value=" Export ke Excel " />
</form></center>
</body>
</html>