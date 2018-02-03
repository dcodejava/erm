
<?php
include "init_core.php";
include 'head_info.php';
include "sqlconnect.php";
include_once "functions.php";
include 'sidebar.php';
?>
<?php

if(isset($_POST['uid']) and !empty($_POST['uid']))
{
$uid=$_POST['uid'];
$uid=split('/',$uid);
$uid=$uid[1];
//$uid=$_SESSION['uid'];
$query1="select max(date),min(date) from attendence where empid='$uid'";
$query1_run=mysqli_query($c,$query1);
$result1=mysqli_fetch_assoc($query1_run);
$maxdate=$result1['max(date)'];
$mindate=$result1['min(date)'];

$countabsent=0;
$countpresent=0;
$countunplanned=0;
$totalleave=0;
$totalestimated=0;
$totalactual=0;
for ($date = strtotime($mindate); $date <= strtotime($maxdate); $date = strtotime("+1 day", $date))
{
	$flag0=0;
	$flag1=0;
	$p=date("Y-m-d",$date);
	$sql="SELECT * FROM `attendence` where empid = '$uid' AND date= '$p'";
	$r=mysqli_query($c,$sql);//r contains result send from table 
while($row= mysqli_fetch_assoc($r))
{
if($row['remark']=='walkin')
{
 $flag0=1;   
}
else if($row['remark']=='walkout')
{
 $flag1=1;   
}
else if($row['remark']=='leave')
{
    $countabsent=$countabsent+1;
}
else if($row['remark']=='UNPLANNED LEAVE')
{
	$countunplanned+=1;
}
}
if($flag1==1 and $flag0==1)
	$countpresent=$countpresent+1;
}
/*echo $countpresent."<br>	".$countabsent;
$counttotal=$countpresent+$countabsent;*/


$totalleave=$countabsent+$countunplanned;
$sql="SELECT * FROM `emptask` WHERE `assignee`='$uid' ";
$priorityurgentcount=0;
$priorityhighcount=0;
$prioritymediumcount=0;
$prioritylowcount=0;
$priorityurgenthours=0;
$priorityhighhours=0;
$prioritymediumhours=0;
$prioritylowhours=0;
$priorityurgenthoursactual=0;
$priorityhighhoursactual=0;
$prioritymediumhoursactual=0;
$prioritylowhoursactual=0;

$complexityhighcount=0;
$complexitymediumcount=0;
$complexitylowcount=0;
$complexityhighhours=0;
$complexitymediumhours=0;
$complexitylowhours=0;
$complexityhighhoursactual=0;
$complexitymediumhoursactual=0;
$complexitylowhoursactual=0;



$r=mysqli_query($c,$sql);
while($row= mysqli_fetch_array($r))
{
if($row['priority']=='urgent')
{
$priorityurgentcount++;
$priorityurgenthours+=$row['alloted_hours'];
$priorityurgenthoursactual+=$row['actual_hours'];
}
if($row['priority']=='high')
{
$priorityhighcount++;
$priorityhighhours+=$row['alloted_hours'];
$priorityhighhoursactual+=$row['actual_hours'];
}
if($row['priority']=='medium')
{
$prioritymediumcount++;
$prioritymediumhours+=$row['alloted_hours'];
$prioritymediumhoursactual+=$row['actual_hours'];
}
if($row['priority']=='low')
{
$prioritylowcount++;
$prioritylowhours+=$row['alloted_hours'];
$prioritylowhoursactual+=$row['actual_hours'];
}

if($row['complexity']=='high')
{
$complexityhighcount++;
$complexityhighhours+=$row['alloted_hours'];
$complexityhighhoursactual+=$row['actual_hours'];
}
if($row['complexity']=='medium')
{
$complexityymediumcount++;
$complexitymediumhours+=$row['alloted_hours'];
$complexitymediumhoursactual+=$row['actual_hours'];
}
if($row['complexity']=='low')
{
$complexitylowcount++;
$complexitylowhours+=$row['alloted_hours'];
$complexitylowhoursactual+=$row['actual_hours'];
}
$totalestimated+=$row['alloted_hours'];
$totalactual+=$row['actual_hours'];


}
$totalcomplextask=$complexityhighcount+$complexitylowcount+$complexitymediumcount;
$totalcomplexhrs=$complexityhighhours+$complexitylowhours+$complexitymediumhours;
$totalcomplexhrsactual=$complexityhighhoursactual+$complexitylowhoursactual+$complexitymediumhoursactual;
$totalprioritytask=$priorityhighcount+$priorityurgentcount+$prioritylowcount+$prioritymediumcount;
$totalpriorityhrs=$priorityhighhours+$priorityurgenthours+$prioritylowhours+$prioritymediumhours;
$totalpriorityhrsactual=$priorityhighhoursactual+$prioritylowhoursactual+$prioritymediumhoursactual+$priorityurgenthoursactual;

}
?>

