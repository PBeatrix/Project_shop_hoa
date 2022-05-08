-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 08, 2022 lúc 10:40 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_shop_hoa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `permission` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ID`, `HoTen`, `TaiKhoan`, `MatKhau`, `permission`) VALUES
(8, 'ql đơn hàng', 'donhang', '$2y$10$haimuoihaihaimuoihai2uYmG63iKfsrA/VglIi1z9AaICytB.WHO', 0),
(9, 'QL Sản Phẩm', 'sanpham', '$2y$10$haimuoihaihaimuoihai2uGb5oiUToKpE0yZjaCvISO5PTX/egm2m', 2),
(10, 'Huyen Trang', 'admin', '$2y$10$haimuoihaihaimuoihai2u.gb21hVAvPuRXphRLI1IuQSiv0HTSsW', 1),
(11, 'Van Phuc', 'admin1', '$2y$10$haimuoihaihaimuoihai2u.gb21hVAvPuRXphRLI1IuQSiv0HTSsW', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `id` int(11) NOT NULL,
  `MaHoa` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ma_hoa_don` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='chi_tiet_hoa_don';

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`id`, `MaHoa`, `so_luong`, `ma_hoa_don`) VALUES
(11, 75, 1, 8),
(21, 75, 1, 15),
(23, 20, 2, 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `title_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keywords_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `google_map` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `title_website`, `description_website`, `keywords_website`, `phone_number`, `email`, `address`, `google_map`, `logo`, `favicon`) VALUES
(1, 'Shop hoa tươi', 'Description shop hoa tươi', 'shop hoa tươi', '+841637909009', 'tnp.imex@gmail.com', 'Cần Thơ', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d13120.59574078615!2d105.7737656384449!3d10.013302102475173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1651166193651!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'logo.png', 'fav.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa`
--

CREATE TABLE `hoa` (
  `MaHoa` int(11) NOT NULL,
  `TenHoa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenHoa_URL` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `GiaKhuyenMai` double NOT NULL DEFAULT 200000,
  `ThanhPhan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `ThoiGian` date DEFAULT NULL,
  `SoLuongSP` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa`
--

INSERT INTO `hoa` (`MaHoa`, `TenHoa`, `TenHoa_URL`, `Gia`, `GiaKhuyenMai`, `ThanhPhan`, `NoiDung`, `Hinh`, `MaLoai`, `ThoiGian`, `SoLuongSP`) VALUES
(20, 'May mắn', 'may-man', 400000, 200000, 'Sen đá, Hoa hướng dương, Hoa hồng, Các loại hoa phụ', 'Được thiết kế với tông kết hợp, mẫu hoa gồm hoa hướng dương và sen đá mang đến thông điệp về một tình yêu bền vững, trọn đời. Ngoài ra còn có ý nghĩa mang lại tài lộc, may mắn cho gia đình. Đây sẽ là món quà tuyệt vời dành tặng những người thân yêu của bạn.', 'hoa_hop_8.jpg', 2, '2016-07-27', 17),
(67, 'Gắn kết yêu thương', 'gan-ket-yeu-thuong', 650000, 570000, 'Hoa hồng da, Hoa hồng đỏ, Hoa tú cầu, Hoa baby', 'Gắn Kết Yêu Thương gồm hoa hoa hồng nhiều màu kết hơp cùng các loại lá phụ cao cấp. Những sắc màu tươi tắn, trẻ trung, đáng yêu và đầy cá tính của hai trái tim trẻ nguyện sánh bước và gắn kết cùng nhau trên con đường đời. Thích hợp để tặng chúc sức khỏe, kỉ niệm,..', 'hoa_binh_3.jpg', 5, '2016-06-10', 20),
(75, 'Give love', 'give-love', 380000, 200000, 'Hoa hồng, Hoa cúc tím, Hoa baby', 'Chọn tông hồng - trắng làm màu sắc chủ đạo, “Give love” tạo nên một tổng thể nhẹ nhàng, khơi gợi cảm giác thư thái, vui tươi khi ngắm nhìn. Tên gọi “Give love” gửi gắm thông điệp: Tình yêu vốn dĩ không phải là điều ta nhận đuợc mà là những gì ta cho đi. Hãy chia sẻ yêu thương khi ta còn có thể vì chính tình yêu sẽ làm cuộc sống thêm tươi vui, hạnh phúc! Tách hoa “Give love” phù hợp tặng cho bạn bè, người thân và cả người ấy. Đặc biệt, với kích thước nhỏ gọn, “Give love” phù hợp trưng bày ở nhiều không gian khác nhau.', 'hoa_binh_11.jpg', 5, '2016-06-04', 0),
(79, 'You are my everything', 'you-are-my-everything', 520000, 500000, 'Hoa hồng', 'Dành cả tấm lòng , trọn đời yêu người', '1.jpg', 6, '2022-05-07', 99),
(81, 'Thanh khiết', 'thanh-khiet', 470000, 400000, 'Hoa sen', 'Như dáng hình người con gái Việt Nam, hoa sen tượng trưng cho sự trong trẻo , cao quý \" gần bùn mà chẳng hôi tanh mùi bùn \"', 'Bó hoa sen hồng - Sự thanh tao.jpg', 6, '2022-05-07', 24),
(82, 'Lily trắng ', 'lily-trang', 67000, 59000, 'Hoa ly trắng', '', '▫️▫️▫️ on Twitter.jpg', 5, '2022-05-07', 89),
(83, 'You are my everything', 'you-are-my-everything', 780000, 699999, 'Hoa tulip trắng , hoa tulip tím', '', 'Cartier Rug.jpg', 6, '2022-05-07', 56),
(84, 'Love myself', 'love-myself', 457000, 400000, 'Hoa cẩm chướng , hoa hồng', '', 'cb1.jpg', 6, '2022-05-07', 45),
(85, 'White love', 'white-love', 468000, 389000, 'Hoa hồng trắng', '', 'cb2.jpg', 6, '2022-05-08', 78),
(86, 'Send your love ', 'send-your-love', 245000, 200000, 'Hoa hồng trắng', '', 'cb3.jpg', 6, '2022-05-08', 25),
(87, 'Latte flower', 'latte-flower', 512000, 499999, 'Hoa hồng , hoa tulip', '', 'cb4.jpg', 6, '2022-05-08', 2),
(88, 'Decor 1', 'decor-1', 1999000, 1888000, 'Nhiều loại hoa', '', 'congcuoi.jpg', 4, '2022-05-08', 99),
(89, 'Decor 2', 'decor-2', 2579500, 2489000, 'Nhiều loại hoa', 'Trang trí tiệc cưới', 'Frozen & Suspended Bonsai Tree Sculptures.jpg', 4, '2022-05-08', 99),
(90, 'Beatrix flower', 'beatrix-flower', 999999, 888888, 'Hoa cẩm tú cầu , hoa hồng , ...', '', 'ganhhanhoavn điện hoa online tại tphcm.png', 6, '2022-05-08', 99),
(91, 'Hope', 'hope', 568000, 458000, 'Hoa hồng xanh', '', 'Nguồn 小红书_ _YSenflora.jpg', 2, '2022-05-08', 46),
(92, 'Decor 3', 'decor-3', 7853000, 7800000, 'Trang trí tiệc cưới', '', 'Wedluxe Show Installation.jpg', 4, '2022-05-08', 99),
(93, 'Whitey', 'pinky', 69000, 45000, 'Hoa trà trắng', '', 'Old, but gold_ Foto.png', 3, '2022-05-08', 99),
(94, 'You are my sunshine', 'you-are-my-sunshine', 500000, 499999, 'Hoa ly', '', 'Flowers  uploaded by Adry ♡ on We Heart It.png', 6, '2022-05-08', 99),
(95, 'Ex', 'ex', 222222, 200000, 'Hoa hồng đỏ', '', 'combolies.jpg', 2, '2022-05-08', 22),
(96, 'Kiêu sa', 'kieu-sa', 790000, 700000, '', '', 'combotogether.jpg', 5, '2022-05-08', 88),
(97, 'Lover', 'lover', 890000, 790000, '', '', 'combowife.jpg', 6, '2022-05-08', 99);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hoa_don` int(11) NOT NULL,
  `ma_khach_hang` int(11) NOT NULL,
  `ngay_dat` datetime NOT NULL,
  `trang_thai` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tong_thanh_tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hoa_don`, `ma_khach_hang`, `ngay_dat`, `trang_thai`, `tong_thanh_tien`) VALUES
(3, 57, '2018-01-05 21:08:14', 'Đã xử lý', 250000),
(4, 58, '2018-01-06 21:23:30', 'Đã xử lý', 680000),
(5, 59, '2018-01-06 21:31:11', 'Đã xử lý', 230000),
(6, 60, '2018-01-07 21:33:03', 'Đã xử lý', 1330000),
(7, 61, '2018-01-07 21:35:04', 'Đã xử lý', 470000),
(8, 62, '2018-01-08 10:02:02', 'Đã xử lý', 200000),
(9, 63, '2018-01-08 10:03:35', 'Đã xử lý', 560000),
(10, 64, '2018-01-09 09:37:34', 'Chưa xử lý', 530000),
(11, 65, '2018-01-09 10:29:30', 'Chưa xử lý', 1350000),
(12, 66, '2018-01-09 18:59:25', 'Chưa xử lý', 480000),
(14, 68, '2018-01-12 13:16:50', 'Chưa xử lý', 200000),
(15, 69, '2018-01-12 21:35:56', 'Chưa xử lý', 660000),
(16, 70, '2018-01-13 17:53:54', 'Chưa xử lý', 680000),
(17, 71, '2018-01-14 16:28:54', 'Chưa xử lý', 400000),
(18, 72, '2017-10-01 19:59:00', 'Đã xử lý', 200000),
(19, 73, '2018-01-14 20:07:48', 'Chưa xử lý', 710000),
(20, 74, '2018-01-14 20:15:03', 'Chưa xử lý', 470000),
(21, 75, '2018-01-15 18:10:24', 'Chưa xử lý', 370000),
(22, 76, '2018-01-15 18:23:32', 'Chưa xử lý', 200000),
(23, 77, '2018-01-15 18:25:24', 'Chưa xử lý', 350000),
(24, 0, '2018-01-21 20:59:22', 'Chưa xử lý', 470000),
(25, 81, '2018-01-26 08:14:02', 'Chưa xử lý', 560000),
(26, 82, '2018-01-26 18:48:21', 'Chưa xử lý', 11490000),
(27, 83, '2018-01-27 05:22:23', 'Chưa xử lý', 1590000),
(28, 83, '2018-01-27 05:22:38', 'Chưa xử lý', 680000),
(29, 84, '2018-01-28 11:24:34', 'Chưa xử lý', 680000),
(30, 78, '2018-01-28 20:32:00', 'Chưa xử lý', 680000),
(31, 78, '2018-01-28 20:33:12', 'Chưa xử lý', 750000),
(32, 87, '2018-02-01 20:01:50', 'Chưa xử lý', 940000),
(33, 88, '2018-02-02 08:03:46', 'Đã xử lý', 530000),
(34, 88, '2018-02-02 09:16:38', 'Chưa xử lý', 230000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_khach_hang` int(11) NOT NULL,
  `ten_khach_hang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phai` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `matKhau` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_khach_hang`, `ten_khach_hang`, `phai`, `email`, `dia_chi`, `dien_thoai`, `matKhau`) VALUES
(47, 'Nguyễn Văn A', 1, 'a@gmail.com', 'Quận 10 Việt Nam', '016666666', ''),
(48, 'Nguyễn Văn B', 1, 'b@gmail.com', 'Việt Nam', '232', ''),
(49, 'Lâm Văn C', 1, 'c@gmail.com', 'Việt Nam', '213213', ''),
(50, 'Lâm Văn D', 1, 'd@gmail.com', 'Việt Nam', '213d213', ''),
(51, 'Nguyễn Thị C', 0, 'cc@gmail.com', 'Việt Nam', '01', ''),
(52, 'Anh', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(53, 'Trần Văn C', 1, 'asdas@asdas.com', '192 Hàm Tử', '113', ''),
(54, 'Nguyễn Thị A', 0, 'asdas@asdas.com', '187 Lê Lợi', '6546849', ''),
(55, 'Nguyễn Thị A', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(56, 'Anh', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(57, 'Anh', 0, 'vuphuongang020497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(58, 'Anh', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(59, 'Anh', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(60, 'Lan', 0, 'lan@gmail.com', '135 Nguyễn Huệ', '546546', ''),
(61, 'Tèo', 1, 'teo@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(62, 'sdf', 1, 'dfs@gmail.com', 'dsads', '214312', ''),
(63, 'anh', 0, 'vuphuongang020497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(64, 'Hòa', 1, 'hoa@gmail.com', '218 Lê Văn Sỹ', '0565165654', ''),
(65, 'Loan', 0, 'loan123@gmail.com', '123 Lê Lợi', '3216546', ''),
(66, 'Minh', 1, 'minh@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(67, 'Nguyễn Văn A', 1, 'a@gmail.com', 'viet nam', '01637902900', ''),
(68, 'Nguyễn Văn A', 1, 'da@Gmail.com', 'vietnam', '01637902900', ''),
(69, 'Nguyễn Văn B', 1, 'pinkp7996@gmail.com', '137E, Nguyễn Chí Thanh, Phường 9, Quận 5, TPHCM', '01637900000', ''),
(70, 'Hoa', 0, 'hoa@gmail.com', '124 Hồng Bàng', '65465465', ''),
(71, 'Huy', 1, 'huy@gmail.com', '198 Ba Đình', '56879846', ''),
(72, 'Hoàng', 1, 'hoangnam@gmail.com', '155 Lê Lai', '546548', '827ccb0eea8a706c4c34a16891f84e7b'),
(73, 'Thắng', 1, 'thang@gmail.com', '189 Lý Thường Kiệt', '654684', '827ccb0eea8a706c4c34a16891f84e7b'),
(74, 'Thúy', 0, 'thanhthuy@gmail.com', '182 Nguyễn Tri Phương', '5133216', '827ccb0eea8a706c4c34a16891f84e7b'),
(75, 'mỹ', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', '827ccb0eea8a706c4c34a16891f84e7b'),
(76, 'Nguyễn Thị Tú', 0, 'nguyenthitu@gmail.com', '123 Cống Quỳnh', '5665654', '827ccb0eea8a706c4c34a16891f84e7b'),
(77, 'Trương Ngọc Hân', 0, 'ngochan@gmail.com', '234 Nguyễn Kim', '5464', '827ccb0eea8a706c4c34a16891f84e7b'),
(78, 'Quỳnh Anh', 1, 'quynhchi@gmail.com', '31651651', '54 Nguyễn Cư Trinh', '827ccb0eea8a706c4c34a16891f84e7b'),
(79, 'Nguyễn Thị Hoa', 0, 'hoa@gmail.com', '12 Hai Bà Trưng', '13568468', '827ccb0eea8a706c4c34a16891f84e7b'),
(80, 'a', 1, 'adas@gmail.com', 'aa', '11', '96e79218965eb72c92a549dd5a330112'),
(81, 'phuc', 1, 'pinkp7996@gmail.com', 'dong nai', '01637902900', '7a1c841b4a1a2491168327b0c24f561a'),
(82, 'asda', 1, 'asd@gmail.com', 'dasdas', '312', 'a7b1cabd7d021b107ef6064ad2d75c7b'),
(83, 'a', 1, 'a@gmail.com', 'a', '1', '698d51a19d8a121ce581499d7b701668'),
(84, 'Nguyễn Văn A', 1, 'a@gmail.com', 'Quận 10, HCM, VN', '01637900000', '0cc175b9c0f1b6a831c399e269772661'),
(85, 'Vũ Phương Anh', 0, 'vuphuonganh@gmail.com', '194 Lê Hồng Phong', '0938184297', '827ccb0eea8a706c4c34a16891f84e7b'),
(86, 'Quỳnh Chi', 0, 'yeudoiyeunguoiyeutele@gmail.com', '54 Nguyễn Cư Trinh', '132135165', '827ccb0eea8a706c4c34a16891f84e7b'),
(87, 'Nguyễn Văn A', 1, 'a@gmail.com', 'Việt Nam', '01637900000', '20ca70c7c8f494c7bd1d54ad23d40cde'),
(88, 'Nguyễn Thị B', 0, 'b@gmail.com', 'việt nam', '016379999999', '0a2c9fef5b387c0a81119c420231640d');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su`
--

CREATE TABLE `lich_su` (
  `id` int(11) NOT NULL,
  `ma_hoa` int(11) NOT NULL,
  `ma_khach_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lich_su`
--

INSERT INTO `lich_su` (`id`, `ma_hoa`, `ma_khach_hang`) VALUES
(1, 75, 85),
(2, 67, 85),
(3, 20, 85);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_hoa`
--

CREATE TABLE `loai_hoa` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_hoa`
--

INSERT INTO `loai_hoa` (`MaLoai`, `TenLoai`) VALUES
(2, 'Hoa hộp'),
(3, 'Hoa cắm giỏ'),
(4, 'Hoa đại sảnh'),
(5, 'Hoa cắm bình'),
(6, 'Hoa cầm tay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `hinh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `logo`
--

INSERT INTO `logo` (`id`, `hinh`) VALUES
(1, 'logo.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(100) NOT NULL,
  `DuongDan` varchar(255) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `TieuDe`, `Hinh`, `DuongDan`, `ThoiGian`) VALUES
(6, '', '1.png', '', '2022-04-29 00:55:21'),
(7, '', '2.png', '', '2022-04-29 00:57:29'),
(8, '', '3.png', '', '2022-04-29 00:57:35'),
(9, '', '4.png', '', '2022-04-29 00:57:44'),
(10, '', '5.png', '', '2022-04-29 00:57:52'),
(11, '', '6.png', '', '2022-04-29 00:57:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_tin`
--

CREATE TABLE `thong_tin` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) NOT NULL,
  `DuongDan` varchar(255) NOT NULL,
  `HanhDong` varchar(50) NOT NULL DEFAULT 'Mua Ngay',
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thong_tin`
--

INSERT INTO `thong_tin` (`id`, `TieuDe`, `Hinh`, `DuongDan`, `HanhDong`, `ThoiGian`) VALUES
(1, 'Banner 1', '1.jpg', '.', 'Mua Ngay', '2018-01-12 18:14:50'),
(2, 'Banner 2', '2.jpg', '.', 'Mua Ngay', '2018-01-12 18:15:08'),
(3, 'Banner 3', '3.jpg', '.', 'Mua Ngay', '2018-01-12 18:15:13');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CT_MON` (`MaHoa`),
  ADD KEY `ma_don_hang` (`ma_hoa_don`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoa`
--
ALTER TABLE `hoa`
  ADD PRIMARY KEY (`MaHoa`),
  ADD KEY `MaLoai` (`MaLoai`),
  ADD KEY `MaHoa` (`MaHoa`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hoa_don`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `lich_su`
--
ALTER TABLE `lich_su`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_hoa` (`ma_hoa`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `loai_hoa`
--
ALTER TABLE `loai_hoa`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_tin`
--
ALTER TABLE `thong_tin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hoa`
--
ALTER TABLE `hoa`
  MODIFY `MaHoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ma_hoa_don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_khach_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `lich_su`
--
ALTER TABLE `lich_su`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `loai_hoa`
--
ALTER TABLE `loai_hoa`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `thong_tin`
--
ALTER TABLE `thong_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD CONSTRAINT `_FK_chi_tiet_hoa_don_hoa` FOREIGN KEY (`MaHoa`) REFERENCES `hoa` (`MaHoa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_FK_chi_tiet_hoa_don_hoa_don` FOREIGN KEY (`ma_hoa_don`) REFERENCES `hoa_don` (`ma_hoa_don`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoa`
--
ALTER TABLE `hoa`
  ADD CONSTRAINT `FK_H_LH` FOREIGN KEY (`MaLoai`) REFERENCES `loai_hoa` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lich_su`
--
ALTER TABLE `lich_su`
  ADD CONSTRAINT `_FK_lich_su_hoa` FOREIGN KEY (`ma_hoa`) REFERENCES `hoa` (`MaHoa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `_FK_lich_su_khach_hang` FOREIGN KEY (`ma_khach_hang`) REFERENCES `khach_hang` (`ma_khach_hang`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
