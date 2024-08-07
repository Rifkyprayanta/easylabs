<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
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
        $barcode = $generator->getBarcode($data, $generator::TYPE_CODE_128_A);

        // Encode the barcode in base64
        $barcodeBase64 = base64_encode($barcode);

        return response()->json([
            'data' => $data,
            'barcode' => $barcodeBase64
        ]);
    }
}
