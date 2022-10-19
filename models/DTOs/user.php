<?php
class user
{
    var $id;
    var $username;
    var $password;
    var $first_name;
    var $last_name;
    var $phone_number;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    function user(
        $_id,
        $_username,
        $_password,
        $_first_name,
        $_last_name,
        $_phone_number,
        $_created_at,
        $_modified_at,
        $_deleted_at
    ) {
        $this->id = $_id;
        $this->username = $_username;
        $this->password = $_password;
        $this->first_name = $_first_name;
        $this->last_name = $_last_name;
        $this->phone_number = $_phone_number;
        $this->created_at = $_created_at;
        $this->modified_at = $_modified_at;
        $this->deleted_at = $_deleted_at;
    }
}
