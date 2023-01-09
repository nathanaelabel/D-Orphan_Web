<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Services\Midtrans\CallbackService;

class PaymentCallbackController extends Controller
{
    public function receive()
    {
        $callback = new CallbackService;

        if ($callback->isSignatureKeyVerified()) {
            $notification = $callback->getNotification();
            $order = $callback->getOrder();

            if ($callback->isSuccess()) {
                Transaction::where('id', $order->id)->update([
                    'status' => 'complete',
                ]);
                Transaction::find($order->transaction_id)->user->increment('money',Transaction::find($order->transaction_id)->amount);
            }

            if ($callback->isExpire()) {
                Transaction::where('id', $order->id)->update([
                    'status' => 'canceled',
                ]);
            }

            if ($callback->isCancelled()) {
                Transaction::where('id', $order->id)->update([
                    'status' => 'canceled',
                ]);
            }

            return response()
                ->json([
                    'success' => true,
                    'message' => 'Notifikasi berhasil diproses',
                ]);
        } else {
            return response()
                ->json([
                    'error' => true,
                    'message' => 'Signature key tidak terverifikasi',
                ], 403);
        }
    }
}
