<?php
require('config.php');
header("Content-Type: application/json");
$diff = $_GET["diff"];
$howmany = $_GET["number"];
if(!isset($diff)){
  $diff="easy";
}else{

}
if(!isset($howmany)){
  $howmany="20";
}else{

}
echo '{"all":[';
$sqlCount = "SELECT Count(*) FROM paintings WHERE diff = '".$diff."' LIMIT ".$howmany.";";
$resultCount = mysqli_query($conn,$sqlCount);
$total = mysqli_fetch_array($resultCount);
$sql = "SELECT * FROM paintings WHERE diff = '".$diff."' ORDER BY RAND() LIMIT ".$howmany.";";
$result = mysqli_query($conn,$sql);
$counter = 0;
$sqlAnswers = "SELECT * FROM answers ORDER BY RAND();";
$resultAnswers = mysqli_query($conn,$sqlAnswers);
$jsonAnswers = [];
$counterAnswers = 0;
$correctOrderJsonArray = [];
$con = 0;
while($rowAnswers = mysqli_fetch_assoc($resultAnswers)){
    array_push($jsonAnswers,$rowAnswers["name"]);
    shuffle($jsonAnswers);
    array_push($correctOrderJsonArray,$rowAnswers["name"]);
    $con++;
  }
while($row = mysqli_fetch_assoc($result)){
  shuffle($jsonAnswers);
  $data = $jsonAnswers[1];
  $data1 = $jsonAnswers[2];
  $data2 = $jsonAnswers[3];
  if($data == $row["correct"]){
    $data = checker($row["correct"],$jsonAnswers,1);
  }
 if($data1 == $row["correct"]){
    $data1 = checker($row["correct"],$jsonAnswers,2);
    if($data1 == $data){
      $data1 = checker($data,$jsonAnswers,2);
      if($data1 == $row["correct"]){
        $data1 = checker($data,$jsonAnswers,2);
      }
    }
  }
  if($data2 == $row["correct"]){
    $data2 = checker($row["correct"],$jsonAnswers,3);
    if($data2 == $data1){
      $data2 = checker($data,$jsonAnswers,3);
      if($data2 == $data){
        $data2 = checker($data,$jsonAnswers,3);
      }
      if($data2 == $data1){
        $data2 = checker($data,$jsonAnswers,3);
      }
      if($data2 == $row["correct"]){
        $data2 = checker($data,$jsonAnswers,3);
      }
    }
  }
  if($data==null || $data ==""){
      $data = "Ormanda Karacalar";
  }
  if($data1==null || $data1 ==""){
      $data1 = "Göl Kenarı";
  }
  if($data2==null || $data2 ==""){
      $data2 = "Narlar ve Ayvalar";
  }
  $json1Answers = ["answers"=>[$data,$data1,$data2]];
  $json = array_merge($row,$json1Answers);
  echo json_encode($json);
  if($counter < $howmany - 1){
  echo ",";
  }
  $counter++;

}
echo "]}";
mysqli_close();
function checker($correct,$arr,$number){
  shuffle($arr);
  if($correct == $arr[$number]){
    checker($correct,$arr,$number);
  }else{
    return $arr[$number];
  }
}
?>
