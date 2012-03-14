<?php
function date3339($timestamp=0) {
	if (!$timestamp) {
		$timestamp = time();
	}
	
	$date = date('Y-m-d\TH:i:s', $timestamp);

	$matches = array();
	if (preg_match('/^([\-+])(\d{2})(\d{2})$/', date('O', $timestamp), $matches)) {
		$date .= $matches[1].$matches[2].':'.$matches[3];
	} else {
		$date .= 'Z';
	}

	return $date;
}


header('Content-type: text/xml');

$link = mysql_connect('localhost', 'root', '')
    or die('Could not connect: ' . mysql_error());

mysql_select_db('dos') or die('Could not select database');
mysql_set_charset('utf8', $link); 

$query = 'SELECT record_id, title, content, dos_usernames_username, created FROM dos_module_abouts ORDER BY created DESC limit 0, 25';

$result = mysql_query($query) or die('Query failed: ' . mysql_error());
echo '<?xml version="1.0" encoding="utf-8"?>';

?>
 
	<feed xml:lang="en-US" xmlns="http://www.w3.org/2005/Atom"> 
  			<title>Fishing Reports</title> 
			<subtitle>The latest reports from fishinhole.com</subtitle>
 			<link href="http://www.fishinhole.com/reports" rel="self"/> 
			<updated><?php echo date3339(); ?></updated>
  			<author> 
				<name>Smithers</name>
				<email>smithers@fishinhole.com</email>
			</author>
			<id>tag:fishinhole.com,2008:http://www.fishinhole.com/reports/syndication.php</id> 
 

			<?php
				$i = 0;
				while($row = mysql_fetch_array($result))
				  {
				  if ($i > 0) {
				  	echo "</entry>";
				  }
				  $articleDate = $row['created'];
				  $articleDateRfc3339 = date3339(strtotime($articleDate));
				  echo "<entry>";
				  echo "<title>";
				  echo $row['title'];
				  echo "</title>";
				  echo "<link type='text/html' href='http://www.fishinhole.com/reports/report.php?id=".$row['record_id']."'/>";
				  echo "<id>";
				  echo "tag:fishinhole.com,2008:http://www.fishinhole.com/reports/report.php?id=".$row['record_id'];
				  echo "</id>";
				  echo "<updated>";
				  echo $articleDateRfc3339;
				  echo "</updated>";
				    echo "<author>";
				    echo "<name>";
				    echo $row['dos_usernames_username'];
				    echo "</name>";
				    echo "</author>"; 
				  echo "<summary>";
				  echo $row['content'];
				  echo "</summary>";
				  $i++;
				}			
			?>
			</entry>
		</feed>
	