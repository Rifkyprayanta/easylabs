<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Helper\Helper;
use Picqer\Barcode\BarcodeGeneratorPNG;

class GenerateBarcodeController extends Controller
{
    public function generateBarcode()
    {
        // Generate a random number with up to 8 digits
        $data = str_pad(rand(0, 99999999), 8, '0', STR_PAD_LEFT);

        // Create an instance of BarcodeGeneratorPNG
        $generator = new BarcodeGeneratorPNG();
        
        // Generate a barcode in PNG format
        $barcode = $generator->getBarcode($data, $generator::TYPE_CODE_128);

        // Encode the barcode in base64
        $barcodeBase64 = base64_encode($barcode);

        return response()->json([
            'data' => $data,
            'barcode' => $barcodeBase64
        ]);
    }

    public function generate(Request $request)
    {
        $content = 'testing';

        // Panggil fungsi printBarcode dari Helper dengan tinggi 320
        Helper::printBarcode($content, 320);

        // Generate barcode image
        $barcodeGenerator = new \Picqer\Barcode\BarcodeGeneratorPNG();
        $barcodeImage = $barcodeGenerator->getBarcode($content, $barcodeGenerator::TYPE_CODE_128, 3, 320);
        $base64Barcode = base64_encode($barcodeImage);
        
        return response()->json([
            'barcode' => 'data:image/png;base64,' . $base64Barcode,
            'isi' => $content,
            'success' => 'Barcode generated and sent to printer'
        ]);
    }
}
