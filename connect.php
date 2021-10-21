<?php
	/*$Connect = mysqli_connect("sql101.byetcluster.com","epiz_30115456","pXoBnojlv713nVc","epiz_30115456_zolmkoz") or die("Lỗi".mysqli_error($Connect));
	
	mysqli_query($Connect,'SET NAMES "utf8"');
	//mysqli_close($Connect);*/
	$Connect = pg_connect("postgres://prgfgfabkocmjm:8c038aa6e4eb2632634686503f8bd6a4c76faa35bc641294761473584931af31@ec2-23-23-162-138.compute-1.amazonaws.com:5432/dchif2v18kl3t0");
    //$Connect = pg_connect("host=localhost port=5432 dbname=postgres");
	//$Connect = pg_connect("host=localhost port=5432 dbname=postgres user=postgres password=123456");
	
    if (!$Connect) {
        die("Connection failed");
    }
?>
