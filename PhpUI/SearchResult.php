<?php
        //Get the selected value from the dropdown
        $selected1 = $_POST["StartDate"];
        $selected2 = $_POST['End Date'];
        $selected3 = $_POST['capacity'];
        $selected4 = $_POST['Hotel Chain'];
        $selected5 = $_POST['number of rooms'];
        $selected6 = $_POST['price'];
        $selected7 = $_POST['area'];
        $selected8 = $_POST['category'];
        //connect to database
        require_once("Connection.php");
        session_start();
        //exexute the query to retrieve records based on the selected value
        $sql = "SELECT * FROM ehotel.room WHERE price = '$selected6' AND capacity = '$selected3'"; 
        $result = mysqli_query($conn,$sql);
        //Check if any records were returned
        if($result->num_rows > 0){
            //loop through the results and display them
            while($row = mysqli_fetch_assoc($result)){
                echo "<br>"."<br>"."Availability:".$row['availability']." "."roomD:".$row['roomD']." "."view:".$row['view']." "."price:".$row['Price'].
                " "."hotel_ID:".$row['Hotel_ID']." "."capacity: ".$row['Capacity'].
                " "."Hotel_Chain_ID: ".$row['Hotel_ChainID']." "."Extension: ".$row['extension']." "."RoomID:".$row['Room_ID']."<br>";
            }
        }else{
            echo "<br>"."<br>"."Does Not Exist"."<br>";
        }
        mysqli_close($conn);
    ?>