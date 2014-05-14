<?php

/*******************************************************************************
file: ranker.php
project: Ranker [quadrillion ranker]
date: July 2013
author: P. Bustamante

overview: captures users ranked selections and inserts them into data table. retrieves full results and outputs to rankResults div.

*******************************************************************************/
		
require_once 'Connection.class.php';
$connection = new Connection('newsupdate','news');

## variables to hold URL variables
$rankingsAll;
$rankList;
$rankings;
$votingtotal;
$vtotal;

if ($_GET) {

## capture variables from the URL
	$rankingsAll = $_GET['ranking'];
	$rankList = explode("|", $rankingsAll);

	$len = count($rankList);
	
	for ($i = 0; $i < $len; $i++) {
	
		$sql = "UPDATE ranker_quad
					SET	rank_total = rank_total + ($len - $i)
					WHERE ranker_id = '$rankList[$i]'";
		$results = mysqli_query($connection->con,$sql);

	}

	$sql = "SELECT * from ranker_quad
			order by rank_total desc";
	$results = mysqli_query($connection->con,$sql);
	while($rankings[]=mysqli_fetch_array($results));
	
}

?>                
			<?php
			
				$rlen = count($rankings);
				for ($i = 0; $i < $rlen-1; $i++) { 

					$userrank = array_search($rankings[$i]['ranker_id'], $rankList) ?>
	
					<div class="dragger"><p><?php echo $i+1 ?>. <?php echo $rankings[$i]['title'] ?><span class="urank">You said: <?php echo $userrank+1; ?></span></p></div>
					
		  <?php } ?>
 
