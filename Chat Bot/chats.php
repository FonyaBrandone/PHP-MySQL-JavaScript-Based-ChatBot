<?php
$con = mysqli_connect("localhost", "root", "", "chat") or die(mysqli_error($con));
//Get user message through Ajax
$getMsg = mysqli_real_escape_string($con, $_POST['text']);

//Searching query database of my chatbot system AI:
$sql = "SELECT replies FROM chatbot WHERE queries LIKE '%$getMsg%' or queries = '$getMsg' or queries like '$getMsg%' or queries LIKE '%$getMsg'";
$result =mysqli_query($con, $sql) or die(mysqli_error($con));
if(mysqli_num_rows($result) > 0){
    $row = mysqli_fetch_assoc($result);
    $replay = $row['replies'];
    echo $replay;
}else{
    echo "Sorry! I get more intelligent by the day, can't process that.";
    $sql = "INSERT INTO learn(questions) VALUES('$getMsg');";
    $result = mysqli_query($con, $sql);
}
?>