<style>

    table, th, td {
        border: 20px solid white;
        /*border-collapse: collapse;*/
        margin-top:7%;
        margin-left: 1%;
        padding: 1px;
    }
    th, td {
        padding:1%;
    }
    tr:hover {background-color: #f5f5f5}
    /*th {*/
    /*text-align: left;*/
    /*}*/
</style>

<div class="container" style="background-color: #A1CAF1;padding:20px;margin-left:5.9%;">

    <form class="well form-horizontal" action="EmpAssmt" method="post" style="background-color:#FFFFFF;">
        <fieldset style="background-color:#FFFFFF;">

            <!-- Form Name -->
            <legend> Employee Assessment</legend>

            <div class="form-group">
                <label class="col-md-4 control-label" >Employee ID</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-id-card-o" aria-hidden="true"></i></span>
                        <input placeholder="" class="form-control" type="text" name="uid" id="tags">
						
                    </div>
					
                </div>
				<button type="Submit" class="btn btn-primary" name="sub"> Check</button>
            </div>
			
            <br>
        <h2 style="margin-left: 44%">Attendence</h2>
            <table style="width: 100%">

                <tr>
                    <th>Number of leaves</th>
                    <td>

                        <div class="col-s-3">
                            <?php 
							if(isset($totalleave) and !empty($totalleave)) echo $totalleave;
							else echo "0";?>
                           
                        </div>
                    </td>




                </tr>
                <tr>
                    <th>Working Days </th>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($countpresent) and !empty($countpresent)) echo $countpresent;
							else echo "0";?>

                        </div>
                    </td>


                <tr>
                    <th>Number of unplanned leaves </th>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($countunplanned) and !empty($countunplanned)) echo $countunplanned;
							else echo "0";;?>
                            
                        </div>
                    </td>

                <tr>
                    <th>Number of planned leaves</th>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($countabsent) and !empty($countabsent)) echo $countabsent;
							else echo "0";?>
                            
                        </div>
                    </td>

            </table>

            <br>
            <br>
            <h2 style="margin-left: 44%">Complexity</h2>
            <table style="width: 100%">
                <tr>
                    <th></th>
                    <th>Number of tasks</th>
                    <th>Estimated Hours</th>
                    <th>Actual Hours</th>
                </tr>
                <tr>
                    <th>Total</th>
                    <td>

                        <div class="col-s-3">
                            <?php if(isset($totalcomplextask) and !empty($totalcomplextask)) echo $totalcomplextask;
							else echo "0";?>
                            <!--                            <input type="text" class="form-control" placeholder="" name="sc10" readonly>-->
                        </div>
                    </td>
                    <td>

                        <div class="col-4">
                            <?php if(isset($totalcomplexhrs) and !empty($totalcomplexhrs)) echo $totalcomplexhrs;
							else echo "0";?>
                            <!--                            <input type="text" class="form-control" placeholder="" name="yr10" readonly>-->
                        </div>
                    </td>

                    <td>
                        <div class="col-4">
                            <?php if(isset($totalcomplexhrsactual) and !empty($totalcomplexhrsactual)) echo $totalcomplexhrsactual;
							else echo "0";?>
                            <!--                            <input type="text" class="form-control" placeholder="" name="per10" readonly>-->
                        </div>
                    </td>


                </tr>
                <tr>
                    <th>High</th>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($complexityhighcount) and !empty($complexityhighcount)) echo $complexityhighcount;
							else echo "0";?>
                            
                        </div>
                    </td>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($complexityhighhours) and !empty($complexityhighhours)) echo $complexityhighhours;
							else echo "0";?>
                        </div>
                    </td>
                    <td>

                        <div class="col-s-3">
                            <?php if(isset($complexityhighhoursactual) and !empty($complexityhighhoursactual)) echo $complexityhighhoursactual;
							else echo "0";?>
                        </div>
                    </td>
                </tr>

                <tr>
                    <th>Medium</th>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($complexitymediumcount) and !empty($complexitymediumcount)) echo $complexitymediumcount;
							else echo "0";?>
                        </div>
                    </td>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($complexitymediumhours) and !empty($complexitymediumhours)) echo $complexitymediumhours;
							else echo "0";?>
                        </div>
                    </td>
                    <td>

                        <div class="col-s-3">
                            <?php if(isset($complexitymediumhoursactual) and !empty($complexitymediumhoursactual)) echo $complexitymediumhoursactual;
							else echo "0";?>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>Low</th>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($complexitylowcount) and !empty($complexitylowcount)) echo $complexitylowcount;
							else echo "0";?>
                        </div>
                    </td>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($complexitylowhours) and !empty($complexitylowhours)) echo $complexitylowhours;
							else echo "0";?>
                        </div>
                    </td>
                    <td>

                        <div class="col-s-3">
                            <?php if(isset($complexitylowhoursactual) and !empty($complexityhighhoursactual)) echo $complexitylowhoursactual;
							else echo "0";?>
                        </div>
                    </td>
                </tr>

               
            </table>

            
            <h1 style="margin-left: 44%">Priority</h1>
            <table style="width: 100%">
                <tr>
                    <th></th>
                    <th>Number of tasks</th>
                    <th>Estimated Hours</th>
                    <th>Actual Hours</th>
                </tr>
                <tr>
                    <th>Total</th>
                    <td>

                        <div class="col-s-3">
                            <?php if(isset($totalprioritytask) and !empty($totalprioritytask)) echo $totalprioritytask;
							else echo "0";?>
                        </div>
                    </td>
                    <td>

                        <div class="col-4">
                            <?php if(isset($totalpriorityhrs) and !empty($totalpriorityhrs)) echo $totalpriorityhrs;
							else echo "0";?>
                        </div>
                    </td>

                    <td>
                        <div class="col-4">
                            <?php if(isset($totalpriorityhrsactual) and !empty($totalpriorityhrsactual)) echo $totalpriorityhrsactual;
							else echo "0";?>
                        </div>
                    </td>


                </tr>
                <tr>
                    <th>Urgent</th>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($priorityurgentcount) and !empty($priorityurgentcount)) echo $priorityurgentcount;
							else echo "0";?>
                        </div>
                    </td>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($priorityurgenthours) and !empty($priorityurgenthours)) echo $priorityurgenthours;
							else echo "0";?>
                        </div>
                    </td>
                    <td>

                        <div class="col-s-3">
                            <?php if(isset($priorityurgenthoursactual) and !empty($priorityurgenthoursactual)) echo $priorityurgenthoursactual;
							else echo "0";?>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>High</th>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($priorityhighcount) and !empty($priorityhighcount)) echo $priorityhighcount;
							else echo "0";?>
                        </div>
                    </td>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($priorityhighhours) and !empty($priorityhighhours)) echo $priorityhighhours;
							else echo "0";?>
                        </div>
                    </td>
                    <td>

                        <div class="col-s-3">
                            <?php if(isset($priorityhighhoursactual) and !empty($priorityhighhoursactual)) echo $priorityhighhoursactual;
							else echo "0";?>
                        </div>
                    </td>
                </tr>

                <tr>
                    <th>Medium</th>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($prioritymediumcount) and !empty($prioritymediumcount)) echo $prioritymediumcount;
							else echo "0";?>
                        </div>
                    </td>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($prioritymediumhours) and !empty($prioritymediumhours)) echo $prioritymediumhours;
							else echo "0";?>
                        </div>
                    </td>
                    <td>

                        <div class="col-s-3">
                            <?php if(isset($prioritymediumhoursactual) and !empty($prioritymediumhoursactual)) echo $prioritymediumhoursactual;
							else echo "0";?>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>Low</th>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($prioritylowcount) and !empty($prioritylowcount)) echo $prioritylowcount;
							else echo "0";?>
                        </div>
                    </td>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($prioritylowhours) and !empty($prioritylowhours)) echo $prioritylowhours;
							else echo "0";?>
                        </div>
                    </td>
                    <td>

                        <div class="col-s-3">
                            <?php if(isset($prioritylowhoursactual) and !empty($prioritylowhoursactual)) echo $prioritylowhoursactual;
							else echo "0";?>
                        </div>
                    </td>
                </tr>
</table>
<table style="width: 100%">
                <tr>
                    <th></th>
                    <td>

                        <div class="col-s-3">
                            <h4>Number of Estimated Hours</h4>
                        </div>
                    </td>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($totalestimated) and !empty($totalestimated)) echo $totalestimated;
							else echo "0";?>
                        </div>
                    </td>

                </tr>
                <tr>
                    <th></th>
                    <td>

                        <div class="col-s-3">
                            <h4>Number of Actual Hours</h4>

                        </div>
                    </td>
                    <td>
                        <div class="col-s-3">
                            <?php if(isset($totalactual) and !empty($totalactual)) echo $totalactual;
							else echo "0";?>
                        </div>

                    </td>

                </tr>

               
            </table>

        </fieldset>
    </form>
</div>
<script>
                    $( function() {
                      var availableTags = [
                        <?php employee_list($c);?>
                      ];
                      $( "#tags" ).autocomplete({
                        source: availableTags
                      });
                    } );
                    </script>