<?php
require_once('../include_path.php');
require_once(DIR_DTOS . 'user.php');

class userModel
{
    protected mysqli $db;

    public function __construct(mysqli $db)
    {
        $this->db = $db;
    }

    public function insert(string $username, string $password, ?string $first_name, ?string $last_name, string $email_address)
    {
        $stmt = $this->db->prepare('INSERT INTO user(username, password, first_name, last_name, email_address) VALUES (?, PASSWORD(?), ?, ?, ?);');
        $stmt->bind_param('sssss', $username, $password, $first_name, $last_name, $email_address);
        $stmt->execute();
        $stmt->close();
    }

    public function get(string $username): user
    {
        $stmt = $this->db->prepare('SELECT * FROM user WHERE username = ? AND deleted_at IS NULL');
        $stmt->bind_param('s', $username);
        $stmt->execute();

        $result = $stmt->get_result();
        $stmt->close();

        $row = $result->fetch_assoc();
        return new user(
            $row['id'],
            $row['username'],
            $row['password'],
            $row['first_name'],
            $row['last_name'],
            $row['email_address'],
            $row['created_at'],
            $row['modified_at'],
            $row['deleted_at'],
        );
    }

    public function login(string $username, string $password): bool
    {
        $stmt = $this->db->prepare('SELECT COUNT(*) FROM user WHERE username = ? AND password = PASSWORD(?) AND deleted_at IS NULL');
        $stmt->bind_param('ss', $username, $password);
        $stmt->execute();

        $result = $stmt->get_result();
        $stmt->close();

        return $result->num_rows > 0;
    }

    public function exist(string $username): bool
    {
        $stmt = $this->db->prepare('SELECT id FROM user WHERE username = ?');
        $stmt->bind_param('s', $username);
        $stmt->execute();

        $result = $stmt->get_result();
        $stmt->close();

        return $result->num_rows > 0;
    }
}
