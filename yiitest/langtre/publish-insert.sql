INSERT INTO `dos_bussiness` (`bussiness_id`,`bussiness_name`,`cat_parent_id`) VALUES
('am-thuc-drink','Ẩm thực - Đồ uống','root'),
('bds-kien-truc-xay-dung','BĐS - kiến trúc - xây dựng','root'),
('cong-nghe-thong-tin-vien-thong','Công nghệ thông tin - viễn thông','root'),
('du-lich','Du lịch','root'),
('giao-duc-dao-tao','Giáo dục - đào tạo','root'),
('hoa-tuoi','Hoa tươi','root'),
('luat-ke-toan','Luật - kế toán','root'),
('nha-hang-cafe','Nhà hàng - Cafe','root'),
('noi-that-ngoai-that','Nội thất - Ngoại thất','root'),
('tham-my-vien','Thẩm mỹ viện','root'),
('thoi-trang','Thời trang','root'),
('tranh-anh-qua-luu-niem','Tranh ảnh - quà lưu niệm','root');
INSERT INTO `dos_templates` (`template`,`template_name`,`created`,`description`) VALUES
('010312','Mẫu than đá','2012-02-29 18:38:05','Chuyên bán các loại than đá, than cám...'),
('070312','Mẫu Thời trang','2012-03-06 20:21:26','Chuyên bán các sản phẩm thời trang quần áo mới nhất, với các dịch vụ ưu đãi...'),
('111120','Mẫu cafe','2011-11-21 09:40:10',''),
('130312','Mẫu Đồ gỗ','2012-03-12 19:01:59','Chuyên nghiệp sản xuất ván lạng, ván ép cong định hình và keo tiêu chuẩn Carb p2, keo chịu nước, keo menamim, test mẫu thí nghiệm gỗ đặt tiêu chuẩn Carb p2'),
('200312','Mẫu Sách','2012-03-20 06:43:27','Chuyên bán các loại sách cho sinh viên, giá cả bình dân'),
('220312','Mẫu nội thất','2012-03-22 03:04:36','Chuyên bán các loại đồ nội thất, dân dụng'),
('260312','Mẫu máy tính','2012-03-26 13:44:07','Chuyên bán các loại máy tính, linh kiện, laptop, pc, sửa chữa,...');
INSERT INTO `dos_configs` (`config_name`,`config_value`,`config_desc`,`dos_templates_template`) VALUES
('advs_left_height','200','','220312'),
('advs_left_width','200','','220312'),
('banner_height','332','','220312'),
('banner_width','950','','220312'),
('logo_height','79','','220312'),
('logo_width','259','','220312'),
('news_height_thumb','100','','220312'),
('news_num_paging_cat','2','','220312'),
('news_num_paging_hot','5','','220312'),
('news_num_paging_index','2','','220312'),
('news_num_paging_new','4','','220312'),
('news_width_thumb','145','','220312'),
('products_cat_height','150','','220312'),
('products_cat_width','200','','220312'),
('products_height','400','','220312'),
('products_height_thumb','135','','220312'),
('products_num_paging_cat','6','','220312'),
('products_num_paging_new','4','','220312'),
('products_num_paging_other','2','','220312'),
('products_width','515','','220312'),
('products_width_thumb','200','','220312'),
('services_height','90','','220312'),
('services_width','145','','220312'),
('video_height_thumb','150','','220312'),
('video_num_paging_cat','2','','220312'),
('video_num_paging_index','2','','220312'),
('video_width_thumb','200','','220312');
INSERT INTO `dos_features` (`feature_id`,`feature_name`) VALUES
('gioi-thieu-dich-vu','Giới thiệu dịch vụ'),
('gioi-thieu-san-pham','Giới thiệu sản phẩm');
INSERT INTO `dos_langs` (`lang_name`,`lang`,`langen`,`admin`) VALUES
('about','Giới thiệu','About us','0'),
('actions','Thao tác','Actions','1'),
('address1','Địa chỉ công ty 1','Address 1','0'),
('address2','Địa chỉ chi nhánh','Address 2','0'),
('add_new','Thêm mới','Add new','1'),
('add_row','Thêm dòng','Add row','1'),
('advs','Quảng cáo','Adv','0'),
('banner','Logo &amp; Banner','Logo &amp; Banner','0'),
('cancel','Hủy bỏ','Cancel','1'),
('cat_parent','Phân loại','Category','1'),
('cat_title','Danh mục','Category','0'),
('cat_titleen','Danh mục En','Category','1'),
('company_name','Công ty cổ phần Thương Hội','Thuong Hoi JSC','0'),
('company_phone','Phone: 0929001001 (An)','Phone: 0929001001 (An)','0'),
('contact','Liên hệ','Contact','0'),
('contact_msg','Quý khách có thể liên hệ với chúng tôi bằng cách điền đầy đủ thông tin vào mẫu sau:','Complete the form below to contact us:','0'),
('content','Nội dung','Content','1'),
('contenten','Nội dung En','Content En','1'),
('copyright','Copyright © 2012 by Dos.vn','Copyright © 2012 by Dos.vn','0'),
('counter','Thống kê truy cập','Online counter','0'),
('create_date','Ngày tạo','Create date','1'),
('default','Trang chủ','Home page','0'),
('delete','Xóa','Delete','1'),
('description','Mô tả','Decription','1'),
('descriptionen','Mô tả En','Description','1'),
('detail','Chi tiết','Detail','0'),
('developed','Phát triển bởi','Developed by','0'),
('edit','Chỉnh sửa','Edit','1'),
('en','English','English','0'),
('hidden','Ẩn','Hidden','1'),
('hot','Nổi bật','Hot','0'),
('new','Mới','New','0'),
('news','Tin tức & sự kiện','News & Events','0'),
('normal','Bình thường','Normal','1'),
('no_record','Không tồn tại mẫu tin','No record','0'),
('order','Thứ tự','Order','1'),
('other','Khác','Other','0'),
('picture','Hình ảnh','Picture','1'),
('pic_desc','Hình mô tả','Picture decription','0'),
('pic_full','Hình lớn','Picture large','1'),
('pic_thumb','Hình thu nhỏ','Picture thumbnail','1'),
('preview','Giới thiệu sơ lược','Preview','1'),
('previewen','Giới thiệu sơ lược En','Preview','1'),
('products','Sản phẩm','Products','0'),
('read_more','Xem tiếp','Read more','0'),
('remove_pic','Xóa ảnh này','Delete this picture','1'),
('services','Dịch vụ','Services','0'),
('show','Hiển thị','Show','1'),
('sort','Sắp xếp','Sort','1'),
('supports','Hỗ trợ trực tuyến','Online support','0'),
('synchronous','Đồng bộ','Synchronous','1'),
('tag','Liên kết','Link','1'),
('tagen','Liên kết En','Link','1'),
('title','Tiêu đề','Title','1'),
('titleen','Tiêu đề En','Title En','1'),
('update','Cập nhật','Update','1'),
('vi','Tiếng Việt','Tiếng Việt','0'),
('video','Video','Video','0'),
('views','Lượt xem','Views','1');
INSERT INTO `dos_modules` (`module_id`,`module_url`,`module_title`,`module_sort`,`module_type`) VALUES
('about','about','Danh sách','2','1'),
('advs','advs','Danh sách','8','0'),
('banner','banner','Danh sách','9','0'),
('contact','contact','Danh sách','7','1'),
('default','','','1','1'),
('news','news/cats|news','Danh mục|Danh sách','5','1'),
('products','products/cats|products','Danh mục|Danh sách','3','1'),
('services','services','Danh sách','4','1'),
('supports','supports','Danh sách','10','0'),
('video','video/cats|video','Danh mục|Danh sách','6','1');
INSERT INTO `dos_values` (`value_name`,`module`,`module_id`,`function_name`) VALUES
('about_home','about','About','homeRecord'),
('advs_bottom','advs','Advs','listItemsBottom'),
('advs_center','advs','Advs','listItemsCenter'),
('advs_left','advs','Advs','listItemsLeft'),
('advs_right','advs','Advs','listItemsRight'),
('advs_top','advs','Advs','listItemsTop'),
('list_supports','supports','Supports','listItem'),
('menu_about','about','About','listMenu'),
('menu_news','news','NewsCat','listCats'),
('menu_products','products','ProductsCat','listCats'),
('menu_services','services','Services','listMenu'),
('menu_video','video','VideoCat','listCats'),
('news_hot','news','News','listItemsHot'),
('news_new','news','News','listItemsNew'),
('products_hot','products','Products','listItemHot'),
('products_new','products','Products','listItemNew'),
('video_hot','video','Video','itemHot');
INSERT INTO `dos_nationals` (`national`,`national_name`) VALUES
('VND','Việt Nam');
INSERT INTO `dos_provinces` (`province_id`,`province_name`,`dos_nationals_national`) VALUES
('1','An Giang','VND'),
('2','Bà rịa - Vũng tàu','VND'),
('3','Bạc Liêu','VND'),
('4','Bắc Cạn','VND'),
('5','Bắc Giang','VND'),
('6','Bắc Ninh','VND'),
('7','Bến Tre','VND'),
('8','Bình Dương','VND'),
('9','Bình Định','VND'),
('10','Bình Phước','VND'),
('11','Bình Thuận','VND'),
('12','Cà Mau','VND'),
('13','Cao Bằng','VND'),
('14','Cần Thơ','VND'),
('15','Đà  Nẵng','VND'),
('16','Đăk Lăk','VND'),
('17','Đắk Nông','VND'),
('18','Điện Biên','VND'),
('19','Đồng Nai','VND'),
('20','Đồng Tháp','VND'),
('21','Gia Lai','VND'),
('22','Hà Giang','VND'),
('23','Hà Nam','VND'),
('24','Hà Nội','VND'),
('25','Hà Tĩnh','VND'),
('26','Hải Dương','VND'),
('27','Hải Phòng','VND'),
('28','Hậu Giang','VND'),
('29','Hòa Bình','VND'),
('30','Thành phố Hồ Chí Minh','VND'),
('31','Hưng Yên','VND'),
('32','Khánh Hoà','VND'),
('33','Kiên Giang','VND'),
('34','Kon Tum','VND'),
('35','Lai Châu','VND'),
('36','Lạng Sơn','VND'),
('37','Lào Cai','VND'),
('38','Lâm Đồng','VND'),
('39','Long An','VND'),
('40','Nam Định','VND'),
('41','Nghệ An','VND'),
('42','Ninh Bình','VND'),
('43','Ninh Thuận','VND'),
('44','Phú Thọ','VND'),
('45','Phú Yên','VND'),
('46','Quảng Bình','VND'),
('47','Quảng Nam','VND'),
('48','Quảng Ngãi','VND'),
('49','Quảng Ninh','VND'),
('50','Quảng Trị','VND'),
('51','Sóc Trăng','VND'),
('52','Sơn La','VND'),
('53','Tây Ninh','VND'),
('54','Thái Bình','VND'),
('55','Thái Nguyên','VND'),
('56','Thanh Hoá','VND'),
('57','Thừa Thiên-Huế','VND'),
('58','Tiền Giang','VND'),
('59','Trà Vinh','VND'),
('60','Tuyên Quang','VND'),
('61','Vĩnh Long','VND'),
('62','Vĩnh Phúc','VND'),
('63','Yên Bái','VND');
INSERT INTO `dos_usernames` (`username`,`email`,`password`,`created`,`fullname`,`phone`,`company`,`role`,`language`,`code`,`expired`,`activated`,`dos_templates_template`,`dos_provinces_province_id`,`dos_bussiness_bussiness_id`) VALUES
('220312','groupitsoft@gmail.com','e10adc3949ba59abbe56e057f20f883e','2012-04-05 09:08:09','','','','user','vi|en','','2012-05-04 23:00:00','1','220312','2','tranh-anh-qua-luu-niem');
INSERT INTO `dos_loadfiles` (`dos_templates_template`,`dos_modules_module_id`,`loadfiles`,`typefile`) VALUES
('220312','default','prettyPhoto.css','css'),
('220312','default','jquery.prettyPhoto.js','javascript'),
('220312','video','prettyPhoto.css','css'),
('220312','video','jquery.prettyPhoto.js','javascript');
INSERT INTO `dos_modules_has_dos_usernames` (`dos_modules_module_id`,`dos_usernames_username`) VALUES
('about','220312'),
('advs','220312'),
('banner','220312'),
('contact','220312'),
('news','220312'),
('products','220312'),
('services','220312'),
('supports','220312'),
('video','220312');
INSERT INTO `dos_templates_has_dos_bussiness` (`dos_templates_template`,`dos_bussiness_bussiness_id`) VALUES
('220312','noi-that-ngoai-that');
INSERT INTO `dos_templates_has_dos_modules` (`dos_templates_template`,`dos_modules_module_id`,`dos_values_value_name`) VALUES
('220312','about','advs_left'),
('220312','about','list_supports'),
('220312','about','menu_about'),
('220312','about','news_new'),
('220312','about','products_hot'),
('220312','contact','advs_left'),
('220312','contact','list_supports'),
('220312','contact','menu_products'),
('220312','contact','news_new'),
('220312','contact','products_hot'),
('220312','default','about_home'),
('220312','default','advs_left'),
('220312','default','list_supports'),
('220312','default','menu_products'),
('220312','default','news_new'),
('220312','default','products_hot'),
('220312','default','products_new'),
('220312','default','video_hot'),
('220312','news','menu_news'),
('220312','news','news_hot'),
('220312','news','news_new'),
('220312','products','list_supports'),
('220312','products','menu_products'),
('220312','products','news_new'),
('220312','services','menu_services'),
('220312','services','news_new'),
('220312','video','menu_video'),
('220312','video','news_new');
INSERT INTO `dos_module_abouts` (`record_id`,`title`,`titleen`,`content`,`contenten`,`hit`,`created`,`record_order`,`hot`,`extra_field1`,`extra_field2`,`tag`,`tagen`,`description`,`descriptionen`,`activated`,`dos_usernames_username`) VALUES
('3','Giới thiệu sơ lược','Introduction About','<p>
	Ngày nay, khi ngày càng có nhiều thông tin được cung cấp trực tuyến, bạn càng cần phải sử dụng trình duyệt nhanh và an toàn trên máy tính. Giới thiệu về Google Chrome -- trình duyệt mở trang web với tốc độ cực nhanh! Thiết kế mượt mà của trình duyệt mang lại cho bạn nhiều không gian hơn để duyệt các trang web ưa thích của mình. Hướng dẫn này giúp bạn tìm hiểu qua các tính năng chính của Google Chrome.</p>','<p>
	Today, as more and more information is offered online, the more you need to use fast and secure browser on the computer. About Google Chrome - the browser open site with fast speed! Sleek design of the browser gives you more space to browse your favorite sites. This guide helps you learn the key features of Google Chrome.</p>','235','2012-04-05 09:12:08','1','1','','','gioi-thieu-so-luoc','introduction-about','Ngày nay, khi ngày càng có nhiều thông tin được cung cấp trực tuyến, bạn càng cần phải sử dụng trình duyệt nhanh và an toàn trên máy tính. Giới thiệu về Google Chrome -- trình duyệt mở trang web với tốc độ cực nhanh! Thiết kế mượt mà của trìn','','1','220312'),
('4','Giới thiệu chung','Introduction','<p>
	Giới thiệu chungGiới thiệu chungGiới thiệu chungGiới thiệu chungGiới thiệu chungGiới thiệu chungGiới thiệu chung</p>','<p>
	After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.</p>
<p>
	After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.</p>
<p>
	After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.</p>','21','2012-04-05 09:29:35','2','0','','','gioi-thieu-chung','introduction','Giới thiệu chungGiới thiệu chung','Introduction Introduction Introduction Introduction','1','220312'),
('5','Giới thiệu Văn phòng đại diện','About a representative office','<p>
	Giới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diện</p>','<p>
	About a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative officeAbout a representative office</p>','84','2012-04-05 09:29:55','3','0','','','gioi-thieu-van-phong-dai-dien','about-a-representative-office','Giới thiệu Văn phòng đại diệnGiới thiệu Văn phòng đại diện','About a representative officeAbout a representative office','1','220312');
INSERT INTO `dos_module_advs` (`record_id`,`title`,`titleen`,`pic_thumb`,`url`,`create_date`,`start_date`,`end_date`,`hits`,`record_order`,`position`,`type`,`enable`,`dos_usernames_username`) VALUES
('2','Pa nội thất','','pa-noi-that.jpg','http://grouplaptrinh.com','2012-04-05 09:16:24','2012-04-04 23:00:00','2012-05-22 23:00:00','0','1','left','_bank','1','220312');
INSERT INTO `dos_module_contacts` (`record_id`,`title`,`titleen`,`content`,`contenten`,`create_date`,`record_order`,`hit`,`hot`,`tag`,`tagen`,`description`,`descriptionen`,`enable`,`dos_usernames_username`) VALUES
('1','Contact us','','<p>
	CÔNG TY CỔ PHẦN TM SX THẾ GIỚI NỘI THẤT</p>
<p>
	Trụ sở: 321 CỘNG HÒA, PHƯỜNG 13, TÂN BÌNH, TP.HCM</p>
<p>
	Nhà máy : C7/21 PHẠM HÙNG, CHÁNH HƯNG BÌNH CHÁNH</p>
<p>
	MST: 0309788812</p>
<p>
	Điện thoại : (+848) 6292 3934 - Fax: (+848) 6292 3935</p>
<p>
	Hotline: 0942852858--0942 853 443 - Email : thegioinoithatvn@gmail.com</p>','<p>
	TM MANUFACTURING COMPANY FURNITURE WORLD</p>
<p>
	Office: 321 Cong Hoa, Ward 13, Tan Binh, Ho Chi Minh City</p>
<p>
	Factory: C7/21 Pham Hung Binh Chanh Hung DISTRICT</p>
<p>
	MST: 0309788812</p>
<p>
	Tel: (+848) 6292 3934 - Fax: (+848) 6292 3935</p>
<p>
	Hotline: 0942852858 - 0942 853 443 - Email: thegioinoithatvn@gmail.com</p>','2012-04-05 09:20:31','1','0','0','contact-us','','','','1','220312');
INSERT INTO `dos_module_menus` (`menu`,`menuen`,`url`,`target`,`position`,`title`,`titleen`,`description`,`descriptionen`,`dos_usernames_username`) VALUES
('Trang chủ','Home page','default','','1','','','','','220312'),
('Giới thiệu','About Us','about','','2','','','','','220312'),
('Sản phẩm','Products','products','','3','','','','','220312'),
('Dịch vụ','Services','services','','4','','','','','220312'),
('Tin tức &amp; sự kiện','News','news','','5','','','','','220312'),
('Video','Video','video','','6','','','','','220312'),
('Liên hệ','Contact Us','contact','','7','','','','','220312');
INSERT INTO `dos_module_services` (`record_id`,`title`,`titleen`,`preview`,`previewen`,`content`,`contenten`,`pic_full`,`hit`,`created`,`record_order`,`hot`,`extra_field1`,`extra_field2`,`tag`,`tagen`,`description`,`descriptionen`,`activated`,`dos_usernames_username`) VALUES
('3','Dịch vụ vẫn chuyển','Transport services','','','<p>
	Vận chuyển mọi nơi mọi lúc nếu khách yêu cầu</p>','<p>
	Shipping anywhere, anytime if requestedShipping anywhere, anytime if requestedShipping anywhere, anytime if requestedShipping anywhere, anytime if requested</p>','dich-vu-van-chuyen.jpg','10','2012-04-05 09:28:54','1','0','','','dich-vu-van-chuyen','transport-services','Vận chuyển mọi nơi mọi lúc nếu khách yêu cầu','Shipping anywhere, anytime if requested','1','220312');
INSERT INTO `dos_module_supports` (`support_id`,`support_name`,`support_nameen`,`support_phone`,`support_value`,`support_order`,`support_type`,`dos_usernames_username`) VALUES
('12','Hỗ trợ mua hàng','1','01230 456 789','mailgoogle','2','yahoo','220312'),
('13','Hỗ trợ kinh doanh','1','0909 999 888','groupitsoft','1','yahoo','220312');
INSERT INTO `dos_module_news_cat` (`cat_id`,`cat_parent_id`,`cat_title`,`cat_titleen`,`preview`,`previewen`,`tag`,`tagen`,`description`,`descriptionen`,`pic_full`,`cat_order`,`cat_extra1`,`cat_extra2`,`cat_enable`,`dos_usernames_username`) VALUES
('5','0','Xã hội','Social','','','xa-hoi','social','Xã hội','Social','','1','','','1','220312');
INSERT INTO `dos_module_news` (`record_id`,`title`,`titleen`,`postdate`,`pic_thumb`,`preview`,`previewen`,`content`,`contenten`,`tag`,`tagen`,`description`,`descriptionen`,`hits`,`record_order`,`hot`,`extra_field1`,`extra_field2`,`enable`,`dos_module_item_cat_cat_id`) VALUES
('5','20 năm nữa, TP HCM có thể lụt như Bangkok','20 years, Ho Chi Minh City Bangkok may flood as','2012-04-05 09:27:41','','<p>
	Sau thời gian nghiên cứu ngập lụt ở Bangkok (Thái Lan), PGS. TS Hồ Long Phi khẳng định, vài chục năm nữa TP HCM có khả năng xảy ra một trận lụt với thiệt hại tương tự như Bangkok.</p>','<p>
	20 years, Ho Chi Minh City Bangkok may flood as20 years, Ho Chi Minh City Bangkok may flood as20 years, Ho Chi Minh City Bangkok may flood as</p>','<p>
	Sau thời gian nghiên cứu ngập lụt ở Bangkok (Thái Lan), PGS. TS Hồ Long Phi khẳng định, vài chục năm nữa TP HCM có khả năng xảy ra một trận lụt với thiệt hại tương tự như Bangkok.<br />
	&gt; ''TP HCM sẽ lụt như Bangkok nếu phát triển như hiện nay''/ Toàn cảnh trận lụt lịch sử ở Thái Lan</p>
<p>
	Chiều 4/4, tại hội nghị sơ kết một năm thực hiện chương trình giảm ngập nước ở thành phố giai đoạn 2011-2015, PGS. TS Hồ Long Phi, Phó ban điều phối chương trình chống ngập TP HCM cho biết, sau một thời gian nghiên cứu ngập lụt ở Bangkok (Thái Lan) đã rút ra được bài học và xây dựng đề án hành động giải quyết ngập lụt ở TP HCM.</p>
<br /><p>
	Nước lũ bao phủ cả khu vực rộng lớn phía bắc thủ đô Bangkok (Thái Lan). Màu đỏ của những mái nhà và màu xanh cây cối nổi lên giữa phông nền nước lũ. Ảnh: Kyodo.<br />
	Theo ông Phi, bài học lớn nhất từ ngập lụt ở Bangkok là không nên tin tuyệt đối vào năng lực bảo vệ của các công trình chống ngập. Các giải pháp thích nghi, giảm nhẹ thiệt hại và sẵn sàng ứng phó luôn cần được dự trù.</p>
<p>
	Vị phó giáo sư cho rằng, thay vì ỷ lại hoàn toàn vào sự bảo vệ của các công trình đê bao chống ngập, TP HCM nên phát triển theo hình thức ECO2 (vừa phát triển kinh tế vừa phát triển sinh thái). Đồng thời, thay vì lấn chiếm không gian dành cho nước ở các vùng trũng thấp, một hành lang thoát lũ khẩn cấp cần được dự trù để đề phòng trường hợp các dòng sông không còn đủ năng lực thoát nước trong điều kiện mưa lũ đặc biệt lớn.</p>
<p>
	Bài học thứ hai mà TP HCM nên nghiên cứu từ trận lụt ở Bangkok là việc quản lý tài nguyên nước. Theo ông Phi, các hồ chứa thường được thiết kế và vận hành thiên về cấp nước tưới hay phát điện mà thiếu quan tâm đến điều tiết lũ. "Vì thế, TP HCM cần thiết lập quy trình vận hành hồ chứa đa mục tiêu để tăng cường khả năng điều tiết lũ", ông Phi đề nghị.</p>','<p>
	After the study period flood in Bangkok (Thailand), Assoc. Dr. Ho Long Phi said, a few dozen years have HCMC possibility of a flood damage similar to Bangkok.<br />
	&gt; ''As Bangkok, Ho Chi Minh City will flood if the current development'' / Overview of the flood history in Thailand</p>
<p>
	Afternoon of 4/4, at a preliminary conference in the program reduce flooding in the city in 2011-2015, Assoc. Dr. Ho Long Phi, deputy coordinating programs to prevent flooding HCM City, said after a flood studies in Bangkok (Thailand) has drawn lessons and build action plan address flood in Ho Chi Minh City.</p>
<br /><p>
	Floodwaters covered the large area north of the capital Bangkok (Thailand). The red color of the roofs and green trees rise between the flood wallpaper. Photo: Kyodo.<br />
	According to Africa, the biggest lesson from flooding in Bangkok is not absolute protection in the capacity of the works to prevent flooding. The solution adaptation, mitigation and preparedness should always be planned.</p>
<p>
	The associate professor said that instead of relying entirely on the protection of the dike to prevent flooding works, Ho Chi Minh City should develop in the form of ECO2 (both economic development has developed eco). Also, instead of encroaching upon the space reserved for low-lying areas, a flood emergency corridors should be planned for in case the river is no longer sufficient drainage capacity in terms of special flood big difference.</p>
<p>
	The second lesson that should HCM City from the flood studies in Bangkok was the management of water resources. According to Africa, the reservoirs are usually designed and operated natural water supply or electricity, but lack of interest in flood control. "Therefore, HCM City needs to establish operating procedures for multi-purposes reservoirs to enhance flood control," said African proposal.</p>
<p>
	Another lesson should also be taken into account as forecasting and information management plays an important role in reducing damage caused by flooding. Information correct early and high probability will support the work of running. He cited Africa, Deputy Director of the Meteorological Thai government plans equipped with radar rainfall forecasts $ 130 million. However, this system was not equipped in time. "If there''s time will help the Thai government has more than enough information in decision making," said Africa.</p>
<p>
	From the analysis of the similarities are fairly between Bangkok and Ho Chi Minh City as the cause flooding due to upstream flooding, heavy rains, high tides, water levels, many low-lying terrain areas, subsidence and compared Compare the Flood Risk factor system to prevent flooding ... Ho Long Phi made the comment, if any city retains the current development is mainly based on the works to prevent flooding, the 20 years, Ho Chi Minh City will likely occur a game flooded with damage similar to Bangkok in 2011.</p>
<p>
	He said today''s most dangerous thing for Ho Chi Minh City is not tide or sea level rise that is larger storms occur in the basin of Sai Gon - Dong Nai late rainy season, coinciding with the flooding in the Mekong Delta. At that time, the upstream reservoir was almost full of water. So the solution must be calculated to minimize the damage.</p>
<p>
	Deputy executive proposed program to prevent flooding HCMC need to act now to prevent flooding. Four African action which he proposed the drafting and promulgating regulations for the space, setting up early warning systems and response procedures, establish operating procedures for multi-purposes reservoirs, priority first investment in urban drainage.</p>','20-nam-nua-tp-hcm-co-the-lut-nhu-bangkok','20-years-ho-chi-minh-city-bangkok-may-flood-as','Sau thời gian nghiên cứu ngập lụt ở Bangkok (Thái Lan), PGS. TS Hồ Long Phi khẳng định, vài chục năm nữa TP HCM có khả năng xảy ra một trận lụt với thiệt hại tương tự như Bangkok.','He said today''s most dangerous thing for Ho Chi Minh City is not tide or sea level rise that is larger storms occur in the basin of Sai Gon - Dong Nai late rainy season, coinciding with the flooding in the Mekong Delta. At that time, the upstream res','0','1','1','','','1','5');
INSERT INTO `dos_module_products_cat` (`cat_id`,`cat_parent_id`,`cat_title`,`cat_titleen`,`preview`,`previewen`,`tag`,`tagen`,`description`,`descriptionen`,`pic_full`,`pic_desc`,`cat_order`,`cat_extra1`,`cat_extra2`,`cat_enable`,`dos_usernames_username`) VALUES
('7','0','Nội thất sofa phòng khách','Furniture living room sofa','','','noi-that-sofa-phong-khach','furniture-living-room-sofa','Nội thất sofa khách','Furniture living room sofa','noi-that-sofa-phong-khach.jpg','','1','','','1','220312'),
('8','0','Nội thất bếp','Interior new kitchen','','','noi-that-bep','interior-new-kitchen','Noi that bep','Interior new kitchen','noi-that-bep.jpg','','2','','','1','220312'),
('9','0','Nội thất giường ngủ loại 1 chuyen cho vip nhat','Interior of a specialized bed for vip nhat','','','noi-that-giuong-ngu-loai-1-chuyen-cho-vip-nhat','interior-of-a-specialized-bed-for-vip-nhat','Nội thất giường ngủ loại 1 chuyen cho vip nhat','Interior of a specialized bed for vip nhat','noi-that-giuong-ngu-loai-1-chuyen-cho-vip-nhat.jpg','','3','','','1','220312'),
('10','0','Nhà bếp','Kitchen Furniture','','','nha-bep','kitchen-furniture','Nha bep','Kitchen Furniture','nha-bep.jpg','','4','','','1','220312'),
('11','10','Sách khoa học xã hội','Social sciences books','','','sach-khoa-hoc-xa-hoi','social-sciences-books','Sách khoa học xã hội','Social sciences books','','','5','','','1','220312');
INSERT INTO `dos_module_products` (`record_id`,`title`,`titleen`,`postdate`,`pic_thumb`,`pic_full`,`pic_desc`,`preview`,`previewen`,`content`,`contenten`,`tag`,`tagen`,`description`,`descriptionen`,`hits`,`record_order`,`unit`,`hot`,`specials`,`extra_field1`,`extra_field2`,`extra_field3`,`extra_field4`,`enable`,`dos_module_item_cat_cat_id`) VALUES
('6','Nội thất bếp treo tường','Kitchen wall','2012-04-05 10:08:09','','','','','','<p>
	Nội thất bếp treo tường Nội thất bếp treo tường</p>','<p>
	Kitchen wall Kitchen wall Kitchen wall Kitchen wall</p>','noi-that-bep-treo-tuong','kitchen-wall','noi-that-bep-treo-tuong','Kitchen wall','0','1','9990000','1','','','','','','1','10'),
('7','Nội thất bếp thời trang','Kitchen Furniture Fashion','2012-04-05 10:09:20','','noi-that-bep-thoi-trang.jpg','','','','<p>
	Nội thất bếp thời trangNội thất bếp thời trangNội thất bếp thời trangNội thất bếp thời trangNội thất bếp thời trang</p>','<p>
	Kitchen Furniture FashionKitchen Furniture Fashionv Kitchen Furniture Fashion</p>','noi-that-bep-thoi-trang','kitchen-furniture-fashion','Nội thất bếp thời trangNội thất bếp thời trang','Kitchen Furniture Fashion Kitchen Furniture Fashion','0','2','2999999','1','','','','','','1','10'),
('8','Sách hot nhất nóng nhất','Book hottest hottest','2012-04-09 08:11:18','sach-hot-nhat-nong-nhat-thumb.jpg','sach-hot-nhat-nong-nhat.jpg','','','','<p>
	chi tiet</p>','<p>
	detail</p>','sach-hot-nhat-nong-nhat','book-hottest-hottest','sach hot nhieu nguoi doc','some read','0','3','200000','0','','','','','','1','10'),
('9','Sách khoa học công nghệ mới','New science and technology policy','2012-04-09 08:32:02','sach-khoa-hoc-cong-nghe-moi-thumb.jpg','sach-khoa-hoc-cong-nghe-moi.jpg','','','','<p>
	chi tiet</p>','<p>
	detail</p>','sach-khoa-hoc-cong-nghe-moi','new-science-and-technology-policy','sach cong nghe mới','New science and technology policy','0','4','400000','1','','','','','','1','8'),
('10','Sách nhà giáo dục mới','The new education policy','2012-04-09 08:39:13','','','','','','<p>
	chi tiet</p>','<p>
	add</p>','sach-nha-giao-duc-moi','the-new-education-policy','Sách nhà giáo dục mới','The new education policy','0','5','20000','1','','','','','','1','10');
INSERT INTO `dos_module_video_cat` (`cat_id`,`cat_parent_id`,`pic_thumb`,`cat_title`,`cat_titleen`,`tag`,`tagen`,`description`,`descriptionen`,`cat_order`,`cat_enable`,`dos_usernames_username`) VALUES
('1','0','','Video mới nhất','Latest Videos','video-moi-nhat','latest-videos','Video mới nhất','Latest Videos','1','1','220312');
INSERT INTO `dos_module_video` (`record_id`,`title`,`titleen`,`postdate`,`tag`,`tagen`,`description`,`descriptionen`,`pic_thumb`,`url`,`record_order`,`hits`,`extra_field1`,`extra_field2`,`hot`,`enable`,`dos_module_item_cat_cat_id`) VALUES
('1','Có gì hot','What''s hot','2012-04-09 07:09:19','co-gi-hot','whats-hot','Có gì hot','What''s hot','co-gi-hot.jpg','http://www.youtube.com/watch?v=9Ko3wWP6Z9Y&feature=fvsr','1','0','','','1','1','1');
