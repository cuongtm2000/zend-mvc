<?php
  include "class.myatomparser.php";

  # where is the feed located?
  $url = "http://dos.vn/rss.xml";

  # create object to hold data and display output
  $atom_parser = new myAtomParser($url);

  $output = $atom_parser->getOutput();	# returns string containing HTML
  echo $output;
?>