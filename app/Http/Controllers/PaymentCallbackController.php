<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Services\Midtrans\CallbackService;

class PaymentCallbackController extends Controller
{
    public function receive(Request $request)
    {
        $serverKey = config('midtrans.server_key');
        $hashed = hash("sha512",$request->order_id.$request->status_code.$request->gross_amount.$serverKey);
        if($hashed == $request->signature_key){
            if($request->transaction_status=='capture' || $request->transaction_status=='settlement'){
                $order = Transaction::find($request->order_id);
                $order->update([
                    'status' => 'complete'
                ]);
                $order->user->increment('money', $order->amount);

                return $order->user->money;
            }else{
                return "Gagal";
            }
         
        }else{
            return "Signature Key Salah";
        }

    }
}
