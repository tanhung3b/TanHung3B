CREATE TABLE `tgp_bien` (
  `ten` varchar(32) NOT NULL,
  `gia_tri` text NOT NULL,
  PRIMARY KEY (`ten`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tgp_bien VALUES('email','ownstreet@gmail.com');
INSERT INTO tgp_bien VALUES('hotline','0905 067 774');
INSERT INTO tgp_bien VALUES('lien_ket','');
INSERT INTO tgp_bien VALUES('title','Studio 8');
CREATE TABLE `tgp_camnhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(50) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `noi_dung` text,
  `hien_thi` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `chu_thich` text,
  `photos` text,
  `note_photos` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `tgp_cat` (
  `id` varchar(20) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `thu_tu` int(11) NOT NULL DEFAULT '1',
  `_cms` int(1) NOT NULL DEFAULT '0',
  `_product` int(1) DEFAULT '0',
  `_gallery` int(1) NOT NULL DEFAULT '0',
  `_doc` int(1) NOT NULL DEFAULT '0',
  `_menu` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tgp_cat VALUES('slide_con','Slide Con','1','0','0','1','0','0');
INSERT INTO tgp_cat VALUES('slide_hinh','Slide hình','1','0','0','1','0','0');
INSERT INTO tgp_cat VALUES('thu_vien_hinh_anh','Thư viện hình ảnh','1','0','0','1','0','0');
INSERT INTO tgp_cat VALUES('tin_tuc','Tin tức - sự kiện','0','1','0','0','0','0');
CREATE TABLE `tgp_cms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `chu_thich` text NOT NULL,
  `hinh` varchar(255) DEFAULT 'no.jpg',
  `hinh_note` varchar(255) NOT NULL,
  `photos` text,
  `noi_dung` text NOT NULL,
  `hien_thi` int(1) NOT NULL DEFAULT '1',
  `time` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `luot_xem` int(11) NOT NULL DEFAULT '0',
  `noi_bat` int(1) NOT NULL DEFAULT '0',
  `seo_keyword` text,
  `seo_desc` text,
  `seo_copyright` text,
  `tag` text,
  `seo_permalink` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO tgp_cms VALUES('1','1','Hoa khôi Thể thao mướt mồ hôi trồng cây bảo vệ môi trường','Nằm trong chương trình hoạt động bên lề cuộc thi Hoa khôi thể thao Việt Nam 2012, sáng nay, 35 thí sinh đã cùng nhau trồng cây xanh tại chân ga Suối Mơ.','1.jpg','','','&nbsp;<span style=\"font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 20px; \">Dưới c&aacute;i nắng ch&oacute;i chang, 10 c&acirc;y si đ&atilde; được 35 th&iacute; sinh vun trồng. Những giọt mồ h&ocirc;i chảy d&agrave;i tr&ecirc;n những khu&ocirc;n mặt xinh đẹp nhưng nụ cười tươi th&igrave; vẫn rạng rỡ tr&ecirc;n khu&ocirc;n mặt c&aacute;c th&iacute; sinh. Ban tổ chức cho biết c&aacute;c th&iacute; sinh trồng c&acirc;y với mục đ&iacute;ch c&ugrave;ng chung tay bảo vệ m&ocirc;i trường, gi&uacute;p c&aacute;c t&agrave;i nguy&ecirc;n thi&ecirc;n nhi&ecirc;n th&ecirc;m sức sống v&agrave; giữ cho m&ocirc;i trường xanh &ndash; sạch &ndash; đẹp.&nbsp; Đ&acirc;y l&agrave; một sự kiện quan trọng v&agrave; c&oacute; &yacute; nghĩa cộng đồng.</span>\r\n<p class=\"pBody\" style=\"margin: 1px; padding: 0px 0px 12px; border: 0px; outline: 0px; font-size: 16px; line-height: 20px; font-family: \'Times New Roman\', Arial; \">Th&iacute; sinh Thục Uy&ecirc;n (SBD 039) chia sẻ: &ldquo;Với em, đ&acirc;y l&agrave; một hoạt động rất c&oacute; &yacute; nghĩa. Hệ sinh th&aacute;i v&agrave; m&ocirc;i trường hiện nay đang rơi v&agrave;o t&igrave;nh trạng nghi&ecirc;m trọng bởi kh&oacute;i bụi, nạn ph&aacute; rừng, ch&iacute;nh v&igrave; vậy việc trồng v&agrave; bảo vệ c&acirc;y xanh l&agrave; một hoạt động rất cần thiết. Hoạt động n&agrave;y l&agrave; một cơ hội rất tốt để ch&uacute;ng em c&oacute; thể c&ugrave;ng chung tay g&oacute;p phần x&acirc;y dựng v&agrave; bảo vệ m&ocirc;i trường&rdquo;.</p>\r\n<table width=\"200\" cellspacing=\"1\" cellpadding=\"1\" border=\"0\" align=\"center\" style=\"color: rgb(85, 85, 85); font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 18px; \">\r\n    <tbody style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; \">\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/26/miss-sport-yeu-cay-xanh.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/26/mg1184.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/26/mg1186.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/26/mg1189.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/26/mg1203.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/26/mg1211.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/26/mg1216.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/26/mg1214.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br class=\"Apple-interchange-newline\" />','1','1343318400','1','746','0','Miss Sport, Hoa khôi thể thao','','','Miss Sport, Hoa khôi thể thao','');
INSERT INTO tgp_cms VALUES('2','1','Thí sinh Miss Sport rực rỡ trên biển','Sau khi tập trung tại Bà Nà Hills nghỉ ngơi lấy lại tinh thần, 35 thí sinh Miss Sport 2012 đã bước vào khuôn khổ với một lịch trình dày đặc lên núi, xuống biển.','2.jpg','','','&nbsp;\r\n<table width=\"200\" cellspacing=\"1\" cellpadding=\"1\" border=\"0\" align=\"center\" style=\"color: rgb(85, 85, 85); font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 18px; \">\r\n    <tbody style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; \">\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg5697.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p class=\"pBody\" style=\"margin: 1px; padding: 0px 0px 12px; border: 0px; outline: 0px; font-size: 16px; line-height: 20px; font-family: \'Times New Roman\', Arial; \">C&aacute;c th&iacute; sinh đ&atilde; được chia th&agrave;nh 3 nh&oacute;m để tham gia buổi chụp h&igrave;nh tr&ecirc;n biển. Ở buổi chụp h&igrave;nh n&agrave;y, c&aacute;c th&iacute; tự trang điểm v&agrave; l&agrave;m việc với nhiếp ảnh để cho ra những tấm h&igrave;nh đẹp. Việc l&agrave;m n&agrave;y nhằm r&egrave;n luyện t&iacute;nh độc lập cho c&aacute;c th&iacute; sinh.</p>\r\n<p class=\"pBody\" style=\"margin: 1px; padding: 0px 0px 12px; border: 0px; outline: 0px; font-size: 16px; line-height: 20px; font-family: \'Times New Roman\', Arial; \">B&ecirc;n cạnh việc chụp ảnh, c&aacute;c th&iacute; sinh đ&atilde; được tập luyện b&agrave;i đồng diễn với huấn luyện vi&ecirc;n Ho&agrave;ng Mai. Sự kết hợp giữa bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh của biển v&agrave; năng lượng được tập luyện đ&atilde; gi&uacute;p cho c&aacute;c th&iacute; sinh thư gi&atilde;n v&agrave; thoải m&aacute;i, tiếp thu b&agrave;i tập một c&aacute;ch nhanh nhất.</p>\r\n<p class=\"pBody\" style=\"margin: 1px; padding: 0px 0px 12px; border: 0px; outline: 0px; font-size: 16px; line-height: 20px; font-family: \'Times New Roman\', Arial; \">Ngo&agrave;i ra, tr&ograve; chơi k&eacute;o co mang t&iacute;nh giao lưu gắn chặt t&igrave;nh đo&agrave;n kết th&iacute; sinh giữa hai miền đ&atilde; khiến nhiều bạn cảm thấy vui v&agrave; h&agrave;o hứng.</p>\r\n<table width=\"200\" cellspacing=\"1\" cellpadding=\"1\" border=\"0\" align=\"center\" style=\"color: rgb(85, 85, 85); font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 18px; \">\r\n    <tbody style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; \">\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg1127.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p class=\"pBody\" style=\"margin: 1px; padding: 0px 0px 12px; border: 0px; outline: 0px; font-size: 16px; line-height: 20px; font-family: \'Times New Roman\', Arial; \">Sau khi tham gia chụp h&igrave;nh v&agrave; c&aacute;c hoạt động tr&ecirc;n biển, h&ocirc;m nay c&aacute;c th&iacute; sinh cũng đ&atilde; c&oacute; buổi tham quan c&aacute;c ng&ocirc;i miếu, đền, ch&ugrave;a ở B&agrave; N&agrave;. Tại đ&acirc;y c&aacute;c th&iacute; sinh đ&atilde; được đến thăm ch&ugrave;a Linh Ứng, miếu B&agrave;, Đỉnh N&uacute;i Ch&uacute;a v&agrave; được nghe những c&acirc;u chuyện th&uacute; vị về t&ecirc;n địa danh tại nơi đ&acirc;y.</p>\r\n<p class=\"pBody\" style=\"margin: 1px; padding: 0px 0px 12px; border: 0px; outline: 0px; font-size: 16px; line-height: 20px; font-family: \'Times New Roman\', Arial; \">Cũng qua buổi đi thăm ch&ugrave;a, c&aacute;c th&iacute; sinh c&oacute; cơ hội hiểu th&ecirc;m về nhau hơn. Th&iacute; sinh Nguyễn Thị Ngọc Anh l&agrave; một th&iacute; sinh ăn chay trường. C&ocirc; bạn n&agrave;y chia sẻ rằng bản th&acirc;n lu&ocirc;n hướng t&acirc;m về Phật, ăn chay gi&uacute;p cho cơ thể khỏe mạnh hơn.</p>\r\n<table width=\"200\" cellspacing=\"1\" cellpadding=\"1\" border=\"0\" align=\"center\" style=\"color: rgb(85, 85, 85); font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 18px; \">\r\n    <tbody style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; \">\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg5592.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"341\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg5606.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg5614.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg5615.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg5618.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg5622.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg5732.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg5753.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"339\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg5754.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"454\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg5769.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"335\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/dsc0014.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"363\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/dsc0017.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"335\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/dsc1045.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"335\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/dsc1058.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"335\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/dsc1061.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"332\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/dsc2164.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"332\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/dsc9155.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"332\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/dsc9227.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"332\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/dsc9266.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">Th&iacute; sinh Miss Sport h&agrave;o hứng với c&aacute;c hoạt động tr&ecirc;n biển.</td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/thi-sinh-tham-dinh-nui-chua-2.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"347\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg1147.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/thi-sinh-chuan-bi-len-dinh-nui-chua-sau-khi-tap-xong.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/thi-sinh-di-bo-len-dinh-nui-chua.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/thi-sinh-lang-nghe-loi-huong-dan-vien.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/thi-sinh-tham-dinh-nui-chua.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/thi-sinh-tham-dinh-nui-chua-3.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/thi-sinh-tham-dinh-nui-chua-2-1.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">Đi thăm ch&ugrave;a B&agrave; N&agrave; l&agrave; một hoạt động nằm trong lịch tr&igrave;nh 15 ng&agrave;y tại ng&ocirc;i nh&agrave; chung của c&aacute;c th&iacute; sinh. Hoạt động n&agrave;y gi&uacute;p c&aacute;c bạn được mở mang tầm mắt, thu nạp th&ecirc;m nhiều kiến thức v&agrave; c&oacute; cơ hội giao lưu với nhau nhiều hơn.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>','1','1343318400','1','737','0','','','','','');
INSERT INTO tgp_cms VALUES('3','1','Thái Hà, Ngọc Thạch làm cô dâu xinh đẹp','Á hậu Hà Nội Thái Hà và giải vàng Siêu mẫu Việt Nam Ngọc Thạch đã xuất hiện thật rạng ngời trong buổi quay hình thời trang.','3.jpg','','','&nbsp;<span style=\"font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 20px; \">C&ugrave;ng c&aacute;c ch&acirc;n d&agrave;i c&oacute; tiếng như Phạm Anh Thư, Huỳnh Ti&ecirc;n,&nbsp;Hồng Quế, C&ugrave; Ngọc Qu&yacute;, Diệu Huyền... chiều qua,</span><span style=\"font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 20px; \">&nbsp;</span><em style=\"font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 20px; margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; \">&Aacute; hậu H&agrave; Nội 2005</em><span style=\"font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 20px; \">&nbsp;</span><span style=\"font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 20px; \">Th&aacute;i H&agrave; v&agrave; giải V&agrave;ng</span><span style=\"font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 20px; \">&nbsp;</span><em style=\"font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 20px; margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; \">Si&ecirc;u mẫu Việt Nam 2010&nbsp;</em><span style=\"font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 20px; \">Ngọc Thạch đ&atilde; c&oacute; những m&agrave;n tr&igrave;nh diễn thật ấn tượng trong c&aacute;c bộ trang phục cưới của những nh&agrave; thiết kế Việt tại một khu nghỉ dưỡng cao cấp tại B&igrave;nh Dương chiều qua.</span>\r\n<p class=\"pBody\" style=\"margin: 1px; padding: 0px 0px 12px; border: 0px; outline: 0px; font-size: 16px; line-height: 20px; font-family: \'Times New Roman\', Arial; \">Đ&acirc;y l&agrave; buổi quay h&igrave;nh cho chương tr&igrave;nh&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; \">Thời trang &amp; Đam m&ecirc;&nbsp;</em>dự kiến sẽ ph&aacute;t s&oacute;ng trong những ng&agrave;y cuối th&aacute;ng 7 v&agrave; đầu th&aacute;ng 8. Trong những bộ v&aacute;y &aacute;o trắng thanh tho&aacute;t, c&aacute;c người đẹp l&agrave;m c&ocirc; d&acirc;u lộng lẫy v&agrave; xinh như thi&ecirc;n thần.</p>\r\n<table width=\"200\" cellspacing=\"1\" cellpadding=\"1\" border=\"0\" align=\"center\" style=\"color: rgb(85, 85, 85); font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 18px; \">\r\n    <tbody style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; \">\r\n        <tr>\r\n            <td><img width=\"500\" height=\"334\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0730.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">Th&aacute;i H&agrave; xuất hiện ở vị tr&iacute; vedette.</td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"333\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0355.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"354\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0361.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"719\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0359.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">C&ocirc; nhận được rất nhiều sự quan t&acirc;m v&agrave; ưu &aacute;i của c&aacute;c nhiếp ảnh gia v&agrave; quay phim.</td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"750\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0373.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"736\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0645.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"723\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0723.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">&Aacute; hậu H&agrave; Nội 2005 - người đẹp đoạt giải si&ecirc;u mẫu phong c&aacute;ch của cuộc thi&nbsp;Si&ecirc;u mẫu Việt Nam thể hiện bản lĩnh chuy&ecirc;n nghiệp tr&ecirc;n s&agrave;n catwalk. Thời gian gần đ&acirc;y, tr&ecirc;n trang c&aacute; nh&acirc;n c&ocirc; b&agrave;y tỏ chia sẻ về một &yacute; định sẽ l&ecirc;n xe hoa.</td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"685\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg0434.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"663\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg0445.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">Thuộc thế hệ người mẫu kế cận Th&aacute;i H&agrave;, Ngọc Thạch từng đoạt giải v&agrave;ng Si&ecirc;u mẫu Việt Nam 2010.</td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"738\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg0509.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"731\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg0555.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"364\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg0601.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">Ngọc Thạch cũng c&oacute; những m&agrave;n tr&igrave;nh diễn đầy ấn tượng v&agrave; bản lĩnh trong buổi quay h&igrave;nh chiều qua.</td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"752\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0667.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"753\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0687.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">Hồng Quế du Nam cũng nhận được rất nhiều sự ưu &aacute;i, quan t&acirc;m của giới thời trang.</td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"333\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0428.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"376\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0416.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">Diệu Huyền</td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"333\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0437.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"748\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg0521.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"717\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0575.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">Phạm Anh Thư</td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"752\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0624.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"683\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0695.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">Huỳnh Ti&ecirc;n - mẫu teen nhiều kỳ vọng của Venus.</td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"701\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0462.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">Kỳ H&acirc;n - c&ocirc;ng n&agrave;ng model tuổi teen li&ecirc;n tục đắt show v&agrave; may mắn được mời tham gia tr&igrave;nh diễn trong nhiều show thời trang lớn.</td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"755\" border=\"0\" align=\"Middle\" src=\"http://img2.news.zing.vn/2012/07/25/mg0494.jpg\" alt=\"\" class=\"oImage\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">Si&ecirc;u mẫu th&acirc;n thiện C&ugrave; Ngọc Qu&yacute;.</td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"750\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg0567.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"731\" border=\"0\" align=\"Middle\" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/25/mg0588.jpg\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"pCaption\" style=\"font-family: \'Times New Roman\'; font-size: 11pt; color: rgb(102, 102, 102); text-align: center; margin-top: 5px; \">Người mẫu Tr&uacute;c Trần</td>\r\n        </tr>\r\n    </tbody>\r\n</table>','1','1343318400','1','792','0','','','','','');
INSERT INTO tgp_cms VALUES('4','1','Bảo Trân rạng rỡ trong váy cưới','Sau khi được biểu diễn ở vị trí vedette, hôm qua, mẫu teen 14 tuổi Bảo Trân hóa thân thành cô dâu trong chương trình thời trang cưới.','4.jpg','','','<div style=\"text-align: justify;\">&nbsp;Việc lấn s&acirc;n của người mẫu trẻ chỉ mới 14 tuổi khiến nhiều người cảm thấy lo ngại, tuy nhi&ecirc;n, mẹ của c&ocirc; cho biết: &quot;Bảo Tr&acirc;n 7 năm liền l&agrave; học sinh giỏi, xuất sắc. L&agrave; bậc l&agrave;m cha mẹ, ch&uacute;ng t&ocirc;i lu&ocirc;n song h&agrave;nh c&ugrave;ng với những đam m&ecirc; của con cho n&ecirc;n d&ugrave; đi đ&acirc;u, chụp ảnh hay quay h&igrave;nh thời trang, t&ocirc;i lu&ocirc;n c&oacute; mặt b&ecirc;n cạnh để chăm con, gi&uacute;p con những c&ocirc;ng việc cần thiết để con an t&acirc;m thể hiện niềm đam m&ecirc; tr&ecirc;n s&agrave;n diễn&quot;.<br />\r\n<br />\r\nGi&aacute;m đốc c&ocirc;ng ty người mẫu PL Tạ Nguy&ecirc;n Ph&uacute;c cũng cho biết: &quot;Ch&uacute;ng t&ocirc;i rất khắt khe trong việc đưa c&aacute;c người mẫu trẻ tuổi l&ecirc;n s&agrave;n diễn. Do đ&oacute;, khi c&oacute; ai đ&oacute; gọi show Bảo Tr&acirc;n hay Ngọc Qu&yacute;, ch&uacute;ng t&ocirc;i đều c&acirc;n nhắc v&agrave; lựa chọn những trang phục th&iacute;ch hợp, buổi biểu diễn th&iacute;ch hợp mới cho diễn&quot;.<br />\r\n<br />\r\nQuả thật h&ocirc;m qua Bảo Tr&acirc;n đ&atilde; c&oacute; những m&agrave;n tr&igrave;nh diễn thời trang cưới thật ấn tượng b&ecirc;n cạnh c&ocirc; bạn mẫu teen Ngọc Qu&yacute; c&ugrave;ng h&agrave;ng loạt người mẫu t&ecirc;n tuổi như Kim Minh, Kim Dung, Kiều Ng&acirc;n, Thanh Tr&uacute;c, Th&ugrave;y Linh, Quanh Đi, Minh Triệu...</div>\r\n<table width=\"200\" cellspacing=\"1\" cellpadding=\"1\" border=\"0\" align=\"center\" style=\"color: rgb(85, 85, 85); font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 18px; \">\r\n    <tbody style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; \">\r\n        <tr>\r\n            <td style=\"text-align: justify;\"><img width=\"500\" height=\"717\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9634.jpg\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"767\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9633.jpg\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"750\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9692.jpg\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"767\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9693.jpg\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; background-color: transparent; font-family: \'Times New Roman\'; color: rgb(102, 102, 102); text-align: center; background-position: initial initial; background-repeat: initial initial; \" class=\"pCaption\">Bảo Tr&acirc;n rạng ngời trong c&aacute;c kiểu v&aacute;y cưới d&agrave;nh cho c&ocirc; d&acirc;u m&ugrave;a cưới 2012.</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"727\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9786.jpg\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"750\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9744.jpg\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; background-color: transparent; font-family: \'Times New Roman\'; color: rgb(102, 102, 102); text-align: center; background-position: initial initial; background-repeat: initial initial; \" class=\"pCaption\">Bảo Tr&acirc;n lu&ocirc;n đi diễn c&ugrave;ng mẹ. Ch&iacute;nh v&igrave; được gia đ&igrave;nh hậu thuẫn n&ecirc;n model teen 14 tuổi n&agrave;y rất an t&acirc;m v&agrave; tự tin thể hiện những mẫu v&aacute;y cưới đẹp, ấn tượng.</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"715\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9684.jpg\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"729\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9685.jpg\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; background-color: transparent; font-family: \'Times New Roman\'; color: rgb(102, 102, 102); text-align: center; background-position: initial initial; background-repeat: initial initial; \" class=\"pCaption\">Phạm Ngọc Qu&yacute;</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"765\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" src=\"http://img2.news.zing.vn/2012/07/16/mg9596.jpg\" alt=\"\" class=\"oImage\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; background-color: transparent; font-family: \'Times New Roman\'; color: rgb(102, 102, 102); text-align: center; background-position: initial initial; background-repeat: initial initial; \" class=\"pCaption\">Kim Minh trong mẫu trang phục cưới chất liệu voan, lưới v&agrave; ren.</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"729\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" src=\"http://img2.news.zing.vn/2012/07/16/mg9612.jpg\" alt=\"\" class=\"oImage\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"750\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" src=\"http://img2.news.zing.vn/2012/07/16/mg9614.jpg\" alt=\"\" class=\"oImage\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; background-color: transparent; font-family: \'Times New Roman\'; color: rgb(102, 102, 102); text-align: center; background-position: initial initial; background-repeat: initial initial; \" class=\"pCaption\">B&ecirc;n cạnh những mẫu trang phục cưới d&agrave;nh cho m&ugrave;a cưới 2012, c&aacute;c người mẫu c&ograve;n giới thiệu kiểu trang sức ấn tượng d&agrave;nh cho c&ocirc; d&acirc;u</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"745\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9643.jpg\" />&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; background-color: transparent; font-family: \'Times New Roman\'; color: rgb(102, 102, 102); text-align: center; background-position: initial initial; background-repeat: initial initial; \" class=\"pCaption\">Kim Minh lung linh với v&aacute;y cưới xếp tầng nhiều nếp gấp c&ugrave;ng bộ nữ trang v&ograve;ng đeo cổ v&agrave; đ&ocirc;i hoa tai h&igrave;nh giọt nước.</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"725\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9715.jpg\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; background-color: transparent; font-family: \'Times New Roman\'; color: rgb(102, 102, 102); text-align: center; background-position: initial initial; background-repeat: initial initial; \" class=\"pCaption\">Kim Dung với v&aacute;y cưới họa tiết b&ocirc;ng hoa nhỏ li ti điểm xuyết.</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"750\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9727.jpg\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; background-color: transparent; font-family: \'Times New Roman\'; color: rgb(102, 102, 102); text-align: center; background-position: initial initial; background-repeat: initial initial; \" class=\"pCaption\">Giải V&agrave;ng Ng&ocirc;i sao người mẫu Ch&acirc;u Đo&agrave;n Thanh Tr&uacute;c.</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"749\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9788.jpg\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; background-color: transparent; font-family: \'Times New Roman\'; color: rgb(102, 102, 102); text-align: center; background-position: initial initial; background-repeat: initial initial; \" class=\"pCaption\">Người mẫu Duy Linh v&agrave; Ngọc Qu&yacute;.</p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td><img width=\"500\" height=\"739\" border=\"0\" align=\"Middle\" style=\"margin: 0px; padding: 10px 2px 3px; border: 0px; outline: 0px; font-size: 16px; background-color: transparent; max-width: 660px; background-position: initial initial; background-repeat: initial initial; \" class=\"oImage\" alt=\"\" src=\"http://img2.news.zing.vn/2012/07/16/mg9803.jpg\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p style=\"margin: 5px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11pt; background-color: transparent; font-family: \'Times New Roman\'; color: rgb(102, 102, 102); text-align: center; background-position: initial initial; background-repeat: initial initial; \" class=\"pCaption\">B&ecirc;n cạnh những mẫu &aacute;o cưới đẹp d&agrave;nh cho nữ, show diễn thời trang cưới c&ograve;n giới thiệu những mẫu vest d&agrave;nh cho nam thu h&uacute;t.</p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>','1','1343235600','1','645','0','','','','','');
INSERT INTO tgp_cms VALUES('5','2','Là con gái thật tuyệt!','Là con gái, bạn nào chẳng muốn mình luôn xinh đẹp trong mắt mọi người phải không nào? Dịu dàng, nữ tính, đằm thắm hơn trong BST kì này của MARC fashion các bạn nhé!','5.jpg','','5_13433791263.jpg;5_13433792153.jpg;5_13433792151.jpg;5_13433792186.jpg;5_13433792926.jpg;5_13433792926.jpg;5_13433792941.jpg','&nbsp;<span style=\"color: rgb(51, 51, 51); font-family: \'Times New Roman\', Georgia, serif; font-size: 16px; line-height: 22px; text-align: left; \">Những gam m&agrave;u ngọt ng&agrave;o với những điểm nhấn chạy viền tr&ecirc;n đầm hay một thắt lưng cũng đủ để bạn thật nổi bật phải kh&ocirc;ng n&agrave;o... Xu hướng ren vẫn c&ograve;n đang hot tr&ecirc;n c&aacute;c s&agrave;n diễn thời trang, cũng được MARC phối c&ugrave;ng &aacute;o v&agrave; ch&acirc;n v&aacute;y.</span>\r\n<div style=\"outline: none; border: 0px; margin: 0px; padding: 0px; line-height: 22px; color: rgb(51, 51, 51); font-family: \'Times New Roman\', Georgia, serif; font-size: 16px; text-align: left; \">&nbsp;</div>\r\n<div style=\"outline: none; border: 0px; margin: 0px; padding: 0px; line-height: 22px; color: rgb(51, 51, 51); font-family: \'Times New Roman\', Georgia, serif; font-size: 16px; text-align: left; \">Ngo&agrave;i ra sự kết hợp kh&eacute;o l&eacute;o của những gam m&agrave;u đối lập, ch&acirc;n v&aacute;y kết kim sa tạo cho c&aacute;c bạn g&aacute;i một vẻ đ&aacute;ng y&ecirc;u v&agrave; đầy cuốn h&uacute;t.</div>\r\n<div style=\"outline: none; border: 0px; margin: 0px; padding: 0px; line-height: 22px; color: rgb(51, 51, 51); font-family: \'Times New Roman\', Georgia, serif; font-size: 16px; text-align: left; \">&nbsp;</div>\r\n<div style=\"outline: none; border: 0px; margin: 0px; padding: 0px; line-height: 22px; color: rgb(51, 51, 51); font-family: \'Times New Roman\', Georgia, serif; font-size: 16px; text-align: left; \">Qu&agrave; tặng hấp dẫn đặc biệt l&agrave; t&uacute;i đựng trang điểm xinh xắn đủ m&agrave;u sắc. Số lượng c&oacute; hạn đấy nh&eacute;, chương tr&igrave;nh chỉ &aacute;p dụng từ&nbsp;<span style=\"outline: none; border: 0px; margin: 0px; padding: 0px; font-weight: bold; \">22/7 đến 22/8. &nbsp;</span></div>','1','1343318400','1','13','0','','','','','');
INSERT INTO tgp_cms VALUES('8','2','Mỹ nhân cosplay Việt cổ trang giữa sen Hồ Tây','Thướt tha trong sắc hồng nhạt, hóa thân thành một tinh linh xinh xắn, Chibi đã khiến đầm sen đang nở rộ mang một vẻ đẹp cổ trang huyền ảo.','7.jpg','','7_13433797810.jpg;7_13433797811.jpg;7_13433797847.jpg;7_13433797846.jpg;7_13433797868.jpg','&nbsp;','1','1343232000','1','18','0','','','','','');
INSERT INTO tgp_cms VALUES('9','2','Huyền Baby, Hạnh Sino gợi cảm bên xế xịn','Hai cô gái ngày càng thoát khỏi hình ảnh hot girl xì tin nổi tiếng đất Hà thành, thay vào đó là sự tươi trẻ trong những chiếc váy ngắn.','6.jpg','','6_13433795945.jpg;6_13433795943.jpg;6_13433795968.jpg;6_13433795969.jpg;6_13433795989.jpg;6_13433795993.jpg;6_13433796010.jpg','&nbsp;<span style=\"font-family: \'Times New Roman\', Arial; font-size: 16px; line-height: 20px; \">Từ nhiều năm nay, bộ ba Huyền Baby, Hạnh&nbsp;Sino, Emly lu&ocirc;n s&aacute;nh bước b&ecirc;n nhau. Hai năm nay, cả ba c&ograve;n s&aacute;t c&aacute;nh với việc lập nh&oacute;m nhạc B.sily. Trong thời gian qua, bộ ba rất &iacute;t khi tung ảnh hay clip, bởi c&aacute;c c&ocirc; g&aacute;i đều đầu tư rất cẩn th&acirc;n cho t&aacute;c phẩm &acirc;m nhạc hay h&igrave;nh ảnh của m&igrave;nh. Trong loạt ảnh mới, Huyền Baby v&agrave; Hạnh Sino đ&atilde; &quot;ra ri&ecirc;ng&quot; với xế hộp thuộc d&ograve;ng xe sang l&agrave; Bentley.</span>\r\n<p class=\"pBody\" style=\"margin: 1px; padding: 0px 0px 12px; border: 0px; outline: 0px; font-size: 16px; line-height: 20px; font-family: \'Times New Roman\', Arial; \"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; \">Dưới đ&acirc;y l&agrave; bộ ảnh của Huyền Baby v&agrave; Hạnh Sino:</strong></p>','1','1343145600','1','1','0','','','','','');
INSERT INTO tgp_cms VALUES('11','2','Người đẹp Đà Nẵng','Cuộc thi “Người đẹp Đà Nẵng” là cuộc thi sắc đẹp dành cho phái nữ nhằm tuyển chọn và tôn vinh vẻ đẹp toàn diện của người phụ nữ Việt Nam. Những thí sinh đạt giải cao sẽ đại diện cho thành phố Đà Nẵng tham dự Cuộc thi Hoa hậu Việt Nam 2012 tổ chức tại thành phố Đà Nẵng vào tháng 8/2012.','11.jpg','','11_13437892804.jpg;11_13437892802.jpg;11_13437892820.jpg;11_13437892822.jpg;11_13437892849.jpg;11_13437892851.jpg;11_13437898119.jpg;11_13437898154.jpg','Cuộc thi Người đẹp Đ&agrave; Nẵng 2012<br />','1','1343754000','1','18','0','','','','','');
CREATE TABLE `tgp_cms_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(20) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `type` int(1) DEFAULT '0',
  `thu_tu` int(11) NOT NULL,
  `hien_thi` int(1) NOT NULL DEFAULT '1',
  `noi_bat` int(1) NOT NULL DEFAULT '0',
  `video` int(1) NOT NULL DEFAULT '0',
  `parent` int(10) DEFAULT '0',
  `seo_keyword` text,
  `seo_desc` text,
  `seo_copyright` text,
  `tag` text,
  `seo_permalink` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tgp_cms_menu VALUES('1','tin_tuc','Tin tức - sự kiện','0','1','1','0','0','0','','','','','');
INSERT INTO tgp_cms_menu VALUES('2','thu_vien_hinh_anh','Thư viện hình ảnh','0','0','1','0','0','0','','','','','');
CREATE TABLE `tgp_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  `hinh` varchar(255) DEFAULT 'no',
  `dia_chi` varchar(255) NOT NULL,
  `gioi_thieu` text NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `dem_click` int(11) DEFAULT '0',
  `dem_view` int(11) DEFAULT '0',
  `hien_thi` int(1) NOT NULL,
  `noi_bat` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tgp_customers_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) NOT NULL,
  `thu_tu` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `tgp_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `chu_thich` text NOT NULL,
  `file` varchar(255) DEFAULT 'no',
  `file_size` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `hien_thi` int(1) NOT NULL DEFAULT '1',
  `gia` double DEFAULT NULL,
  `time` int(11) NOT NULL,
  `luot_tai` int(11) NOT NULL DEFAULT '0',
  `noi_bat` int(1) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tgp_doc VALUES('1','1','Hồ sơ nằng lực','Hồ sơ nằng lực','1.docx','12161','&nbsp;','1','0','1313719452','8','0','1');
CREATE TABLE `tgp_doc_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(20) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `hien_thi` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tgp_doc_menu VALUES('1','ho_so','Hồ sơ nằng lực','1','1');
CREATE TABLE `tgp_doitac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(255) DEFAULT 'no.jpg',
  `ten` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `gioi_thieu` text,
  `hien_thi` int(1) DEFAULT '1',
  `time` int(11) DEFAULT NULL,
  `thu_tu` int(11) DEFAULT NULL,
  `loai` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO tgp_doitac VALUES('17','17.jpg','Người đẹp Đà Nẵng','http://www.nguoidepdanang.vn','','1','1345819932','2','1');
INSERT INTO tgp_doitac VALUES('18','18.jpg','Công ty Cổ phần Nghệ thuật Việt','http://www.vietart.vn/','Công ty Cổ phần Nghệ thuật Việt','1','1345820435','2','0');
INSERT INTO tgp_doitac VALUES('19','19.jpg','Ngân hàng Đầu tư và Phát triển Việt Nam','http://bidv.com.vn/','Ngân hàng Đầu tư và Phát triển Việt Nam - BIDV','1','1346045283','3','0');
INSERT INTO tgp_doitac VALUES('22','22.jpg','Quảng cáo','#','Quảng cáo 0905018 649','1','1345820625','6','0');
INSERT INTO tgp_doitac VALUES('23','23.jpg','FPT City','http://www.fptcity.com.vn','Công ty Cổ phần Đô thị FPT','1','1346045197','5','0');
INSERT INTO tgp_doitac VALUES('24','24.jpg','Tập đoàn FPT','http://www.fpt.com.vn','Tập đoàn FPT','1','1346045251','6','0');
CREATE TABLE `tgp_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `chu_thich` text NOT NULL,
  `hinh` varchar(255) DEFAULT 'no',
  `hien_thi` int(1) NOT NULL DEFAULT '1',
  `noi_bat` int(1) NOT NULL DEFAULT '1',
  `time` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `luot_xem` int(11) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

INSERT INTO tgp_gallery VALUES('19','1','Ảnh lớn 2-12.01.09','','19.jpg','1','1','1346576838','1','0','');
INSERT INTO tgp_gallery VALUES('20','1','Ảnh lớn 3-12.01.09','','20.jpg','1','1','1346577271','1','0','');
INSERT INTO tgp_gallery VALUES('21','1','Ảnh lớn 1-12.01.09','','21.jpg','1','1','1346577438','1','0','');
INSERT INTO tgp_gallery VALUES('22','1','Ảnh lớn 4-12.01.09','','22.jpg','1','1','1346577531','1','0','');
INSERT INTO tgp_gallery VALUES('23','1','Ảnh lớn 5-12.01.09','','23.jpg','1','1','1346577872','1','0','');
INSERT INTO tgp_gallery VALUES('24','1','Ảnh lớn 6-12.01.09','','24.jpg','1','1','1346578133','1','0','');
INSERT INTO tgp_gallery VALUES('26','2','Ảnh nhỏ 1-12.01.09','','26.jpg','1','1','1346578627','1','0','');
INSERT INTO tgp_gallery VALUES('27','2','Ảnh nhỏ 2-12.01.09','','27.jpg','1','1','1346578775','1','0','');
INSERT INTO tgp_gallery VALUES('28','1','Ảnh lớn 7 - 12.01.09','','28.jpg','1','1','1346579077','1','0','');
INSERT INTO tgp_gallery VALUES('29','2','Ảnh nhỏ 3-12.01.09','','29.jpg','1','1','1346579281','1','0','');
INSERT INTO tgp_gallery VALUES('30','2','Ảnh nhỏ 4-12.01.09','','30.jpg','1','1','1346580532','1','0','');
INSERT INTO tgp_gallery VALUES('33','5','Bờm 1','Làm dáng','33.jpg','1','1','1352367300','1','0','');
INSERT INTO tgp_gallery VALUES('34','5','Bờm 2','Ngầu không Mẹ ơi','34.jpg','1','1','1352367343','1','0','');
INSERT INTO tgp_gallery VALUES('35','5','Bờm 3','Bị chụp trộm khi đang xí nhất','35.jpg','1','1','1352367374','1','0','');
INSERT INTO tgp_gallery VALUES('36','5','Bờm 4','Con muốn làm thiên thần của riêng Mẹ','36.jpg','1','1','1352367425','1','0','');
INSERT INTO tgp_gallery VALUES('37','5','Bờm 5','Chụp tại nhà','37.jpg','1','1','1352367444','1','0','');
INSERT INTO tgp_gallery VALUES('38','5','Bờm 6','Tập làm ca sĩ','38.jpg','1','1','1352367463','1','0','');
INSERT INTO tgp_gallery VALUES('39','5','Bờm 7','Ước mơ của con là...','39.jpg','1','1','1352367572','1','0','');
INSERT INTO tgp_gallery VALUES('40','5','Bờm 8','Mẹ thấy con ngộ nghĩnh chưa này','40.jpg','1','1','1352367610','1','0','');
INSERT INTO tgp_gallery VALUES('41','5','Bờm 9','Mẹ thấy thiên thần nhỏ của Mẹ xinh không?','41.jpg','1','1','1352367652','1','0','');
INSERT INTO tgp_gallery VALUES('42','5','Bờm 10','Bé trầm tư','42.jpg','1','1','1352367686','1','0','');
INSERT INTO tgp_gallery VALUES('44','6','Ong Vàng 1','','44.jpg','1','1','1352368565','1','0','');
INSERT INTO tgp_gallery VALUES('45','6','ong vàng 2','','45.jpg','1','1','1352368577','1','0','');
INSERT INTO tgp_gallery VALUES('46','6','ong vàng 3','','46.jpg','1','1','1352368587','1','0','');
INSERT INTO tgp_gallery VALUES('47','6','ong vàng 4','','47.jpg','1','1','1352368599','1','0','');
INSERT INTO tgp_gallery VALUES('48','6','ong vàng 5','','48.jpg','1','1','1352368612','1','0','');
INSERT INTO tgp_gallery VALUES('49','6','ong vàng 6','','49.jpg','1','1','1352368624','1','0','');
INSERT INTO tgp_gallery VALUES('50','6','ong vàng 7','','50.jpg','1','1','1352368656','1','0','');
INSERT INTO tgp_gallery VALUES('51','6','ong vàng 7','','51.jpg','1','1','1352368703','1','0','');
INSERT INTO tgp_gallery VALUES('52','6','ong vàng 9','','52.jpg','1','1','1352368720','1','0','');
INSERT INTO tgp_gallery VALUES('53','6','ong vàng 10','','53.jpg','1','1','1352368732','1','0','');
INSERT INTO tgp_gallery VALUES('54','6','ong vàng 11','','54.jpg','1','1','1352368741','1','0','');
INSERT INTO tgp_gallery VALUES('55','6','ong vàng 12','','55.jpg','1','1','1352368750','1','0','');
INSERT INTO tgp_gallery VALUES('56','7','1','Chuẩn bị sẵn sàng','56.jpg','1','1','1352423815','1','0','');
INSERT INTO tgp_gallery VALUES('57','7','2','Ra chiến trường','57.jpg','1','1','1352423887','1','0','');
INSERT INTO tgp_gallery VALUES('58','7','3','Chiến đấu','58.jpg','1','1','1352423900','1','0','');
INSERT INTO tgp_gallery VALUES('59','7','4','','59.jpg','1','1','1352423914','1','0','');
INSERT INTO tgp_gallery VALUES('60','7','5','','60.jpg','1','1','1352423924','1','0','');
INSERT INTO tgp_gallery VALUES('61','7','6','','61.jpg','1','1','1352423947','1','0','');
INSERT INTO tgp_gallery VALUES('62','7','7','','62.jpg','1','1','1352423960','1','0','');
INSERT INTO tgp_gallery VALUES('63','7','8','','63.jpg','1','1','1352423973','1','0','');
INSERT INTO tgp_gallery VALUES('64','7','9','','64.jpg','1','1','1352423985','1','0','');
INSERT INTO tgp_gallery VALUES('65','7','10','Hi sinh','65.jpg','1','1','1352423999','1','0','');
INSERT INTO tgp_gallery VALUES('66','7','11','','66.jpg','1','1','1352424012','1','0','');
INSERT INTO tgp_gallery VALUES('67','7','12','Chiến thắng','67.jpg','1','1','1352424031','1','0','');
INSERT INTO tgp_gallery VALUES('68','8','1','Đêm đầu tiên, gala thân mật giữa các Doanh nhân Đà Nẵng','68.jpg','1','1','1352425360','1','0','');
INSERT INTO tgp_gallery VALUES('69','8','2','Tiết mục song ca ngẫu hứng \"5 anh em trên 1 chiếc xe tăng\"','69.jpg','1','1','1352425387','1','0','');
INSERT INTO tgp_gallery VALUES('70','8','3','Đêm 13.10.2012, Đêm giao lưu dành cho các Doanh nhân thành đạt của Tp Đà Nẵng','70.jpg','1','1','1352425423','1','0','');
INSERT INTO tgp_gallery VALUES('71','8','4','','71.jpg','1','1','1352425433','1','0','');
INSERT INTO tgp_gallery VALUES('72','8','5','','72.jpg','1','1','1352425442','1','0','');
INSERT INTO tgp_gallery VALUES('73','8','7','Mr Lê Tấn Trung Ba - Giám đốc Công ty Vietart và Mr Phan Hoàng Huy - Giám đốc Công ty Thế Giới Phẳng','73.jpg','1','1','1352425514','1','0','');
INSERT INTO tgp_gallery VALUES('74','8','6','','74.jpg','1','1','1352425555','1','0','');
INSERT INTO tgp_gallery VALUES('75','8','9','','75.jpg','1','1','1352425980','1','0','');
INSERT INTO tgp_gallery VALUES('76','8','10','','76.jpg','1','1','1352425989','1','0','');
INSERT INTO tgp_gallery VALUES('77','8','12','','77.jpg','1','1','1352425998','1','0','');
INSERT INTO tgp_gallery VALUES('78','9','1','Chia sẻ niềm vui cùng Mẹ','78.jpg','1','1','1352426967','1','0','');
INSERT INTO tgp_gallery VALUES('79','9','2','Niềm vui khi được xướng tên','79.jpg','1','1','1352426986','1','0','');
INSERT INTO tgp_gallery VALUES('80','9','4','Á khôi Ngọc Hương','80.jpg','1','1','1352427015','1','0','');
INSERT INTO tgp_gallery VALUES('81','9','5','','81.jpg','1','1','1352427026','1','0','');
INSERT INTO tgp_gallery VALUES('82','9','6','Võ Nguyễn Minh Ngọc','82.jpg','1','1','1352427041','1','0','');
INSERT INTO tgp_gallery VALUES('83','9','7','','83.jpg','1','1','1352427051','1','0','');
INSERT INTO tgp_gallery VALUES('84','9','9','','84.jpg','1','1','1352427061','1','0','');
INSERT INTO tgp_gallery VALUES('85','9','10','','85.jpg','1','1','1352427074','1','0','');
INSERT INTO tgp_gallery VALUES('86','9','12','','86.jpg','1','1','1352427085','1','0','');
INSERT INTO tgp_gallery VALUES('87','9','13','','87.jpg','1','1','1352427096','1','0','');
INSERT INTO tgp_gallery VALUES('88','9','14','','88.jpg','1','1','1352427106','1','0','');
INSERT INTO tgp_gallery VALUES('89','9','15','','89.jpg','1','1','1352427115','1','0','');
INSERT INTO tgp_gallery VALUES('90','9','16','','90.jpg','1','1','1352427126','1','0','');
INSERT INTO tgp_gallery VALUES('91','9','17','','91.jpg','1','1','1352427142','1','0','');
INSERT INTO tgp_gallery VALUES('92','9','18','','92.jpg','1','1','1352427152','1','0','');
INSERT INTO tgp_gallery VALUES('93','9','20','Sân khấu','93.jpg','1','1','1352427166','1','0','');
INSERT INTO tgp_gallery VALUES('94','10','1','Toàn cảnh trao giải cuộc thi','94.jpg','1','1','1352448325','1','0','');
INSERT INTO tgp_gallery VALUES('95','10','2','Giây phút đăng quang','95.jpg','1','1','1352448385','1','0','');
INSERT INTO tgp_gallery VALUES('96','10','3','Ông Nguyễn Xuân Anh - Phó Chủ tịch UBND Thành phố Đà Nẵng trao giải Người đẹp thứ 1 cho thí sinh Nguyễn Thị Xuân Trang','96.jpg','1','1','1352448480','1','0','');
INSERT INTO tgp_gallery VALUES('97','10','4','Niềm vui vỡ òa','97.jpg','1','1','1352448499','1','0','');
INSERT INTO tgp_gallery VALUES('98','10','5','Niềm vui xen lẫn nước mắt của hạnh phúc','98.jpg','1','1','1352448547','1','0','');
INSERT INTO tgp_gallery VALUES('99','10','7','Top7 cô gái được chọn vào vòng Ứng xử','99.jpg','1','1','1352448639','1','0','');
INSERT INTO tgp_gallery VALUES('100','10','8','Các nhà tài trợ','100.jpg','1','1','1352448654','1','0','');
INSERT INTO tgp_gallery VALUES('101','10','9','Phần thi áo dài','101.jpg','1','1','1352448676','1','0','');
INSERT INTO tgp_gallery VALUES('102','10','10','Các thi sinh trong trang phục Bikini bên hồ bơi','102.jpg','1','1','1352448709','1','0','');
INSERT INTO tgp_gallery VALUES('103','10','12','Tạo dáng cùng nhau trong buổi chụp hình ngoại cảnh','103.jpg','1','1','1352448734','1','0','');
INSERT INTO tgp_gallery VALUES('104','10','13','Buổi tập cho phần thi bikini','104.jpg','1','1','1352448755','1','0','');
INSERT INTO tgp_gallery VALUES('105','10','14','Cô giáo Sophia hướng dẫn các bạn tạo dáng','105.jpg','1','1','1352448776','1','0','');
INSERT INTO tgp_gallery VALUES('106','10','16','Phút thư giãn hiếm hoi sau 1 buổi tập','106.jpg','1','1','1352448794','1','0','');
INSERT INTO tgp_gallery VALUES('107','10','15','Anh Nguyễn Hữu Chiến - Phó Giám đốc sở VHTT-DL căn dặn thí sinh trước phần thi tài năng','107.jpg','1','1','1352448841','1','0','');
INSERT INTO tgp_gallery VALUES('108','10','18','Hậu trường cánh gà','108.jpg','1','1','1352448862','1','0','');
INSERT INTO tgp_gallery VALUES('109','10','19','Tranh thủ tạo dáng ở trên xe','109.jpg','1','1','1352448883','1','0','');
CREATE TABLE `tgp_gallery_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(20) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `hien_thi` int(1) NOT NULL DEFAULT '1',
  `hinh` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `dia_diem` varchar(255) DEFAULT NULL,
  `nam` varchar(255) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `chu_thich` text,
  `noi_dung` text,
  `luot_xem` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO tgp_gallery_menu VALUES('1','slide_hinh','Slide home','1','1','','','','','0','','','0');
INSERT INTO tgp_gallery_menu VALUES('2','slide_con','Slide Con','1','1','','','','','0','','','0');
INSERT INTO tgp_gallery_menu VALUES('5','thu_vien_hinh_anh','[KIDs] Bé Bờm','1','1','5.jpg','','','','0','Những khoảnh khắc đầy yêu thương của bé Bờm                              ','Với t&ecirc;n th&acirc;n mật l&agrave; <strong>Bờm con</strong>, cứ mỗi lần b&eacute; thấy m&aacute;y ảnh th&igrave; tự khắc b&eacute; lại cười. Đ&ocirc;i khi rất tươi, nhưng đ&ocirc;i khi cũng trầm tư kh&ocirc;ng k&eacute;m g&igrave; người lớn cả','388');
INSERT INTO tgp_gallery_menu VALUES('6','thu_vien_hinh_anh','[KIDs] Bé tập hát','6','1','6.jpg','','','','0','Hình ảnh được thực hiện tại trường mẫu giáo Ong Vàng      ','&nbsp;C&aacute;c b&eacute; trường Ong V&agrave;ng vừa qua đ&atilde; c&ugrave;ng nhau diễn buổi văn nghệ đầm ấm. Buổi văn nghệ do c&aacute;c C&ocirc; trường Ong V&agrave;ng l&agrave;m đạo diễn cũng như bi&ecirc;n đạo m&uacute;a cho c&aacute;c b&eacute;','245');
INSERT INTO tgp_gallery_menu VALUES('7','thu_vien_hinh_anh','[Event] Giải đấu súng sơn 2012','3','1','7.jpg','','','','0','Giải đấu vừa qua được tổ chức tại CLB Súng sơn TP Đà Nẵng. Studio8.vn là đơn vị tài trợ hình ảnh cho giải đấu này      ','&nbsp;','248');
INSERT INTO tgp_gallery_menu VALUES('8','thu_vien_hinh_anh','[Event] Ngày Doanh nhân Tp Đà Nẵng','4','1','8.jpg','','','','0','Ngày 12 và 13 tháng 10 vừa qua, UBND Tp Đà Nẵng đã tổ chức Đêm giao lưu mừng ngày Doanh nhân Việt Nam\r\nStudio8.vn là đơn vị thực hiện hình ảnh cho Sự kiện này            ','&nbsp;','241');
INSERT INTO tgp_gallery_menu VALUES('9','thu_vien_hinh_anh','[Event] Thanh lịch PCT 2010','5','1','9.jpg','','','','0','Là một trong những hoạt động thu hút rất nhiều học sinh của trường, và đây là một số hình ảnh của năm 2010. Võ Nguyễn Minh Ngọc - Hoa khôi Học sinh tài năng thanh lịch PCT 2010      ','&nbsp;','267');
INSERT INTO tgp_gallery_menu VALUES('10','thu_vien_hinh_anh','[Event] Người đẹp Đà Nẵng 2012','2','1','10.jpg','','','','0','Là một trong những cuộc thi nhan sắc đầu tiên do chính Thành phố tổ chức, Người đẹp Đà Nẵng 2012 đã thu hút được rất nhiều các thiếu nữ đăng ký tham gia nhằm tìm ra Cô gái may mắn nhất tham dự HHVN được tổ chức tại Đà Nẵng trong tháng 7/2012 vừa qua      ','Trong cuộc thi vừa qua, th&iacute; sinh <strong>Nguyễn Thị Xu&acirc;n Trang</strong> đến từ trường Đại học Duy T&acirc;n đ&atilde; l&agrave; c&ocirc; g&aacute;i đạt giải cao nhất, đại diện cho Đ&agrave; Nẵng tham gia HHVN 2012<br />\r\n<br />\r\n<span style=\"color: rgb(255, 102, 0);\"><strong>Studio8.vn</strong></span> h&acirc;n hạnh l&agrave; đơn vị t&agrave;i trợ h&igrave;nh ảnh cho cuộc thi <strong>Người đẹp Đ&agrave; Nẵng 2012</strong><br type=\"_moz\" />','327');
CREATE TABLE `tgp_lienket` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) DEFAULT '0',
  `link` varchar(255) DEFAULT '0',
  `hien_thi` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO tgp_lienket VALUES('1','Bộ Xây dựng','http://www.moc.gov.vn','1');
INSERT INTO tgp_lienket VALUES('2','Tiêu chuẩn XD Việt Nam','http://tcxdvn.xaydung.gov.vn/index.html','1');
INSERT INTO tgp_lienket VALUES('3','Xây dựng Online','http://www.xaydungonline.com/','1');
INSERT INTO tgp_lienket VALUES('4','Kiến trúc Nhà đẹp','http://www.nhadep-magazine.com.vn','1');
INSERT INTO tgp_lienket VALUES('5','Hội KTS Tp Hồ Chí Minh','http://ktsvn.net/','1');
INSERT INTO tgp_lienket VALUES('6','Địa ốc Online','http://diaoconline.vn/web/','1');
INSERT INTO tgp_lienket VALUES('7','Diễn đàn XD Việt Nam','http://diendanxaydung.vn/','1');
INSERT INTO tgp_lienket VALUES('8','Chợ Xây dựng','http://choxaydung.vn/','1');
INSERT INTO tgp_lienket VALUES('9','Tin tức sự kiện Đà Nẵng','http://danang.gov.vn','1');
INSERT INTO tgp_lienket VALUES('10','Thiết kế nhà đẹp','http://thietkenhadep.vn','1');
CREATE TABLE `tgp_online` (
  `ip` varchar(255) NOT NULL DEFAULT '',
  `time` varchar(255) NOT NULL DEFAULT '',
  `site` varchar(255) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  `user` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO tgp_online VALUES('180.76.5.16','1375203400','','Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)','0');
CREATE TABLE `tgp_online_daily` (
  `ngay` varchar(10) NOT NULL DEFAULT '',
  `bo_dem` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ngay`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO tgp_online_daily VALUES('09/08/2011','1003');
INSERT INTO tgp_online_daily VALUES('10/08/2011','1112');
INSERT INTO tgp_online_daily VALUES('11/08/2011','1211');
INSERT INTO tgp_online_daily VALUES('12/08/2011','1421');
INSERT INTO tgp_online_daily VALUES('13/08/2011','797');
INSERT INTO tgp_online_daily VALUES('15/08/2011','10');
INSERT INTO tgp_online_daily VALUES('16/08/2011','15');
INSERT INTO tgp_online_daily VALUES('17/08/2011','25');
INSERT INTO tgp_online_daily VALUES('18/08/2011','23');
INSERT INTO tgp_online_daily VALUES('19/08/2011','32');
INSERT INTO tgp_online_daily VALUES('20/08/2011','3');
INSERT INTO tgp_online_daily VALUES('27/12/2011','3');
INSERT INTO tgp_online_daily VALUES('28/12/2011','6');
INSERT INTO tgp_online_daily VALUES('31/12/2011','4');
INSERT INTO tgp_online_daily VALUES('03/01/2012','4');
INSERT INTO tgp_online_daily VALUES('04/01/2012','3');
INSERT INTO tgp_online_daily VALUES('05/01/2012','5');
INSERT INTO tgp_online_daily VALUES('09/01/2012','3');
INSERT INTO tgp_online_daily VALUES('31/01/2012','2');
INSERT INTO tgp_online_daily VALUES('09/02/2012','4');
INSERT INTO tgp_online_daily VALUES('10/02/2012','1');
INSERT INTO tgp_online_daily VALUES('19/03/2012','10');
INSERT INTO tgp_online_daily VALUES('20/03/2012','2');
INSERT INTO tgp_online_daily VALUES('26/03/2012','3');
INSERT INTO tgp_online_daily VALUES('04/04/2012','1');
INSERT INTO tgp_online_daily VALUES('14/07/2012','5');
INSERT INTO tgp_online_daily VALUES('16/07/2012','9');
INSERT INTO tgp_online_daily VALUES('17/07/2012','7');
INSERT INTO tgp_online_daily VALUES('18/07/2012','1');
INSERT INTO tgp_online_daily VALUES('23/07/2012','11');
INSERT INTO tgp_online_daily VALUES('24/07/2012','9');
INSERT INTO tgp_online_daily VALUES('25/07/2012','8');
INSERT INTO tgp_online_daily VALUES('26/07/2012','7');
INSERT INTO tgp_online_daily VALUES('27/07/2012','14');
INSERT INTO tgp_online_daily VALUES('28/07/2012','4');
INSERT INTO tgp_online_daily VALUES('30/07/2012','1');
INSERT INTO tgp_online_daily VALUES('01/08/2012','20');
INSERT INTO tgp_online_daily VALUES('02/08/2012','12');
INSERT INTO tgp_online_daily VALUES('03/08/2012','11');
INSERT INTO tgp_online_daily VALUES('04/08/2012','12');
INSERT INTO tgp_online_daily VALUES('05/08/2012','2');
INSERT INTO tgp_online_daily VALUES('06/08/2012','12');
INSERT INTO tgp_online_daily VALUES('07/08/2012','22');
INSERT INTO tgp_online_daily VALUES('08/08/2012','6');
INSERT INTO tgp_online_daily VALUES('09/08/2012','7');
INSERT INTO tgp_online_daily VALUES('10/08/2012','14');
INSERT INTO tgp_online_daily VALUES('11/08/2012','3');
INSERT INTO tgp_online_daily VALUES('12/08/2012','1');
INSERT INTO tgp_online_daily VALUES('13/08/2012','20');
INSERT INTO tgp_online_daily VALUES('14/08/2012','10');
INSERT INTO tgp_online_daily VALUES('15/08/2012','13');
INSERT INTO tgp_online_daily VALUES('16/08/2012','3');
INSERT INTO tgp_online_daily VALUES('17/08/2012','3');
INSERT INTO tgp_online_daily VALUES('18/08/2012','6');
INSERT INTO tgp_online_daily VALUES('19/08/2012','5');
INSERT INTO tgp_online_daily VALUES('20/08/2012','14');
INSERT INTO tgp_online_daily VALUES('21/08/2012','6');
INSERT INTO tgp_online_daily VALUES('22/08/2012','23');
INSERT INTO tgp_online_daily VALUES('23/08/2012','10');
INSERT INTO tgp_online_daily VALUES('24/08/2012','18');
INSERT INTO tgp_online_daily VALUES('25/08/2012','13');
INSERT INTO tgp_online_daily VALUES('26/08/2012','11');
INSERT INTO tgp_online_daily VALUES('27/08/2012','13');
INSERT INTO tgp_online_daily VALUES('28/08/2012','18');
INSERT INTO tgp_online_daily VALUES('29/08/2012','17');
INSERT INTO tgp_online_daily VALUES('30/08/2012','13');
INSERT INTO tgp_online_daily VALUES('31/08/2012','13');
INSERT INTO tgp_online_daily VALUES('01/09/2012','10');
INSERT INTO tgp_online_daily VALUES('02/09/2012','13');
INSERT INTO tgp_online_daily VALUES('03/09/2012','24');
INSERT INTO tgp_online_daily VALUES('04/09/2012','20');
INSERT INTO tgp_online_daily VALUES('05/09/2012','21');
INSERT INTO tgp_online_daily VALUES('06/09/2012','29');
INSERT INTO tgp_online_daily VALUES('07/09/2012','18');
INSERT INTO tgp_online_daily VALUES('08/09/2012','19');
INSERT INTO tgp_online_daily VALUES('09/09/2012','18');
INSERT INTO tgp_online_daily VALUES('10/09/2012','8');
INSERT INTO tgp_online_daily VALUES('11/09/2012','11');
INSERT INTO tgp_online_daily VALUES('12/09/2012','24');
INSERT INTO tgp_online_daily VALUES('13/09/2012','62');
INSERT INTO tgp_online_daily VALUES('14/09/2012','95');
INSERT INTO tgp_online_daily VALUES('15/09/2012','78');
INSERT INTO tgp_online_daily VALUES('16/09/2012','78');
INSERT INTO tgp_online_daily VALUES('17/09/2012','44');
INSERT INTO tgp_online_daily VALUES('18/09/2012','81');
INSERT INTO tgp_online_daily VALUES('19/09/2012','39');
INSERT INTO tgp_online_daily VALUES('20/09/2012','33');
INSERT INTO tgp_online_daily VALUES('21/09/2012','39');
INSERT INTO tgp_online_daily VALUES('22/09/2012','38');
INSERT INTO tgp_online_daily VALUES('23/09/2012','37');
INSERT INTO tgp_online_daily VALUES('24/09/2012','46');
INSERT INTO tgp_online_daily VALUES('25/09/2012','37');
INSERT INTO tgp_online_daily VALUES('26/09/2012','42');
INSERT INTO tgp_online_daily VALUES('27/09/2012','37');
INSERT INTO tgp_online_daily VALUES('28/09/2012','41');
INSERT INTO tgp_online_daily VALUES('29/09/2012','32');
INSERT INTO tgp_online_daily VALUES('30/09/2012','48');
INSERT INTO tgp_online_daily VALUES('01/10/2012','47');
INSERT INTO tgp_online_daily VALUES('02/10/2012','43');
INSERT INTO tgp_online_daily VALUES('03/10/2012','31');
INSERT INTO tgp_online_daily VALUES('04/10/2012','52');
INSERT INTO tgp_online_daily VALUES('05/10/2012','36');
INSERT INTO tgp_online_daily VALUES('06/10/2012','41');
INSERT INTO tgp_online_daily VALUES('07/10/2012','47');
INSERT INTO tgp_online_daily VALUES('08/10/2012','26');
INSERT INTO tgp_online_daily VALUES('09/10/2012','32');
INSERT INTO tgp_online_daily VALUES('10/10/2012','24');
INSERT INTO tgp_online_daily VALUES('11/10/2012','32');
INSERT INTO tgp_online_daily VALUES('12/10/2012','25');
INSERT INTO tgp_online_daily VALUES('13/10/2012','44');
INSERT INTO tgp_online_daily VALUES('14/10/2012','37');
INSERT INTO tgp_online_daily VALUES('15/10/2012','30');
INSERT INTO tgp_online_daily VALUES('16/10/2012','36');
INSERT INTO tgp_online_daily VALUES('17/10/2012','28');
INSERT INTO tgp_online_daily VALUES('18/10/2012','35');
INSERT INTO tgp_online_daily VALUES('19/10/2012','36');
INSERT INTO tgp_online_daily VALUES('20/10/2012','51');
INSERT INTO tgp_online_daily VALUES('21/10/2012','52');
INSERT INTO tgp_online_daily VALUES('22/10/2012','42');
INSERT INTO tgp_online_daily VALUES('23/10/2012','40');
INSERT INTO tgp_online_daily VALUES('24/10/2012','54');
INSERT INTO tgp_online_daily VALUES('25/10/2012','56');
INSERT INTO tgp_online_daily VALUES('26/10/2012','40');
INSERT INTO tgp_online_daily VALUES('27/10/2012','37');
INSERT INTO tgp_online_daily VALUES('28/10/2012','28');
INSERT INTO tgp_online_daily VALUES('29/10/2012','43');
INSERT INTO tgp_online_daily VALUES('30/10/2012','63');
INSERT INTO tgp_online_daily VALUES('31/10/2012','34');
INSERT INTO tgp_online_daily VALUES('01/11/2012','53');
INSERT INTO tgp_online_daily VALUES('02/11/2012','70');
INSERT INTO tgp_online_daily VALUES('03/11/2012','50');
INSERT INTO tgp_online_daily VALUES('04/11/2012','35');
INSERT INTO tgp_online_daily VALUES('05/11/2012','35');
INSERT INTO tgp_online_daily VALUES('06/11/2012','44');
INSERT INTO tgp_online_daily VALUES('07/11/2012','65');
INSERT INTO tgp_online_daily VALUES('08/11/2012','50');
INSERT INTO tgp_online_daily VALUES('09/11/2012','71');
INSERT INTO tgp_online_daily VALUES('10/11/2012','39');
INSERT INTO tgp_online_daily VALUES('11/11/2012','36');
INSERT INTO tgp_online_daily VALUES('12/11/2012','55');
INSERT INTO tgp_online_daily VALUES('13/11/2012','30');
INSERT INTO tgp_online_daily VALUES('14/11/2012','41');
INSERT INTO tgp_online_daily VALUES('15/11/2012','40');
INSERT INTO tgp_online_daily VALUES('16/11/2012','46');
INSERT INTO tgp_online_daily VALUES('17/11/2012','39');
INSERT INTO tgp_online_daily VALUES('18/11/2012','42');
INSERT INTO tgp_online_daily VALUES('19/11/2012','48');
INSERT INTO tgp_online_daily VALUES('20/11/2012','30');
INSERT INTO tgp_online_daily VALUES('21/11/2012','33');
INSERT INTO tgp_online_daily VALUES('22/11/2012','34');
INSERT INTO tgp_online_daily VALUES('23/11/2012','44');
INSERT INTO tgp_online_daily VALUES('24/11/2012','21');
INSERT INTO tgp_online_daily VALUES('25/11/2012','14');
INSERT INTO tgp_online_daily VALUES('26/11/2012','35');
INSERT INTO tgp_online_daily VALUES('27/11/2012','27');
INSERT INTO tgp_online_daily VALUES('28/11/2012','59');
INSERT INTO tgp_online_daily VALUES('29/11/2012','48');
INSERT INTO tgp_online_daily VALUES('30/11/2012','48');
INSERT INTO tgp_online_daily VALUES('01/12/2012','40');
INSERT INTO tgp_online_daily VALUES('02/12/2012','50');
INSERT INTO tgp_online_daily VALUES('03/12/2012','35');
INSERT INTO tgp_online_daily VALUES('04/12/2012','34');
INSERT INTO tgp_online_daily VALUES('05/12/2012','23');
INSERT INTO tgp_online_daily VALUES('06/12/2012','34');
INSERT INTO tgp_online_daily VALUES('07/12/2012','33');
INSERT INTO tgp_online_daily VALUES('08/12/2012','39');
INSERT INTO tgp_online_daily VALUES('09/12/2012','50');
INSERT INTO tgp_online_daily VALUES('10/12/2012','44');
INSERT INTO tgp_online_daily VALUES('11/12/2012','41');
INSERT INTO tgp_online_daily VALUES('12/12/2012','45');
INSERT INTO tgp_online_daily VALUES('13/12/2012','70');
INSERT INTO tgp_online_daily VALUES('14/12/2012','71');
INSERT INTO tgp_online_daily VALUES('15/12/2012','45');
INSERT INTO tgp_online_daily VALUES('16/12/2012','52');
INSERT INTO tgp_online_daily VALUES('17/12/2012','65');
INSERT INTO tgp_online_daily VALUES('18/12/2012','52');
INSERT INTO tgp_online_daily VALUES('19/12/2012','64');
INSERT INTO tgp_online_daily VALUES('20/12/2012','54');
INSERT INTO tgp_online_daily VALUES('21/12/2012','63');
INSERT INTO tgp_online_daily VALUES('22/12/2012','56');
INSERT INTO tgp_online_daily VALUES('23/12/2012','40');
INSERT INTO tgp_online_daily VALUES('24/12/2012','71');
INSERT INTO tgp_online_daily VALUES('25/12/2012','56');
INSERT INTO tgp_online_daily VALUES('26/12/2012','83');
INSERT INTO tgp_online_daily VALUES('27/12/2012','82');
INSERT INTO tgp_online_daily VALUES('28/12/2012','69');
INSERT INTO tgp_online_daily VALUES('29/12/2012','55');
INSERT INTO tgp_online_daily VALUES('30/12/2012','63');
INSERT INTO tgp_online_daily VALUES('31/12/2012','75');
INSERT INTO tgp_online_daily VALUES('01/01/2013','43');
INSERT INTO tgp_online_daily VALUES('02/01/2013','52');
INSERT INTO tgp_online_daily VALUES('03/01/2013','75');
INSERT INTO tgp_online_daily VALUES('04/01/2013','44');
INSERT INTO tgp_online_daily VALUES('05/01/2013','74');
INSERT INTO tgp_online_daily VALUES('06/01/2013','61');
INSERT INTO tgp_online_daily VALUES('07/01/2013','63');
INSERT INTO tgp_online_daily VALUES('08/01/2013','57');
INSERT INTO tgp_online_daily VALUES('09/01/2013','55');
INSERT INTO tgp_online_daily VALUES('10/01/2013','33');
INSERT INTO tgp_online_daily VALUES('11/01/2013','46');
INSERT INTO tgp_online_daily VALUES('12/01/2013','57');
INSERT INTO tgp_online_daily VALUES('13/01/2013','44');
INSERT INTO tgp_online_daily VALUES('14/01/2013','77');
INSERT INTO tgp_online_daily VALUES('15/01/2013','27');
INSERT INTO tgp_online_daily VALUES('16/01/2013','57');
INSERT INTO tgp_online_daily VALUES('17/01/2013','66');
INSERT INTO tgp_online_daily VALUES('18/01/2013','47');
INSERT INTO tgp_online_daily VALUES('19/01/2013','45');
INSERT INTO tgp_online_daily VALUES('20/01/2013','70');
INSERT INTO tgp_online_daily VALUES('21/01/2013','94');
INSERT INTO tgp_online_daily VALUES('22/01/2013','73');
INSERT INTO tgp_online_daily VALUES('23/01/2013','49');
INSERT INTO tgp_online_daily VALUES('24/01/2013','58');
INSERT INTO tgp_online_daily VALUES('25/01/2013','47');
INSERT INTO tgp_online_daily VALUES('26/01/2013','47');
INSERT INTO tgp_online_daily VALUES('27/01/2013','52');
INSERT INTO tgp_online_daily VALUES('28/01/2013','61');
INSERT INTO tgp_online_daily VALUES('29/01/2013','44');
INSERT INTO tgp_online_daily VALUES('30/01/2013','38');
INSERT INTO tgp_online_daily VALUES('31/01/2013','48');
INSERT INTO tgp_online_daily VALUES('01/02/2013','36');
INSERT INTO tgp_online_daily VALUES('02/02/2013','73');
INSERT INTO tgp_online_daily VALUES('03/02/2013','36');
INSERT INTO tgp_online_daily VALUES('04/02/2013','44');
INSERT INTO tgp_online_daily VALUES('05/02/2013','60');
INSERT INTO tgp_online_daily VALUES('06/02/2013','75');
INSERT INTO tgp_online_daily VALUES('07/02/2013','48');
INSERT INTO tgp_online_daily VALUES('08/02/2013','39');
INSERT INTO tgp_online_daily VALUES('09/02/2013','32');
INSERT INTO tgp_online_daily VALUES('10/02/2013','51');
INSERT INTO tgp_online_daily VALUES('11/02/2013','56');
INSERT INTO tgp_online_daily VALUES('12/02/2013','78');
INSERT INTO tgp_online_daily VALUES('13/02/2013','64');
INSERT INTO tgp_online_daily VALUES('14/02/2013','76');
INSERT INTO tgp_online_daily VALUES('15/02/2013','35');
INSERT INTO tgp_online_daily VALUES('16/02/2013','51');
INSERT INTO tgp_online_daily VALUES('17/02/2013','59');
INSERT INTO tgp_online_daily VALUES('18/02/2013','38');
INSERT INTO tgp_online_daily VALUES('19/02/2013','38');
INSERT INTO tgp_online_daily VALUES('20/02/2013','52');
INSERT INTO tgp_online_daily VALUES('21/02/2013','32');
INSERT INTO tgp_online_daily VALUES('22/02/2013','39');
INSERT INTO tgp_online_daily VALUES('23/02/2013','46');
INSERT INTO tgp_online_daily VALUES('24/02/2013','80');
INSERT INTO tgp_online_daily VALUES('25/02/2013','57');
INSERT INTO tgp_online_daily VALUES('26/02/2013','39');
INSERT INTO tgp_online_daily VALUES('27/02/2013','76');
INSERT INTO tgp_online_daily VALUES('28/02/2013','62');
INSERT INTO tgp_online_daily VALUES('01/03/2013','48');
INSERT INTO tgp_online_daily VALUES('02/03/2013','47');
INSERT INTO tgp_online_daily VALUES('03/03/2013','37');
INSERT INTO tgp_online_daily VALUES('04/03/2013','43');
INSERT INTO tgp_online_daily VALUES('05/03/2013','36');
INSERT INTO tgp_online_daily VALUES('06/03/2013','39');
INSERT INTO tgp_online_daily VALUES('07/03/2013','44');
INSERT INTO tgp_online_daily VALUES('08/03/2013','36');
INSERT INTO tgp_online_daily VALUES('09/03/2013','44');
INSERT INTO tgp_online_daily VALUES('10/03/2013','71');
INSERT INTO tgp_online_daily VALUES('11/03/2013','78');
INSERT INTO tgp_online_daily VALUES('12/03/2013','50');
INSERT INTO tgp_online_daily VALUES('13/03/2013','51');
INSERT INTO tgp_online_daily VALUES('14/03/2013','41');
INSERT INTO tgp_online_daily VALUES('15/03/2013','32');
INSERT INTO tgp_online_daily VALUES('16/03/2013','46');
INSERT INTO tgp_online_daily VALUES('17/03/2013','37');
INSERT INTO tgp_online_daily VALUES('18/03/2013','52');
INSERT INTO tgp_online_daily VALUES('19/03/2013','32');
INSERT INTO tgp_online_daily VALUES('20/03/2013','42');
INSERT INTO tgp_online_daily VALUES('21/03/2013','36');
INSERT INTO tgp_online_daily VALUES('22/03/2013','58');
INSERT INTO tgp_online_daily VALUES('23/03/2013','35');
INSERT INTO tgp_online_daily VALUES('24/03/2013','31');
INSERT INTO tgp_online_daily VALUES('25/03/2013','43');
INSERT INTO tgp_online_daily VALUES('26/03/2013','40');
INSERT INTO tgp_online_daily VALUES('27/03/2013','36');
INSERT INTO tgp_online_daily VALUES('28/03/2013','41');
INSERT INTO tgp_online_daily VALUES('29/03/2013','47');
INSERT INTO tgp_online_daily VALUES('30/03/2013','49');
INSERT INTO tgp_online_daily VALUES('31/03/2013','45');
INSERT INTO tgp_online_daily VALUES('01/04/2013','42');
INSERT INTO tgp_online_daily VALUES('02/04/2013','44');
INSERT INTO tgp_online_daily VALUES('03/04/2013','27');
INSERT INTO tgp_online_daily VALUES('04/04/2013','41');
INSERT INTO tgp_online_daily VALUES('05/04/2013','85');
INSERT INTO tgp_online_daily VALUES('06/04/2013','58');
INSERT INTO tgp_online_daily VALUES('07/04/2013','36');
INSERT INTO tgp_online_daily VALUES('08/04/2013','28');
INSERT INTO tgp_online_daily VALUES('09/04/2013','44');
INSERT INTO tgp_online_daily VALUES('10/04/2013','39');
INSERT INTO tgp_online_daily VALUES('11/04/2013','37');
INSERT INTO tgp_online_daily VALUES('12/04/2013','41');
INSERT INTO tgp_online_daily VALUES('13/04/2013','36');
INSERT INTO tgp_online_daily VALUES('14/04/2013','29');
INSERT INTO tgp_online_daily VALUES('15/04/2013','33');
INSERT INTO tgp_online_daily VALUES('16/04/2013','47');
INSERT INTO tgp_online_daily VALUES('17/04/2013','37');
INSERT INTO tgp_online_daily VALUES('18/04/2013','54');
INSERT INTO tgp_online_daily VALUES('19/04/2013','54');
INSERT INTO tgp_online_daily VALUES('20/04/2013','54');
INSERT INTO tgp_online_daily VALUES('21/04/2013','33');
INSERT INTO tgp_online_daily VALUES('22/04/2013','46');
INSERT INTO tgp_online_daily VALUES('23/04/2013','62');
INSERT INTO tgp_online_daily VALUES('24/04/2013','43');
INSERT INTO tgp_online_daily VALUES('25/04/2013','42');
INSERT INTO tgp_online_daily VALUES('26/04/2013','37');
INSERT INTO tgp_online_daily VALUES('27/04/2013','44');
INSERT INTO tgp_online_daily VALUES('28/04/2013','47');
INSERT INTO tgp_online_daily VALUES('29/04/2013','35');
INSERT INTO tgp_online_daily VALUES('30/04/2013','87');
INSERT INTO tgp_online_daily VALUES('01/05/2013','49');
INSERT INTO tgp_online_daily VALUES('02/05/2013','67');
INSERT INTO tgp_online_daily VALUES('03/05/2013','56');
INSERT INTO tgp_online_daily VALUES('04/05/2013','68');
INSERT INTO tgp_online_daily VALUES('05/05/2013','49');
INSERT INTO tgp_online_daily VALUES('06/05/2013','45');
INSERT INTO tgp_online_daily VALUES('07/05/2013','48');
INSERT INTO tgp_online_daily VALUES('08/05/2013','33');
INSERT INTO tgp_online_daily VALUES('09/05/2013','46');
INSERT INTO tgp_online_daily VALUES('10/05/2013','50');
INSERT INTO tgp_online_daily VALUES('11/05/2013','46');
INSERT INTO tgp_online_daily VALUES('12/05/2013','49');
INSERT INTO tgp_online_daily VALUES('13/05/2013','50');
INSERT INTO tgp_online_daily VALUES('14/05/2013','46');
INSERT INTO tgp_online_daily VALUES('15/05/2013','50');
INSERT INTO tgp_online_daily VALUES('16/05/2013','51');
INSERT INTO tgp_online_daily VALUES('17/05/2013','36');
INSERT INTO tgp_online_daily VALUES('18/05/2013','47');
INSERT INTO tgp_online_daily VALUES('19/05/2013','52');
INSERT INTO tgp_online_daily VALUES('20/05/2013','44');
INSERT INTO tgp_online_daily VALUES('21/05/2013','34');
INSERT INTO tgp_online_daily VALUES('22/05/2013','43');
INSERT INTO tgp_online_daily VALUES('23/05/2013','43');
INSERT INTO tgp_online_daily VALUES('24/05/2013','32');
INSERT INTO tgp_online_daily VALUES('25/05/2013','77');
INSERT INTO tgp_online_daily VALUES('26/05/2013','46');
INSERT INTO tgp_online_daily VALUES('27/05/2013','48');
INSERT INTO tgp_online_daily VALUES('28/05/2013','40');
INSERT INTO tgp_online_daily VALUES('29/05/2013','33');
INSERT INTO tgp_online_daily VALUES('30/05/2013','46');
INSERT INTO tgp_online_daily VALUES('31/05/2013','55');
INSERT INTO tgp_online_daily VALUES('01/06/2013','48');
INSERT INTO tgp_online_daily VALUES('02/06/2013','59');
INSERT INTO tgp_online_daily VALUES('03/06/2013','44');
INSERT INTO tgp_online_daily VALUES('04/06/2013','50');
INSERT INTO tgp_online_daily VALUES('05/06/2013','49');
INSERT INTO tgp_online_daily VALUES('06/06/2013','46');
INSERT INTO tgp_online_daily VALUES('07/06/2013','52');
INSERT INTO tgp_online_daily VALUES('08/06/2013','44');
INSERT INTO tgp_online_daily VALUES('09/06/2013','35');
INSERT INTO tgp_online_daily VALUES('10/06/2013','42');
INSERT INTO tgp_online_daily VALUES('11/06/2013','45');
INSERT INTO tgp_online_daily VALUES('12/06/2013','40');
INSERT INTO tgp_online_daily VALUES('13/06/2013','55');
INSERT INTO tgp_online_daily VALUES('14/06/2013','45');
INSERT INTO tgp_online_daily VALUES('15/06/2013','32');
INSERT INTO tgp_online_daily VALUES('16/06/2013','36');
INSERT INTO tgp_online_daily VALUES('17/06/2013','43');
INSERT INTO tgp_online_daily VALUES('18/06/2013','32');
INSERT INTO tgp_online_daily VALUES('19/06/2013','77');
INSERT INTO tgp_online_daily VALUES('20/06/2013','43');
INSERT INTO tgp_online_daily VALUES('21/06/2013','48');
INSERT INTO tgp_online_daily VALUES('22/06/2013','37');
INSERT INTO tgp_online_daily VALUES('23/06/2013','34');
INSERT INTO tgp_online_daily VALUES('24/06/2013','50');
INSERT INTO tgp_online_daily VALUES('25/06/2013','44');
INSERT INTO tgp_online_daily VALUES('26/06/2013','43');
INSERT INTO tgp_online_daily VALUES('27/06/2013','42');
INSERT INTO tgp_online_daily VALUES('28/06/2013','44');
INSERT INTO tgp_online_daily VALUES('29/06/2013','60');
INSERT INTO tgp_online_daily VALUES('30/06/2013','36');
INSERT INTO tgp_online_daily VALUES('01/07/2013','45');
INSERT INTO tgp_online_daily VALUES('02/07/2013','44');
INSERT INTO tgp_online_daily VALUES('03/07/2013','44');
INSERT INTO tgp_online_daily VALUES('04/07/2013','50');
INSERT INTO tgp_online_daily VALUES('05/07/2013','41');
INSERT INTO tgp_online_daily VALUES('06/07/2013','31');
INSERT INTO tgp_online_daily VALUES('07/07/2013','42');
INSERT INTO tgp_online_daily VALUES('08/07/2013','34');
INSERT INTO tgp_online_daily VALUES('09/07/2013','48');
INSERT INTO tgp_online_daily VALUES('10/07/2013','24');
INSERT INTO tgp_online_daily VALUES('11/07/2013','38');
INSERT INTO tgp_online_daily VALUES('12/07/2013','46');
INSERT INTO tgp_online_daily VALUES('13/07/2013','25');
INSERT INTO tgp_online_daily VALUES('14/07/2013','70');
INSERT INTO tgp_online_daily VALUES('15/07/2013','51');
INSERT INTO tgp_online_daily VALUES('16/07/2013','43');
INSERT INTO tgp_online_daily VALUES('17/07/2013','43');
INSERT INTO tgp_online_daily VALUES('18/07/2013','36');
INSERT INTO tgp_online_daily VALUES('19/07/2013','46');
INSERT INTO tgp_online_daily VALUES('20/07/2013','39');
INSERT INTO tgp_online_daily VALUES('21/07/2013','38');
INSERT INTO tgp_online_daily VALUES('22/07/2013','45');
INSERT INTO tgp_online_daily VALUES('23/07/2013','48');
INSERT INTO tgp_online_daily VALUES('24/07/2013','49');
INSERT INTO tgp_online_daily VALUES('25/07/2013','31');
INSERT INTO tgp_online_daily VALUES('26/07/2013','55');
INSERT INTO tgp_online_daily VALUES('27/07/2013','63');
INSERT INTO tgp_online_daily VALUES('28/07/2013','78');
INSERT INTO tgp_online_daily VALUES('29/07/2013','72');
INSERT INTO tgp_online_daily VALUES('30/07/2013','37');
CREATE TABLE `tgp_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `time` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `luot_xem` int(11) DEFAULT '1',
  `chu_thich` text,
  `hinh` varchar(50) DEFAULT '1',
  `seo_keyword` text,
  `seo_desc` text,
  `seo_copyright` text,
  `tag` text,
  `seo_permalink` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

INSERT INTO tgp_page VALUES('1','copyrgiht','Copyrgiht','<div><span style=\"color: rgb(255, 102, 0); \"><strong>Copyright &copy; 2012 - <a href=\"http://studio8.vn/\"><span style=\"color: rgb(255, 102, 0); \">Studio8</span></a></strong></span></div>\r\n<div><strong>Hotline:</strong> 0935 79 79 86</div>\r\n<div>Email: <a href=\"mailto:info@studio8.vn\">info@studio8.vn</a></div>','1352811772','1','42828','','1','','','','','');
INSERT INTO tgp_page VALUES('2','gioi_thieu_1','Về chúng tôi','<p class=\"MsoNormal\" style=\"text-align: center; text-indent: 0.5in;\"><strong><br />\r\n</strong><img src=\"http://www.studio8.vn/uploads/studio8/logo/logo_studio8_khong_back.png\" width=\"280\" height=\"193\" border=\"0\" alt=\"\" />&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: left; text-indent: 0.5in; margin-left: 40px;\"><b><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><br />\r\n</span></b><span style=\"font-size: large;\"><b><span style=\"line-height: 115%; font-family: \'Times New Roman\', serif;\">Slogan:</span></b><span style=\"line-height: 115%; font-family: \'Times New Roman\', serif;\"> Đẹp diệu kỳ, như &yacute; muốn<br />\r\n</span></span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><o:p></o:p></span><span style=\"font-size: large;\"><b><span style=\"line-height: 115%; font-family: \'Times New Roman\', serif;\">Tầm nh&igrave;n:</span></b><span style=\"line-height: 115%; font-family: \'Times New Roman\', serif;\"> Trở th&agrave;nh nơi đ&aacute;ng tin cậy số một tại Đ&agrave; Nẵng với dịch vụ chụp ảnh chuy&ecirc;n nghiệp, chất lượng tuyệt vời v&agrave; dịch vụ chu đ&aacute;o.<br />\r\n</span></span><span style=\"font-size:12.0pt;line-height:115%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><o:p></o:p></span><span style=\"font-size: large;\"><b><span style=\"line-height: 115%; font-family: \'Times New Roman\', serif;\">Sứ mệnh: </span></b><span style=\"line-height: 115%; font-family: Wingdings;\"><br />\r\n</span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: left; text-indent: 0.5in; margin-left: 40px;\"><span style=\"font-size: large;\"><span style=\"line-height: 115%; font-family: Wingdings;\">&sect;<span style=\"line-height: normal; font-family: \'Times New Roman\';\">&nbsp; </span></span><!--[endif]--><b><i><span style=\"line-height: 115%; font-family: \'Times New Roman\', serif;\">Với kh&aacute;ch h&agrave;ng:&nbsp;</span></i></b><b style=\"color: rgb(255, 102, 0); font-family: \'Times New Roman\', serif; font-size: 16px; line-height: 18px;\">Studio 8</b><span style=\"line-height: 115%; font-family: \'Times New Roman\', serif;\">&nbsp;với tất cả t&igrave;nh y&ecirc;u, niềm đam m&ecirc;, t&iacute;nh chuy&ecirc;n nghiệp, lu&ocirc;n lắng nghe, cam kết l&agrave;m h&agrave;i l&ograve;ng kh&aacute;ch h&agrave;ng bằng những t&aacute;c phẩm tuyệt đẹp v&agrave; dịch vụ chu đ&aacute;o. Mang đến sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng l&agrave; niềm hạnh ph&uacute;c lớn của ch&uacute;ng t&ocirc;i</span><span style=\"line-height: 115%; font-family: Wingdings;\"><br />\r\n</span></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: left; text-indent: 0.5in; margin-left: 40px;\"><span style=\"font-size: large;\"><span style=\"line-height: 115%; font-family: Wingdings;\">&sect;<span style=\"line-height: normal; font-family: \'Times New Roman\';\">&nbsp; </span></span><!--[endif]--><b><i><span style=\"line-height: 115%; font-family: \'Times New Roman\', serif;\">Với x&atilde; hội:</span></i></b><span style=\"line-height: 115%; font-family: \'Times New Roman\', serif;\"> Lu&ocirc;n hướng c&aacute;c hoạt động của <span style=\"color: rgb(255, 102, 0);\"><b>Studio 8</b></span> h&agrave;i h&ograve;a với lợi &iacute;ch cộng đồng. G&oacute;p phần mang đến một cuộc sống hạnh ph&uacute;c hơn, tươi đẹp hơn</span></span><span style=\"font-size:12.0pt;line-height:115%;\r\nfont-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center; text-indent: 0.5in; \"><img src=\"http://farm9.staticflickr.com/8304/7851016270_fa47b79ca4_b.jpg\" alt=\"T&aacute;c nghiệp tại Người đẹp Đ&agrave; Nẵng 2012\" width=\"500\" height=\"333\" align=\"absMiddle\" border=\"2\" /><br />\r\nT&aacute;c nghiệp tại Người đẹp Đ&agrave; Nẵng 2012</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right; text-indent: 0.5in;\"><a href=\"http://www.studio8.vn\"><span style=\"color: rgb(255, 102, 0); \"><strong>Studio 8</strong></span></a></p>','1366302283','1','2094',' ','2.jpg','','','','studio, wedding, event','');
INSERT INTO tgp_page VALUES('26','loi_noi','Lời nói','&nbsp;<span style=\"color: rgb(246, 88, 29); \">Yếu tố quan trọng nhất: kỹ thuật nhiều m&agrave; c&aacute;i thần kh&ocirc;ng đẹp th&igrave; bức ảnh cũng kh&ocirc;ng c&oacute; gi&aacute; trị v&igrave; lẽ đ&oacute; tất cả c&aacute;c ảnh m&agrave;</span> Studio 8 <span style=\"color: rgb(246, 88, 29); \">đem đến l&agrave; lột tả được c&aacute;i thần của người muốn chụp &ldquo;người mẫu&rdquo;&hellip;</span>\r\n<div>&nbsp;</div>','1343360958','1','6381','','1','','','','','');
INSERT INTO tgp_page VALUES('23','dich_vu_1','Dịch vụ chụp Ảnh cưới','<p>Tại <span style=\"color: rgb(255, 102, 0);\"><strong>Studio8</strong></span>, đội ngũ nhiếp ảnh gia d&agrave;y dạn kinh nghiệm, tận t&igrave;nh v&agrave; s&aacute;ng tạo c&ugrave;ng c&ocirc;ng nghệ xử l&yacute; ảnh hiện đại sẽ gi&uacute;p c&aacute;c cặp đ&ocirc;i c&oacute; được những khung h&igrave;nh đẹp như &yacute; theo nhiều phong c&aacute;ch kh&aacute;c nhau, từ cổ điển truyền thống cho tới hiện đại, ph&aacute; c&aacute;ch.</p>\r\n<p style=\"text-align: center;\"><img height=\"333\" width=\"500\" src=\"http://farm9.staticflickr.com/8052/8146946932_207503e2a5.jpg\" alt=\"\" /></p>\r\n<p style=\"text-align: justify;\">Ng&agrave;y nay, khung cảnh trong album cưới kh&ocirc;ng chỉ dừng lại trong những Studio đơn điệu m&agrave; phong c&aacute;ch gần gũi thi&ecirc;n nhi&ecirc;n, &ldquo;tạo d&aacute;ng&rdquo; ngay tại những thắng cảnh đẹp đ&atilde; trở th&agrave;nh tr&agrave;o lưu phổ biến của c&aacute;c bạn trẻ. Tuy nhi&ecirc;n, chuẩn bị lễ cưới l&agrave; cả một qu&aacute; tr&igrave;nh hết sức vất vả, kh&ocirc;ng phải cặp đ&ocirc;i n&agrave;o cũng c&oacute; đủ thời gian v&agrave; kinh ph&iacute; để đến được những địa danh y&ecirc;u th&iacute;ch. Hiểu được những điều đ&oacute;, <span style=\"color: rgb(255, 102, 0);\"><strong>Studio8</strong></span> đ&atilde; v&agrave; đang thực hiện c&aacute;c g&oacute;i dịch vụ <em><strong>&quot;tiện lợi&quot;</strong></em> nhất đ&ecirc;n với c&aacute;c cặp đ&ocirc;i sắp cưới, để họ c&oacute; thể chọn cho m&igrave;nh giải ph&aacute;p thật tối ưu nhưng vẫn đậm chất nghệ thuật, độc đ&aacute;o v&agrave; mới lạ.<br />\r\n<br style=\"margin: 0px; padding: 0px; \" />\r\nVới mục ti&ecirc;u mang những điều kh&aacute;c biệt đến trong từng g&oacute;i sản phẩm... <span style=\"color: rgb(255, 102, 0);\"><strong>Studio8</strong></span> cam kết mỗi album h&igrave;nh được chụp đều sẽ l&agrave; mỗi album ri&ecirc;ng biệt, được đầu tư ngay trước thời điểm chụp với concept, layout theo phong c&aacute;ch của <span style=\"color: rgb(255, 102, 0);\"><strong>Studio8</strong></span> v&agrave; theo những y&ecirc;u cầu đặc biệt, bất ngờ m&agrave; CR hay CD muốn đem lại.</p>\r\n<p style=\"text-align: center;\"><img height=\"333\" width=\"500\" alt=\"\" src=\"http://farm9.staticflickr.com/8031/7912430784_72731f5e33_b.jpg\" /></p>\r\n<p style=\"text-align: justify;\">Ngo&agrave;i c&aacute;c điểm hiện tại đang c&oacute; trong th&agrave;nh phố, ngo&agrave;i c&aacute;c khu Resort nổi tiếng hay xa hơn l&agrave; Hu&ecirc;, B&agrave; N&agrave;, Hội An... <span style=\"color: rgb(255, 102, 0);\"><strong>Studio8</strong></span> vẫn đang tiếp tục t&igrave;m kiếm những địa điểm mới tr&ecirc;n con đường đem đến sự <strong>MỚI&nbsp;MẺ - KH&Aacute;C&nbsp;BIỆT</strong>, v&agrave; hiện tại ch&uacute;ng t&ocirc;i đ&atilde; c&oacute; trong tay danh s&aacute;ch c&aacute;c nơi đến m&agrave; chưa lần n&agrave;o được khai th&aacute;c<br />\r\n<br style=\"margin: 0px; padding: 0px; \" />\r\n<span style=\"color: rgb(255, 102, 0);\"><strong> Studio8</strong></span> mong muốn c&ugrave;ng bạn lưu giữ lại những khoảnh khắc đ&aacute;ng nhớ trong cuộc đời. Đến với ch&uacute;ng t&ocirc;i để c&oacute; những trải nghiệm th&uacute; vị cho một khởi đầu ho&agrave;n hảo!<br />\r\n<br />\r\n<strong>BẢNG GI&Aacute; DỊCH VỤ CHỤP ẢNH CƯỚI TẠI STUDIO 8<br />\r\n<br />\r\n</strong></p>\r\n<p style=\"text-align: right;\"><span style=\"color: rgb(255, 102, 0);\"><strong>Studio8.vn</strong></span></p>','1351835711','1','1930','Một trong những công việc được được các cặp đôi ưu tiên trước khi tiến hành hôn lễ là là lựa chọn ảnh viện uy tín, phù hợp để thực hiện một cuốn album ảnh ấn tượng làm kỷ niệm và giới thiệu đến bạn bè, quan khách.','23.jpg','','','','','');
INSERT INTO tgp_page VALUES('6','from_lien_he','Gửi mail liên hệ','<div style=\"text-align: justify;\">Ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng đ&oacute;n nhận những &yacute; kiến đ&oacute;ng g&oacute;p cũng như hồi đ&aacute;p c&aacute;c thắc mắc của Kh&aacute;ch h&agrave;ng về dịch vụ của C&ocirc;ng ty ch&uacute;ng t&ocirc;i. Xin vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i nếu Kh&aacute;ch h&agrave;ng c&oacute; bất kỳ y&ecirc;u cầu hoặc thắc mắc n&agrave;o.</div>\r\n<div style=\"text-align: left;\"><br />\r\nKh&aacute;ch h&agrave;ng <strong>h&atilde;y li&ecirc;n hệ trực tiếp với ch&uacute;ng t&ocirc;i qua số điện thoại sau: <br />\r\n</strong><span style=\"color: rgb(255, 102, 0); \"><strong>0935 79..79.86 - Kim Điền</strong></span><br />\r\n&nbsp;</div>\r\n<div style=\"text-align: justify;\">Để c&oacute; thể đ&aacute;p ứng được c&aacute;c y&ecirc;u cầu v&agrave; c&aacute;c &yacute; kiến đ&oacute;ng g&oacute;p của Kh&aacute;ch h&agrave;ng một c&aacute;ch nhanh nhất, xin vui l&ograve;ng điền v&agrave;o mẫu dưới đ&acirc;y v&agrave; nhấn v&agrave;o n&uacute;t gửi đến ch&uacute;ng t&ocirc;i, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n lạc với&nbsp; Kh&aacute;ch h&agrave;ng trong khoảng thời gian ngắn nhất:</div>\r\n<br />','1352428470','1','2351','','1','','','','','');
INSERT INTO tgp_page VALUES('24','dich_vu_2','Dịch vụ chụp ảnh Nghệ thuật','<div style=\"text-align: justify;\">\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, \'Lucida Grande\', Helvetica, Tahoma, Verdana; vertical-align: baseline; line-height: 18px; text-align: justify; \">Nhiều bạn trẻ kh&ocirc;ng ngần ngại chia sẻ rằng muốn c&oacute; những album chụp ảnh ngo&agrave;i trời, theo những y&ecirc;u cầu v&agrave; style <em>&ldquo;made in me&rdquo;</em> để c&oacute; những bức ảnh độc &ldquo;treo&rdquo; tr&ecirc;n facebook&hellip; nhưng kh&ocirc;ng biết sẽ bắt đầu từ đ&acirc;u. Nhờ bạn b&egrave; th&igrave; kh&ocirc;ng chuy&ecirc;n nghiệp, t&igrave;m đến c&aacute;c studio &aacute;o cưới chụp ngoại cảnh th&igrave; họ kh&ocirc;ng nhận chụp đơn lẻ hoặc gi&aacute; th&agrave;nh cao</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, \'Lucida Grande\', Helvetica, Tahoma, Verdana; vertical-align: baseline; line-height: 18px; text-align: justify; \"><strong style=\"color: rgb(255, 102, 0); \">Studio8</strong>&nbsp;sẽ lắng nghe những &yacute; tưởng của bạn, về nơi bạn muốn thực hiện những bức ảnh của m&igrave;nh, v&agrave; tư vấn cho bạn những g&oacute;c ảnh đẹp, địa điểm l&yacute; tưởng v&agrave; c&aacute;ch &ldquo;diễn&rdquo; tự nhi&ecirc;n trước ống k&iacute;nh. Bạn sẽ kh&ocirc;ng c&ograve;n lo về độ chuy&ecirc;n nghiệp của những bức ảnh của m&igrave;nh</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, \'Lucida Grande\', Helvetica, Tahoma, Verdana; vertical-align: baseline; line-height: 18px; text-align: center; \"><img src=\"http://farm9.staticflickr.com/8312/7917781716_0b6e7b6d31_b.jpg\" width=\"300\" height=\"450\" alt=\"\" /></p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, \'Lucida Grande\', Helvetica, Tahoma, Verdana; vertical-align: baseline; line-height: 18px; text-align: justify; \">Ngo&agrave;i ra,&nbsp; <strong style=\"color: rgb(255, 102, 0); \">Studio8</strong>&nbsp;c&ograve;n gi&uacute;p bạn ghi lại những hoạt động, sinh hoạt trường lớp, du lịch d&atilde; ngoại, vui chơi&hellip; trong c&aacute;c dịp v&agrave; ghi lại trong DVD để lưu niệm.&nbsp;<strong style=\"color: rgb(255, 102, 0); \">Studio8</strong>&nbsp;cũng cung cấp lu&ocirc;n dịch vụ viết lời b&igrave;nh v&agrave; bi&ecirc;n tập theo &yacute; kiến của bạn</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, \'Lucida Grande\', Helvetica, Tahoma, Verdana; vertical-align: baseline; line-height: 18px; text-align: center; \"><img src=\"http://farm9.staticflickr.com/8040/7917782224_f2761efdbf_b.jpg\" width=\"300\" height=\"450\" alt=\"\" /><br />\r\n<br />\r\n<img src=\"http://farm9.staticflickr.com/8177/7917780898_bd14d7a92d_b.jpg\" width=\"300\" height=\"450\" alt=\"\" /></p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, \'Lucida Grande\', Helvetica, Tahoma, Verdana; vertical-align: baseline; line-height: 18px; text-align: left; \">Bức h&igrave;nh đẹp ngo&agrave;i yếu tố ngoại cảnh, g&oacute;c chụp, quan trọng nhất l&agrave; diễn xuất của ch&iacute;nh bạn. Lời khuy&ecirc;n cho bạn thường l&agrave; gỡ bỏ t&acirc;m l&yacute; ngại ng&ugrave;ng, v&igrave; với dịch vụ chụp h&igrave;nh n&agrave;y bạn sẽ c&oacute; kh&ocirc;ng gian ri&ecirc;ng để ph&aacute;t huy hết khả năng s&aacute;ng tạo</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, \'Lucida Grande\', Helvetica, Tahoma, Verdana; vertical-align: baseline; line-height: 18px; text-align: center; \"><img src=\"http://farm9.staticflickr.com/8032/7917780462_18e967d7dd_b.jpg\" width=\"300\" height=\"450\" alt=\"\" /></p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, \'Lucida Grande\', Helvetica, Tahoma, Verdana; vertical-align: baseline; line-height: 18px; text-align: left; \">Ch&uacute;ng t&ocirc;i tin tưởng l&agrave; nơi địa chỉ ph&ugrave; hợp để bạn gởi gắm những mong muốn v&agrave; y&ecirc;u cầu của m&igrave;nh</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, \'Lucida Grande\', Helvetica, Tahoma, Verdana; vertical-align: baseline; line-height: 18px; text-align: right; \"><strong style=\"color: rgb(255, 102, 0); \">Studio8.vn</strong></p>\r\n</div>','1346898112','1','4923','Mỗi bức ảnh là một thông điệp để nhắn gởi đến người xem, nội dung đó có thể là gương mặt của bạn bè, người thân, cũng có thể là một cảnh thiên nhiên núi rừng trong buổi bình minh, cũng có thể là những quang cảnh nhộn nhịp của hội chợ, hoặc là cảm xúc của ta trước một sự kiện nào đó… tất cả đều có thể đưa vào ảnh','24.jpg','','','','','');
INSERT INTO tgp_page VALUES('25','dich_vu_3','Dịch vụ Trang điểm cô dâu','<div style=\"text-align: justify;\">Bạn đang ph&acirc;n v&acirc;n lo lắng cho ng&agrave;y trọng đại nhất đời m&igrave;nh, bạn muốn m&igrave;nh phải th&agrave;nh c&ocirc; d&acirc;u xinh nhất đẹp nhất trong mắt bạn b&egrave; gia đ&igrave;nh người th&acirc;n, trang điểm c&ocirc; d&acirc;u l&agrave; cả một nghệ thuật v&agrave; người thợ trang điểm phải c&oacute; con mắt thẩm mỹ cao... V&agrave; khi bạn hạnh ph&uacute;c th&igrave; đ&oacute; kh&ocirc;ng chỉ l&agrave; hạnh ph&uacute;c của ri&ecirc;ng bạn m&agrave; cũng l&agrave; hạnh ph&uacute;c của <span style=\"color: rgb(255, 102, 0);\"><strong>Studio8</strong></span>, l&agrave; của tất cả chị em phụ nữ ch&uacute;ng m&igrave;nh với nhiều phong c&aacute;ch trang điểm s&aacute;ng tạo v&agrave; mới mẽ kết hợp với phong c&aacute;ch trang điểm tinh tế c&aacute; t&iacute;nh của người H&agrave;n Quốc, v&agrave; sang trọng kiểu Ch&acirc;u &Acirc;u.&nbsp;<span style=\"color: rgb(255, 102, 0);\"><strong>Studio8 </strong></span>sẵn s&agrave;ng tư vấn cho c&aacute;c bạn phong c&aacute;ch hợp với m&igrave;nh nhất, mang lại vẽ đẹp của một c&ocirc; d&acirc;u Việt trong s&aacute;ng...<br />\r\n&nbsp;</div>\r\n<div style=\"text-align: center; \"><img src=\"http://farm9.staticflickr.com/8312/7919767692_fb00044b99_b.jpg\" width=\"500\" height=\"333\" alt=\"\" /></div>\r\n<div style=\"text-align: justify;\"><br />\r\n- Nhận trang điểm đẹp chuy&ecirc;n nghiệp tại nh&agrave; gi&aacute; cả hợp l&iacute; nhất<br />\r\n- Chuy&ecirc;n vi&ecirc;n trang điểm <span style=\"color: rgb(255, 102, 0);\"><strong>Studio8</strong></span>, c&oacute; nhiều năm kinh nghiệm trong ng&agrave;nh trang điểm cao cấp trong th&agrave;nh phố...</div>\r\n<div style=\"text-align: center; \"><br />\r\n<img src=\"http://farm9.staticflickr.com/8181/7919768124_2eb4fda251_b.jpg\" width=\"300\" height=\"450\" alt=\"\" /></div>\r\n<div style=\"text-align: justify;\"><br />\r\n<strong> Gi&aacute; dịch vụ:</strong><br />\r\n- Trang điểm v&agrave; l&agrave;m t&oacute;c c&ocirc; d&acirc;u trong đ&aacute;m cưới: 700.000 đồng /người<br />\r\n- Trang điểm v&agrave; l&agrave;m t&oacute;c c&ocirc; d&acirc;u trong đ&aacute;m hỏi: 600.000 đồng /người<br />\r\n- Trang điểm để c&ocirc; d&acirc;u chụp ảnh cưới ngoại cảnh: 400.000 đồng /người<br />\r\n- Trang điểm v&agrave; l&agrave;m t&oacute;c thử cho c&ocirc; d&acirc;u: 400.000 đồng /người<br />\r\n- Trang điểm v&agrave; l&agrave;m t&oacute;c cho người nh&agrave; c&ocirc; d&acirc;u: 200.000 đồng /người<br />\r\n- B&oacute; hoa cầm tay c&ocirc; d&acirc;u: 180.000 đến 380.000 đồng/b&oacute;<br />\r\n<br />\r\n<strong>Đặc biệt:</strong><br />\r\n+ Tặng 01 lần thay đổi kiểu t&oacute;c cho c&ocirc; d&acirc;u khi l&agrave;m từ 2 dịch vụ trở l&ecirc;n<br />\r\n+ Giảm gi&aacute; 10% cho c&ocirc; d&acirc;u l&agrave;m dịch vụ trọn g&oacute;i bao gồm trang điểm: c&ocirc; d&acirc;u chụp h&igrave;nh, c&ocirc; d&acirc;u cưới, hỏi, trang điểm người nh&agrave; c&ocirc; d&acirc;u.</div>','1346898122','1','1738','Bạn đang phân vân lo lắng cho ngày trọng đại nhất đời mình, bạn muốn mình phải thành cô dâu xinh nhất đẹp nhất trong mắt bạn bè gia đình người thân, trang điểm cô dâu là cả một nghệ thuật và người thợ trang điểm phải có con mắt thẩm mỹ cao... Và khi bạn hạnh phúc thì đó không chỉ là hạnh phúc của riêng bạn mà cũng là hạnh phúc của Trang, là của tất cả chị em phụ nữ chúng mình với nhiều phong cách trang điểm sáng tạo và mới mẽ kết hợp với phong cách trang điểm tinh tế cá tính của người Hàn Quốc, trang sẵn sàng tư vấn cho các bạn phong cách hợp với mình nhất, mang lại vẽ đẹp của một cô dâu Việt trong sáng...','25.jpg','','','','','');
INSERT INTO tgp_page VALUES('12','ho_tro_truc_tuyen','Hổ trợ trực tuyến','<strong>Hỗ trợ :&nbsp;<img src=\"/uploads/ht.png\" width=\"65\" height=\"35\" align=\"absMiddle\" alt=\"\" /></strong>','1345816994','1','883','test','1','','','','','');
INSERT INTO tgp_page VALUES('27','dich_vu_4','Dịch vụ chụp ảnh Gia đình','&nbsp;Đang cập nhật','1346898593','1','1146',' Đang cập nhật','27.jpg','','','','','');
INSERT INTO tgp_page VALUES('28','dich_vu_5','Dịch vụ chụp ảnh Sự kiện','&nbsp;Đang cập nhật','1346898575','1','905','Đang cập nhật','28.jpg','','','','','');
INSERT INTO tgp_page VALUES('29','dich_vu_6','Dịch vụ chụp ảnh Trẻ em','&nbsp;Đang cập nhật','1346899234','1','929','Đang cập nhật','29.jpg','','','','','');
CREATE TABLE `tgp_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` int(11) NOT NULL,
  `ma_sp` varchar(50) DEFAULT NULL,
  `ten` varchar(255) NOT NULL,
  `hinh` varchar(255) DEFAULT 'no',
  `noi_dung` text NOT NULL,
  `chu_thich` text NOT NULL,
  `hien_thi` int(1) NOT NULL DEFAULT '1',
  `gia` double DEFAULT NULL,
  `time` int(11) NOT NULL,
  `luot_xem` int(11) NOT NULL DEFAULT '0',
  `noi_bat` int(1) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0',
  `ten_kodau` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tgp_product_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(20) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `hinh` varchar(255) DEFAULT NULL,
  `thu_tu` int(11) NOT NULL,
  `hien_thi` int(1) NOT NULL DEFAULT '1',
  `parent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tgp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) DEFAULT 'no',
  `ten` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `dien_thoai` varchar(20) NOT NULL DEFAULT '',
  `dia_chi` varchar(255) NOT NULL DEFAULT '',
  `level` int(1) DEFAULT '0',
  `trang_thai` int(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO tgp_user VALUES('1','admin','a3e1e2967ad96912a4f872941c84892a','','','','','0','1','0');
INSERT INTO tgp_user VALUES('9','benphoto','9874a0a9581656d950256365731307ab','Trịnh Kim Điền','dientk@studio8.vn','','Đà Nẵng','0','1','1348577378');
INSERT INTO tgp_user VALUES('10','hoainam','45c1dc2da1ab6d75cac24c3068a529ff','Nguyễn Hoài Nam','Nguyenhoainam.kdc@gmail.com','0905018649','Đà NẴng','0','1','1366868372');
