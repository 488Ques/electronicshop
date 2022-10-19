<?php
class user_address
{
    var $id;
    var $user_id;
    var $address_line;
    var $city;
    var $postal_code;
    var $country;

    function user_address(
        $_id,
        $_user_id,
        $_address_line,
        $_city,
        $_postal_code,
        $_country
    ) {
        $this->id = $_id;
        $this->user_id = $_user_id;
        $this->address_line = $_address_line;
        $this->city = $_city;
        $this->postal_code = $_postal_code;
        $this->country = $_country;
    }
}
