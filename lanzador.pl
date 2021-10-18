#!/usr/bin/perl

#Fichero para automatización de ejecución por lotes de un ejecutable
#dado parametros de entrada

$repeticiones = 30;
@ejecutables = ("MM1fu");
@matrizSize = ("200","400","800","1000","2000","2400");
$path = "/home/maria/openMP/";
@threads = ("1", "2", "4");

foreach $exe (@ejecutables) {
	foreach $size (@matrizSize) {
	foreach $thread (@threads) {
		$fichero = "$path"."soluciones1/"."$exe"."-size"."$size"."threads"."$thread";
		#print("$fichero \n");
		for($i =0; $i<$repeticiones; $i++) {
			#print("$path$exe $size \n");
			system("$path$exe $size >> $fichero");
		}
	}
	}
}

exit(1);
