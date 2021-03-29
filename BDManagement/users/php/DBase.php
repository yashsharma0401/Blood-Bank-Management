<?php
class DBase {
    private $db = NULL;

    const DB_SERVER = "localhost";
    const DB_USER = "root";
    const DB_PASSWORD = "";
    const DB_NAME = "donor";

    public function __construct() {
        $dsn = 'mysql:dbname=' . self::DB_NAME . ';host=' . self::DB_SERVER;
        try {
            $this->db = new PDO($dsn, self::DB_USER, self::DB_PASSWORD);
        } catch (PDOException $e) {
            throw new Exception('Connection failed: ' .
            $e->getMessage());
        }
        return $this->db;
    }
    
    public function getdonorsbybloodtype($bloodType){
        $stmt = $this->db->prepare("SELECT * FROM donors WHERE b_type like ?");
        $stmt->execute(["%".$bloodType."%"]);
        return $stmt->fetchAll();
    }
    public function registerUser($firstName,$lastName,$email,$dob,$gender,$b_type,$address,$city,$mobile){
        $stmt = $this->db->prepare("INSERT INTO users (first_name,last_name,email,dob,gender,b_type,address,city,mobile) VALUES (?,?,?,?,?,?,?,?,?)");
        $stmt->execute([$firstName,$lastName,$email,$dob,$gender,$b_type,$address,$city,$mobile]);
        return true;
    }
    public function getUsers(){
        $stmt = $this->db->prepare("SELECT * FROM users");
        $stmt->execute();
        return $stmt->fetchAll();
    }    
}
