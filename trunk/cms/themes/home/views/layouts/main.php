<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" />
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/wt-rotator.css" /> 
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-banner-rotato.js"></script> 
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-banner-rotato.effect.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		runbanner(950,332);
	});
</script>

<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>
<body>
 <div id="wrapper">
	<div id="top">
        	<a href="#"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" class="logo" alt="" /></a>
           <!-- <div class="cart">
                 <img src="images/cart.png" width="49" height="42" border="0" alt="" />
                 <p><span>0</span> <a href="#">Items</a></p>
            </div>--> <!-- cart-->
        <div class="clear"></div>
        <div id="allmenu">
            <div class="leftmenu"> </div>
            <ul class="menu">
            	<li><a href="#" title="">Home</a></li>
                <li><a href="#" title="">About</a>
                	<ul>
                        <li><a href="#" title="">About 2</a></li>
                        <li><a href="#" title="">About 3</a></li>
                        <li><a href="#" title="">About 3</a></li>
                	</ul>
                 </li>   
                <li><a href="#" title="">Online store</a>
                	<ul>
						<li><a href="#" title="">Firm Overview</a></li>
						<li><a href="#" title="">Areas </a></li>
						<li><a href="#" title="">News </a></li>
						<li><a href="#" title="">Recent cases </a></li>
						<li><a href="#" title="">Reservation </a></li>
						<li><a href="#" title="">FAQ</a></li>
					</ul> 
                </li>
                <li><a href="#" title="">News</a></li>
                <li><a href="#" title="">Login</a></li>
                <li style="background:none"><a href="#" title="">Liên hệ</a></li>
            </ul>
       </div><!--END  menu -->
		<div class="clear"></div>
	</div><!--End top -->

	<div class="banner">
	     <div class="container"> 
				<div class="wt-rotator">
					<a href="#"></a>   
					<div class="thumbnails"> 
						  <ul> 
								<li><a href="images/banner.jpg" title="architecture"></a></li> 
								<li><a href="images/banner1.jpg" title="architecture"></a></li> 
								<li><a href="images/banner2.jpg" title="architecture"></a></li> 
								<li><a href="images/banner3.jpg" title="architecture"></a></li> 
						  </ul> 
					</div>  
				</div> 
            </div>
	</div><!--End banner -->
	<div id="mid-area">
	   <div id="left-column">
			<div class="categories">
			 <h1 class="titleh1">CATEGORIES</h1>
				 <ul>
					 <li><a href="#">Living Room</a></li>
					 <li><a href="#">Kitchen</a></li>
					 <li><a href="#">Bedroom</a></li>
					 <li><a href="#">Home entertainment</a></li>
					 <li><a href="#">Dining room furniture</a></li>
					 <li><a href="#">Kids furniture</a></li>
					 <li><a href="#">Accessories</a></li>
					 <li><a href="#">Billiard pool tables</a></li>
					 <li><a href="#">Bathroom</a></li>
					 <li><a href="#">Entry hall</a></li>
					 <li><a href="#">Office furniture</a></li>
				 </ul>
			</div>  <!-- categories -->
			<div class="manufact">
			 <h1 class="titleh1">MANUFACTURERs</h1>
			 <select name="" class="list">
			   <option>Select</option>
			   <option>Number 2</option>
			   <option>Number 3</option>
			   <option>Number 4</option>
			   <option>Number 5</option>
			 </select>
			</div> <!-- categories -->
			<div class="adment-pr">
			 	<h1 class="titleh1">New Product</h1>
                <ul>
                	<li><img src="images/logo_thuonghoi.jpg" alt="" /></li>
			 		<li><img src="images/new-pr.jpg" width="168" height="218" alt=""  /></li> 
                </ul>
			</div> <!-- Adment-pr-->
		</div> <!-- End Left-column -->

	   <div id="center-column">
		<h1 class="titleh1"><span>FEATURED PRODUCTS</span></h1>
			<div id="allproducts">
				<div class="products">
					 <img src="images/pr-1.jpg" width="207" height="172" border="0" alt="" />
					 <p>Avenue Six Slick Cube Orange New Occasional Table</p>
					 <h2 class="titleh2">$149.00</h2>
					 <input name="" type="button" class="btn-1" />
					 <input name="" type="button" class="btn-2" />
				</div> <!-- products -->
				<div class="products">
					 <img src="images/pr-2.jpg" width="207" height="172" border="0" alt="" />
					 <p>Avenue Six Slick Cube Orange New Occasional Table</p>
					 <h2 class="titleh2">$149.00</h2>
					 <input name="" type="button" class="btn-1" />
					 <input name="" type="button" class="btn-2" />
				</div> <!-- products -->
				<div class="products">
					 <img src="images/pr-3.jpg" width="207" height="172" border="0" alt="" />
					 <p>Avenue Six Slick Cube Orange New Occasional Table</p>
					 <h2  class="titleh2">$149.00</h2>
					 <input name="" type="button" class="btn-1" />
					 <input name="" type="button" class="btn-2" />
				</div> <!-- products -->
				<div class="products">
					 <img src="images/pr-4.jpg" width="207" height="172" border="0" alt="" />
					 <p>Avenue Six Slick Cube Orange New Occasional Table</p>
					 <h2 class="titleh2">$149.00</h2>
					 <input name="" type="button" class="btn-1" />
					 <input name="" type="button" class="btn-2" />
				</div> <!-- products -->
				<div class="products">
					 <img src="images/pr-1.jpg" width="207" height="172" border="0" alt="" />
					 <p>Avenue Six Slick Cube Orange New Occasional Table</p>
					 <h2 class="titleh2">$149.00</h2>
					 <input name="" type="button" class="btn-1" />
					 <input name="" type="button" class="btn-2" />
				</div> <!-- products -->
				<div class="products">
					 <img src="images/pr-2.jpg" width="207" height="172" border="0" alt="" />
					 <p>Avenue Six Slick Cube Orange New Occasional Table</p>
					 <h2 class="titleh2">$149.00</h2>
					 <input name="" type="button" class="btn-1" />
					 <input name="" type="button" class="btn-2" />
				</div> <!-- products -->
				<div class="products">
					 <img src="images/pr-3.jpg" width="207" height="172" border="0" alt="" />
					 <p>Avenue Six Slick Cube Orange New Occasional Table</p>
					 <h2  class="titleh2">$149.00</h2>
					 <input name="" type="button" class="btn-1" />
					 <input name="" type="button" class="btn-2" />
				</div> <!-- products -->
				<div class="products">
					 <img src="images/pr-4.jpg" width="207" height="172" border="0" alt="" />
					 <p>Avenue Six Slick Cube Orange New Occasional Table</p>
					 <h2  class="titleh2">$149.00</h2>
					 <input name="" type="button" class="btn-1" />
					 <input name="" type="button" class="btn-2" />
				</div> <!-- products -->
			</div><!--End All products-->
	   </div> <!--END center-column -->
	   <div id="right-column">
		<div class="search">
			 <h1 class="titleh1">SEARCH</h1>
			 <input name="" type="text" class="bar" value=" Search..." /> 
			 <input name="" type="button" class="go"  />
		</div> <!-- search -->
		<div class="currency">
			 <h1 class="titleh1">Currency</h1>
			 <select name="" class="list-2">
			   <option>US Dollar</option>
			   <option>Euro</option>
			   <option>Pound</option>
			 </select>
			 <input name="" type="button" class="change" value="CHANGE" />
		</div>  
		<!-- END currency -->
		<div class="sellers">
			 <h1 class="titleh1">BEST SELLERS</h1>
			 <ul class="best-sellers">
             	<li><a href="#" title="">Coco Modern Leather</a> </li>
                <li><a href="#" title="">Classic modern chairs</a></li>
                <li><a href="#" title="">Christine Schwarzer</a></li>
                <li><a href="#" title="">Charles Eames Style</a></li>
                <li><a href="#" title="">Ceramic Table Clock</a></li>
                <li><a href="#" title="">Casual livingroom </a></li>

			 </ul>
		</div>  <!--End sellers -->
		<div><img src="images/special.jpg"  alt="" /></div>
		<div class="clear"></div>
	   </div>  <!-- End right-column --> 
	</div> <!--End mid-area -->
    <div class="clear"></div>
 </div> <!-- wrapper-main -->
<!--Footer-->
<div id="allfooter">
	<div id="footer">
         <ul id="menufooter">
            <li><a href="#" title="">home page</a> - </li>
            <li><a href="#" title="">about joomla</a> - </li>
            <li><a href="#" title="">online store</a> - </li>
            <li><a href="#" title="">wrapper</a> - </li>
            <li><a href="#" title="">news page</a> - </li>
            <li><a href="#" title="">contacts</a></li>
         </ul>
	 	<p>Copyright © 2011 Interior Design House. All Rights Reserved.Joomla! is Free Software released under the GNU/GPL License.</p>
     </div>
</div><!--END footer -->
</body>
</html>

