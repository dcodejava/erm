<?php
include 'sqlconnect.php';
include 'init_core.php';
include 'head_info.php';
include 'sidebar.php';
include 'functions.php';

if(loggedin() && $_SESSION['uid']=="sadmin"){

?>
   <?php 
        if(isset($_POST['pname']) && isset($_POST['startproject']) && isset($_POST['endproject']) && !empty($_POST['pname']) && !empty($_POST['startproject']) && !empty($_POST['endproject']) ){
        	     $num_id=get_pid($c);
        	     $pname=$_POST['pname'];
        	     $pid=strtoupper(substr($pname,0,2)).(string)$num_id;
        	     $startproject=$_POST['startproject'];
        	     $endproject=$_POST['endproject'];
                 $party=$_POST['party'];
        	    $query="insert into project (pid,pname,startdate,deadline) values ('$pid','$pname','$startproject','$endproject')";
                   // echo "<input type='hidden' name='party' value='".$party.>";
        	    if($query_run=mysqli_query($c,$query)){
        	    update_pid((int)$num_id,$c);
        	  
        	    include 'assignemp_table.php';
        	}
			
			
        	else{
        		echo '<div class="alert alert-danger">
                      <strong>Error! Submit Again</strong>
                    </div> <meta http-equiv="refresh" content="1;url=setgoals.php" />';
				}

        }
		else if(isset($_POST['epname']) && isset($_POST['ename'])  && !empty($_POST['epname']) && !empty($_POST['ename']))
			{ 
			echo "inside existing project";
			include 'assigntask.php';
				
			}
        else
		{
        	include 'setproject.php';
        }
   ?>
   




<?php

}
?>