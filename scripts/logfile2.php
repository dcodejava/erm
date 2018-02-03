
<?php
function logmodal($pid,$taskid,$c)
{
	
?>
<div id='logModal<?php echo $pid.$taskid; ?>' class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="classInfo" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
          ×
        </button>
        <h4 class="modal-title" id="classModalLabel">
              Log File
            </h4>
      </div>
      <div class="modal-body">
        <form class="well form-horizontal" action="myprojects.php" method="post"  id="contact_form" style="background-color:#FFFFFF;">
                    <fieldset style="background-color:#FFFFFF;">
                           <table class="table table-striped table-bordered table-list" id="t2t">
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
          </thead>
          <tbody>
            <?php 
	 $query='SELECT pid,taskid,date,time,asigned_by,assignee,status,transfer_remark FROM `logtable` where taskid="'.$taskid.'" and pid="'.$pid.'" ORDER BY date DESC, time DESC';
	 
	  if($queryrun = mysqli_query($c,$query))
	  {
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
	  }
	  }
	  ?>
          </tbody>
        </table>
		</form>
      </div>
      
    </div>
  </div>
</div>


<?php
}?>