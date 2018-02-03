<?php
include "sqlconnect.php";
ob_start();
session_start();
//$uid=$_SESSION['uid'];
$query1="select max(date),min(date) from attendence where empid='EMP19'";
$query1_run=mysqli_query($c,$query1);
$result1=mysqli_fetch_assoc($query1_run);
$maxdate=$result1['max(date)'];
$mindate=$result1['min(date)'];
/*$query2="select min(date) from attendence where empid='EMP19'";
$query2_run=mysqli_query($c,$query2);
$result2=mysqli_fetch_assoc($query2_run);
$mindate=$result2['min(date)'];*/
echo $maxdate, $mindate;
$countabsent=0;
$countpresent=0;
$countunplanned=0;
for ($date = strtotime($mindate); $date <= strtotime($maxdate); $date = strtotime("+1 day", $date))
{
	$flag0=0;
	$flag1=0;
	$p=date("Y-m-d",$date);
	$sql="SELECT * FROM `attendence` where empid = 'EMP19' AND date= '$p'";
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
else if($row['remark']=='Unplanned Leave')
{
	$countunplanned+=1;
}
}
if($flag1==1 and $flag0==1)
	$countpresent=$countpresent+1;
}
echo $countpresent."<br>	".$countabsent;
$counttotal=$countpresent+$countabsent;



$sql="SELECT * FROM `emptask` WHERE `assignee`='EMP5' ";
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



}
echo $priorityurgentcount;
?>