<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\UpdateTransactionRequest;
use App\Models\Transaction;
use App\Models\Tutor;

class TransactionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('myadminrequestsaldotutor', [
            'transactionDatas' => Transaction::where('description', 'Requesting')->get(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('myformrequestsaldotutor');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \App\Http\Requests\StoreTransactionRequest $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($request->amount < Tutor::findOrFail(1)->user->money) {
            $check = Transaction::insert([
                'user_id' => Tutor::findOrFail(1)->user->id,
                'amount' => $request->amount,
            ]);
            $status = 'Failed to request!';
            if ($check) {
                $status = 'Has been requested!';
            }
        } else {
            $status = 'Failed to request!. Your money not enough';
        }

        return redirect('/mydashboard')->with([
            'status' => $status,
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show(Transaction $transaction)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Transaction $transaction)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateTransactionRequest $request, Transaction $transaction)
    {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(Transaction $transaction)
    {
    }

    public function changeTransactionStatus($status, $transactionId)
    {
        $check = false;
        if ($status == 'complete') {
            if (Transaction::findOrFail($transactionId)->update([
                'status' => $status,
            ])) {
                $check = Transaction::findOrFail($transactionId)->user->update([
                    'money' => Transaction::findOrFail($transactionId)->user->money + Transaction::findOrFail($transactionId)->amount,
                ]);
            }
        } elseif ($status == 'canceled') {
            $check = Transaction::findOrFail($transactionId)->update([
                'status' => $status,
            ]);
        }

        if ($check) {
            if ($status == 'complete') {
                return redirect('/myadminrequestsaldotutor')->with('status', 'Has been accepted!');
            } elseif ($status == 'canceled') {
                return redirect('/myadminrequestsaldotutor')->with('status', 'Has been canceled!');
            }
        } else {
            return redirect('/myadminrequestsaldotutor')->with('status', 'Failed!');
        }
    }
}
