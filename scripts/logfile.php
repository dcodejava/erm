
<head>
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

</head>
<body>
<?php
function logmodal($pid,$taskid,$c)
{
?>
<div id='logModal<?php echo $pid.$taskid; ?>' class="modal fade" role="dialog">
<div class="modal-dialog">
<div class="modal-content">
      <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">X</button>
		 <h4 class="modal-title" style='text-align:center;'>Log File</h4>
		 </div>
      <div class="modal-body" style='height:75%;overflow-y: scroll;'>
	  <?php 
	  $query='SELECT pid,taskid,date,time,asigned_by,assignee,status,transfer_remark FROM `logtable` where taskid="'.$taskid.'" and pid="'.$pid.'" ORDER BY date DESC, time DESC';
	 
	  if($queryrun = mysqli_query($c,$query))
	  {
	  echo'<table class="table table-striped table-bordered table-list" id="test">
		                  <thead>
		                    <tr>		                       		                       		                        
		                        <th> Project ID </th>
		                        <th> Task ID </th>
		                        <th> Assigned by </th>		                      
		                        <th> Assignee </th>
		                        <th>Date</th>
								<th>Time</th>
								<th> Status </th>
		                        
								<th>Remark</th>
		                    </tr> 
		                  </thead><tbody>';
	   while($result=mysqli_fetch_assoc($queryrun))
	   {
									
									$pid=$result['pid'];
		                            $taskid=$result['taskid'];
									
		                            $assignee=$result['assignee'];
									$asigned_by=$result['asigned_by'];
$date=$result['date'];
		                            $time=$result['time'];
		                            $status=$result['status'];
		                            
		                            $t_r=$result['transfer_remark'];
									echo "<tr> 
		                                        <td><p class='text-info'>$pid</p></td>
												<td><p class='text-info'>$taskid</p></td>
												<td><p class='text-info'>$asigned_by</p></td>
												<td><p class='text-info'>$assignee</p></td>
												<td><p class='text-info'>$date</p></td>
												<td><p class='text-info'>$time</p></td>
												<td><p class='text-info'>$status</p></td>
												<td><p class='text-info'>$t_r</p></td>
		                                           
		                            </tr> ";
		                            		   
	  }echo '<tbody></table>';}
	  else echo mysqli_error($c);
	?><div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"></button>
         </div>
	  </div>
	  </div>
	  </div>
	  </div>

<?php
}?>