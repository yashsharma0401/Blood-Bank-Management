<?php
$i=0;
require_once 'php/DBase.php';
$db = new DBase();
$users = $db->getUsers();

$title="Members Area";$setMemberActive="active";$bg_background="bg-success";
include 'layout/_header.php';

include 'layout/navbar.php';
?>

<?php include 'layout/_member_layout.php'; ?>

<?php include 'layout/_footer.php'; ?>
