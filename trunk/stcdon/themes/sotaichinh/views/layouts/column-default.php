<?php $this->beginContent('//layouts/main'); ?>
<?php
$this->widget('zii.widgets.CBreadcrumbs', array(
    'homeLink' => CHtml::link($this->lang['default'], Yii::app()->baseUrl . $this->setLangUrl(), array('title' => $this->lang['default'])),
    'links' => $this->breadcrumbs,
    'separator' => '<b>&raquo;</b>',
));
?>
<div id="left-content">
	<div class="main-box">
		<h4 class="title-left"><span>Sở Tài chính Đồng Nai</span></h4>
		<ul class="sub-cat">
			<li><a class="headerbar" href="" title="Giới thiệu">Giới thiệu</a>
				<ul class="submenu">
					<li><a href="/sotaichinh/admin/about">Danh sách</a></li>
				</ul>
			</li>
			<li><a class="headerbar" href="" title="Thành tự và định hướng">Thành tự và định hướng</a>
				<ul class="submenu">
					<li><a href="/sotaichinh/admin/projects/cat">Danh mục</a></li>
					<li><a href="/sotaichinh/admin/projects">Danh sách</a></li>
					<li><a href="/sotaichinh/admin/projects/config">Cấu hình</a></li>
				</ul>
			</li>
			<li><a class="headerbar" href="" title="Thủ tục hành chính">Thủ tục hành chính</a>
				<ul class="submenu">
					<li><a href="/sotaichinh/admin/procedures/cat">Danh mục</a></li>
					<li><a href="/sotaichinh/admin/procedures">Danh sách</a></li>
					<li><a href="/sotaichinh/admin/procedures/config">Cấu hình</a></li>
				</ul>
			</li>
			<li><a class="headerbar" href="" title="Tin tức &amp; sự kiện">Tin tức &amp; sự kiện</a>
				<ul class="submenu">
					<li><a href="/sotaichinh/admin/news/cat">Danh mục</a></li>
					<li><a href="/sotaichinh/admin/news">Danh sách</a></li>
					<li><a href="/sotaichinh/admin/news/config">Cấu hình</a></li>
				</ul>
			</li>
			<li><a class="headerbar" href="" title="Văn bản mới ban hành">Văn bản mới ban hành</a>
				<ul class="submenu">
					<li><a href="/sotaichinh/admin/jobs/cat">Danh mục</a></li>
					<li><a href="/sotaichinh/admin/jobs">Danh sách</a></li>
					<li><a href="/sotaichinh/admin/jobs/config">Cấu hình</a></li>
				</ul>
			</li>
		</ul>
	</div>
    <?php $this->getPosition('left'); ?>
	<div class="main-box">
		<h4 class="title-left"><span>Liên kế website</span></h4>
		<div class="web-link">
			<select onchange="javasript:goWebsite(this.value);">
				<option value="">Liên kế web...</option>
				<option value="http://vir.com.vn/|_blank">Tạp chí Đầu tư</option>
				<option value="http://tapchibatdongsanvietnam.vn|_blank">Tạp chí Bất Động Sản Việt Nam</option>
				<option value="http://www.khucongnghiep.com.vn/|_blank">Tạp chí Khu công nghiệp Việt Nam</option>
				<option value="http://dra.org.vn|_blank">Hiệp hội bất động sản Đồng Nai</option>
				<option value="http://www.vnrea.vn/|_blank">Hiệp hội bất động sản Việt Nam</option>
				<option value="http://www.hanquocngaynay.com/|_blank">ĐSQ Hàn Quốc Tại Việt Nam</option>
				<option value="http://dpidongnai.gov.vn/Pages/trangchu.aspx|_blank">Sở KHĐT Tỉnh Đồng Nai</option>
				<option value="http://dongnai.gdt.gov.vn|_blank">Cục Thuế Tỉnh Đồng Nai</option>
				<option value="http://www.nhontrach-dongnai.gov.vn/|_blank">Huyện Nhơn Trạch -Tỉnh Đồng Nai</option>
				<option value="http://www.dongnai.gov.vn|_blank">Tỉnh Đồng Nai</option>
				<option value="http://www.diza.vn|_blank">Ban Quản Lý Các KCN Đồng Nai -DIZA</option>
			</select>
		</div>
	</div>
</div>

<div id="right-content">
    <div class="main-right-content">
        <?php $this->widget('ext.Banner.BannerSlider', array('default_banner' => true)); ?> <div class="clear"></div>
        <?php echo $content; ?>
        <?php $this->getPosition('center') ?>
    </div>
</div> <!--End right-content -->

<div id="column-3">
    <?php $this->getPosition('right'); ?>
</div> <!--End colum3-->

<?php $this->endContent(); ?>