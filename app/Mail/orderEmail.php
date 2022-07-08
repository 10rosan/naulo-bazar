<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class orderEmail extends Mailable
{
    use Queueable, SerializesModels;
    public $details;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($details) {
        $this->details = $details;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
     public function build() {
        $details = json_decode($this->details, true);
        return $this->from('contact.naulobazar@gamil.com', 'Naulo Bazaar')
                    ->subject('New Order')
                    ->markdown('emails.order')
                    ->with([
                        'order_id' => (isset($details['order_id']) ? $details['order_id'] : ''),
                        'order_price' => (isset($details['order_price']) ? $details['order_price'] : ''),
                        'order_by' => (isset($details['order_by']) ? $details['order_by'] : ''),
                        'order_location' => (isset($details['order_location']) ? $details['order_location'] : ''),
                        'order_email' => (isset($details['order_email']) ? $details['order_email'] : ''),
                        'order_phone' => (isset($details['order_phone']) ? $details['order_phone'] : ''),
                          'order_detail' => (isset($details['order_detail']) ? $details['order_detail'] : ''),
                        'sendTo' => (isset($details['sendTo']) ? $details['sendTo'] : '')
                           ]);
    }
}
