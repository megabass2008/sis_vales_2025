<?php 
require('./fpdf186/fpdf.php');


$pdf = new FPDF();
$pdf->SetMargins(5,5);
$pdf->AddPage();

# Consulta SQL

#$nro_vale = 0;
#$fecha = 0;
#$fecha_ven = 0;
#$nro_exp = 0;
#$deposito = 0;
#$beneficiario = 0;
#$retira = 0;

#$cant = 0;
#$letra = 0;
#$recurso = 0;


for ($i=1; $i<=2 ; $i++) {
    if ($i == 1) {
        $imgY = 5;
        $linea_1= 56;
        $linea_2 = 138;
        $firma = 140;
    }
    else {
        $imgY = 155;
        $pdf->SetY(155);
        $linea_1= 206;
    }

$pdf->Image('./img/fondo.jpg',5,$imgY,200,15,'JPG');
$pdf->Image('./img/logo.png',0,$imgY,90,0,'PNG');

$pdf->SetX(130);
$pdf->SetFont('Arial', 'B', '14');
$pdf->Cell(30, 10, 'Vale Nro:',0,0,'C');

$pdf->SetFont('Courier', 'B', '14');
$pdf->Cell(30, 10, '99999/2024',0,0,'I');
$pdf->ln(18);

$pdf->SetFont('Arial', '', '12');$pdf->Cell(32, 5, 'Fecha:');
$pdf->SetFont('Courier', '', '12');$pdf->Cell(80, 5, '12/12/2024');

$pdf->SetFont('Arial', '', '12');$pdf->Cell(36, 5, 'Vencimiento Vale:');
$pdf->SetFont('Courier', '', '12');$pdf->Cell(40, 5, '20/12/2024');
$pdf->ln();
$pdf->SetFont('Arial', '', '12');$pdf->Cell(32, 5, 'Expediente Nro:');
$pdf->SetFont('Courier', '', '12');$pdf->Cell(80, 5, '953-1212-24');

$pdf->SetFont('Arial', '', '12');$pdf->Cell(36, 5, 'Deposito:');
$pdf->SetFont('Courier', '', '12');$pdf->Cell(40, 5, 'Ruta 12');
$pdf->ln(7);

$pdf->SetFont('Arial', '', '12');$pdf->Cell(26, 5, 'Beneficiario:');
$pdf->SetFont('Courier', '', '12');$pdf->Cell(40, 5, 'Sr. Acevedo, horacio Sebastian 24676132');
$pdf->ln();
$pdf->SetFont('Arial', '', '12');$pdf->Cell(26, 5, 'Retira:');
$pdf->SetFont('Courier', '', '12');$pdf->Cell(40, 5, 'Intendente Acevedo, horacio Sebastian 24676132');
$pdf->ln(10);

$pdf->SetFont('Times','B', '14');
$pdf->Cell(20, 5, 'Cant',0,0,'I');
$pdf->Cell(90, 5, 'Letras',0,0,'I');
$pdf->Cell(0, 5, 'Recurso',0,0,'I',);

$pdf->SetLineWidth(0.5);
$pdf->Line(5,$linea_1,200,$linea_1);
$pdf->ln(6);

for ($a=1; $a <= 10 ; $a++) {
    $pdf->SetFont('Courier', '', '11');
    $pdf->Cell(20, 7, '15.000');
    $pdf->Cell(90, 7, 'seis mil seiscientos sesenta y seis');
    $pdf->Cell(0, 7, 'Modulo alimentario Chocolate');
    $pdf->ln();
}

$pdf->SetLineWidth(0.5);
$pdf->Line(5,$linea_2,200,$linea_2);

$pdf->SetY($firma);
$pdf->SetFont('Times', 'B', '14');
$pdf->Cell(50, 5, 'Firma',0,0,'I');
$pdf->Cell(50, 5, 'Aclaracion',0,0,'I');
$pdf->Cell(50, 5, 'DNI',0,0,'I');
$pdf->Cell(50, 5, 'Tel',0,0,'I');

$pdf->SetLineWidth(0.2);
$pdf->Line(5,148,200,148);

}

$pdf->Close();
$pdf->Output();

?>