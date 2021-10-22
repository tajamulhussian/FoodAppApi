<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Register extends JsonResource {

    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request) {
        return [
            'id' => $this->id,
            'fname' => $this->fname,
            'lname' => $this->name,
            'email' => $this->email,
            'password' => $this->password,
            'card_name' => $this->card_name,
            'card_number' => $this->card_number,
            'ccv' => $this->ccv,
            'e_date' => $this->e_date,
            'gender' => $this->gender,
            'address' => $this->address,
//            'created_at' => $this->created_at->format('d/m/Y'),
//            'updated_at' => $this->updated_at->format('d/m/Y'),
        ];
    }

}
