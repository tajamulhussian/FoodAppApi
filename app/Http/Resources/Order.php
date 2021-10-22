<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Order extends JsonResource {

    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request) {
        return [
            'id' => $this->id,
            'cart_id' => $this->product_id,
            'quantity' => $this->quantity,
            'total' => $this->total,
            'order_type' => $this->order_type,
            'd_address' => $this->d_address,
            'd_charge' => $this->d_charge,
            'gst_charge' => $this->gst_charge,
            'date' => $this->date,
            'pickup_store' => $this->pickup_store,
            'user_id' => $this->user_id,
            'created_at' => $this->created_at->format('d/m/Y'),
            'updated_at' => $this->updated_at->format('d/m/Y'),
        ];
    }

}
