-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 14, 2022 lúc 03:41 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ananas`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Basas'),
(2, 'Urbas'),
(3, 'Vintas'),
(4, 'Pattas'),
(5, 'Socks'),
(6, 'Track 6'),
(7, 'Basic Tee'),
(8, 'Backpack | Ba lô'),
(9, 'Basic Tee | Áo thun cơ bản'),
(10, 'Creas');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_buy`
--

CREATE TABLE `history_buy` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `quantily` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `history_buy`
--

INSERT INTO `history_buy` (`id`, `id_user`, `id_product`, `quantily`, `price`) VALUES
(1, 1, '0', 2, 1180000),
(2, 0, '[1,2,3]', 0, 0),
(3, 1, '1', 3, 1950000),
(4, 2147483647, '2', 2, 1180000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url_img` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `best_seller` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `color`, `url_img`, `price`, `status`, `content`, `id_category`, `best_seller`) VALUES
(1, 'BASAS BUMPER GUM EXT NE - HIGH TOP - BLACK/GUM', 'BLACK/GUM', 'https://res.cloudinary.com/anummio/image/upload/v1644643765/product-details/product1', '650.000', 'New Arrival', 'Bumper Gum EXT (Extension) NE là bản nâng cấp được xếp vào dòng sản phẩm Basas, nhưng lại gây ấn tượng với diện mạo phá đi sự an toàn thường thấy. Với cách sắp xếp logo hoán đổi đầy ý tứ và mảng miếng da lộn (Suede) xuất hiện hợp lí trên chất vải canvas NE bền bỉ dày dặn nhấn nhá thêm bằng những sắc Gum dẻo dai. Tất cả làm nên 01 bộ sản phẩm với thiết kế đầy thoải mái trong trải nghiệm, đủ thanh lịch trong dáng vẻ.', 1, 0),
(2, 'URBAS RULER - LOW TOP', 'ICELANDIC BLUE', 'https://res.cloudinary.com/anummio/image/upload/v1644897296/product-details/product2', '590.000', 'New Arrival', 'Khoác lên thân giày một lớp áo mới theo đúng nghĩa đen với thiết kế đánh dấu sự xuất hiện lần đầu tiên của chất vải Flannel trên các dáng sản phẩm quen thuộc từ Ananas. Phát huy những ưu điểm thoải mái và bền bỉ từ chất vải Flannel “vạn người mê”, song hành cùng phối màu trầm ấm đặc trưng, Vintas Flannel Pack là lựa chọn thú vị dành cho những bạn trẻ ái mộ phong cách điềm đạm chững chạc nhưng vẫn đầy sức hút.', 3, 0),
(3, 'URBAS RULER - LOW TOP', 'Silver Pink', 'https://res.cloudinary.com/anummio/image/upload/v1644905763/product-details/product3', '590.000', 'New Arrival', 'Vẻ ngoài với màu sắc tươi tắn, hiện đại. Urbas Ruler mang trên mình một chức năng khiến không ít người bất ngờ, sẽ rất hữu ích dành cho những ai có thói quen dùng thước kẻ nhưng hay quên, mặc dù độ chính xác chưa chắc cao.', 3, 0),
(4, 'URBAS RULER - LOW TOP', 'Granite Green', 'https://res.cloudinary.com/anummio/image/upload/v1644905763/product-details/product4', '720.000', 'New Arrival', 'Vẻ ngoài với màu sắc tươi tắn, hiện đại. Urbas Ruler mang trên mình một chức năng khiến không ít người bất ngờ, sẽ rất hữu ích dành cho những ai có thói quen dùng thước kẻ nhưng hay quên, mặc dù độ chính xác chưa chắc cao.', 3, 0),
(5, 'Basas Bumper Gum EXT NE - Low Top', 'Black/Gum', 'https://res.cloudinary.com/anummio/image/upload/v1644907013/product-details/product5', '580.000', 'New Arrival', 'Bumper Gum EXT (Extension) NE là bản nâng cấp được xếp vào dòng sản phẩm Basas, nhưng lại gây ấn tượng với diện mạo phá đi sự an toàn thường thấy. Với cách sắp xếp logo hoán đổi đầy ý tứ và mảng miếng da lộn (Suede) xuất hiện hợp lí trên chất vải canvas NE bền bỉ dày dặn nhấn nhá thêm bằng những sắc Gum dẻo dai. Tất cả làm nên 01 bộ sản phẩm với thiết kế đầy thoải mái trong trải nghiệm, đủ thanh lịch trong dáng vẻ.', 1, 1),
(6, 'VINTAS FLANNEL - LOW TOP', 'CEMENT', 'https://res.cloudinary.com/anummio/image/upload/v1644907792/product-details/product6', '690.000', 'New Arrival', 'Khoác lên thân giày một lớp áo mới theo đúng nghĩa đen với thiết kế đánh dấu sự xuất hiện lần đầu tiên của chất vải Flannel trên các dáng sản phẩm quen thuộc từ Ananas. Phát huy những ưu điểm thoải mái và bền bỉ từ chất vải Flannel “vạn người mê”, song hành cùng phối màu trầm ấm đặc trưng, Vintas Flannel Pack là lựa chọn thú vị dành cho những bạn trẻ ái mộ phong cách điềm đạm chững chạc nhưng vẫn đầy sức hút.', 2, 0),
(7, 'BASAS BUMPER GUM EXT NE - LOW TOP', 'OFFWHITE/GUM', 'https://res.cloudinary.com/anummio/image/upload/v1644908910/product-details/product7', '580.000', 'New Arrival', 'Bumper Gum EXT (Extension) NE là bản nâng cấp được xếp vào dòng sản phẩm Basas, nhưng lại gây ấn tượng với diện mạo phá đi sự an toàn thường thấy. Với cách sắp xếp logo hoán đổi đầy ý tứ và mảng miếng da lộn (Suede) xuất hiện hợp lí trên chất vải canvas NE bền bỉ dày dặn nhấn nhá thêm bằng những sắc Gum dẻo dai. Tất cả làm nên 01 bộ sản phẩm với thiết kế đầy thoải mái trong trải nghiệm, đủ thanh lịch trong dáng vẻ.', 1, 0),
(8, 'BASAS BUMPER GUM EXT NE - HIGH TOP', 'OFFWHITE/GUM', 'https://res.cloudinary.com/anummio/image/upload/v1644909672/product-details/product8', '650.000', 'New Arrival', 'Bumper Gum EXT (Extension) NE là bản nâng cấp được xếp vào dòng sản phẩm Basas, nhưng lại gây ấn tượng với diện mạo phá đi sự an toàn thường thấy. Với cách sắp xếp logo hoán đổi đầy ý tứ và mảng miếng da lộn (Suede) xuất hiện hợp lí trên chất vải canvas NE bền bỉ dày dặn nhấn nhá thêm bằng những sắc Gum dẻo dai. Tất cả làm nên 01 bộ sản phẩm với thiết kế đầy thoải mái trong trải nghiệm, đủ thanh lịch trong dáng vẻ.', 1, 1),
(9, 'BASAS HOOK N LOOP NE - LOW TOP', 'WHITE', 'https://res.cloudinary.com/anummio/image/upload/v1644926011/product-details/product9', '520.000', 'New Arrival', 'Giữ nguyên nét cơ bản tiện dụng của thế hệ trước, phiên bản Basas Hook N Loop NE (New Episode) ra mắt với chất liệu vải mới nâng tầm trải nghiệm, cùng với một số chăm chút khác trong phần chi tiết khó nhận ra, giúp bạn dễ dàng lên chân bằng quai dán hiện đại. Đây chắc chắn là một lựa chọn xu hướng với nhịp sống hiện đại và thoải mái cho những ngày vô lo, vô nghĩ.  ', 1, 0),
(10, 'BASAS BUMPER GUM NE - HIGH TOP', 'OFFWHITE/GUM', 'https://res.cloudinary.com/anummio/image/upload/v1644926011/product-details/product10', '580.000', 'New Arrival', 'Balo cực kì cơ bản, phù hợp đeo xuôi sau lưng hoặc đeo ngược phía trước. Với chất liệu được xử lí chống bám nước ở cả 2 lớp vải, các chi tiết nhỏ được chăm chút kĩ càng và vừa vặn với chiếc laptop 15.6\'. Đây chắc chắn là một must have cho những ai yêu thích sự đơn giản mà hiệu quả.', 1, 0),
(11, 'TRACK 6 SUEDE MOONPHASE', 'WINTERIZE', 'https://res.cloudinary.com/anummio/image/upload/v1644926011/product-details/product11', '990.000', 'New Arrival', 'Dựa trên cảm hứng từ việc tái hiện những sắc xám (Grey) khác nhau hoà cùng những trạng thái ánh sáng trên bề mặt mặt trăng, Ananas Track 6 Suede Moonphase Pack sử dụng chất liệu da lộn (suede) đặc trưng, được phủ toàn bộ thân giày với tông màu sáng tối sắp xếp hài hoà hợp lý. Đây chắc chắn là một sản phẩm must have với những ai yêu thích chất suede và những gam màu Grey trung tính.', 6, 0),
(12, 'VINTAS MISTER - HIGH TOP', 'CHOCOLATE BROWN', 'https://res.cloudinary.com/anummio/image/upload/v1644926011/product-details/product12', '610.000', 'New Arrival', 'Công thức pha trộn từ hai chất liệu vải và da lộn đặc trưng, điều thường thấy ở bộ Vintas Mister. Sự kết hợp mạnh mẽ tạo nên nét cổ điển, hoài niệm. Chắc chắn là sự lựa chọn hết bài cho những con người trầm tính và điềm đạm.', 2, 1),
(13, 'BASIC BACKPACK - ANANAS TYPO LOGO', 'BLACK', 'https://res.cloudinary.com/anummio/image/upload/v1644926011/product-details/product13', '480.000', 'New Arrival', 'Balo cực kì cơ bản, phù hợp đeo xuôi sau lưng hoặc đeo ngược phía trước. Với chất liệu được xử lí chống bám nước ở cả 2 lớp vải, các chi tiết nhỏ được chăm chút kĩ càng và vừa vặn với chiếc laptop 15.6\'\'. Đây chắc chắn là một must have cho những ai yêu thích sự đơn giản mà hiệu quả.', 8, 1),
(14, 'URBAS BLOODY - LOW TOP', 'HAUTE RED', 'https://res.cloudinary.com/anummio/image/upload/v1644926011/product-details/product14', '480.000', 'New Arrival', 'Urbas Bloody - đôi giày có chất liệu Upper hoàn toàn bằng da lộn dành cho những tâm hồn mong muốn nổi bật một cách nổi loạn, sáng tạo một cách sáng chói.', 3, 0),
(15, 'URBAS CORLURAY - HIGH TOP', 'MOUSE', 'https://res.cloudinary.com/anummio/image/upload/v1644926011/product-details/product15', '650.000', 'New Arrival', 'Lấy cảm hứng từ kì nghỉ Xuân 2020 dài hạn đặc biệt vượt qua cả mùa Hạ để chạm đến mùa Thu, “Corluray Pack” ra đời với nét cách điệu mới mẻ, hiếm thấy ở dòng Urbas. Chất liệu Corduroy với tên gọi khác Elephant Cord (nhung gân sợi to) lần đầu tiên được sử dụng trên thân giày, gây ấn tượng cùng những phối màu như những tia nắng cuối Xuân ấm áp.', 3, 0),
(16, 'VINTAS SAIGON 1980S - LOW TOP', 'DARK DENIM', 'https://res.cloudinary.com/anummio/image/upload/v1644926011/product-details/product16', '650.000', 'New Arrival', 'Lấy cảm hứng từ các màu sắc đặc trưng của đường phố Sài Gòn những năm 80, Vintas Saigon 1980s là BST mang đậm nét đẹp cổ kính, hoài niệm. Với những ai yêu mến nét xưa cũ, trầm mặc, Saigon 1980s hứa hẹn sẽ trở thành must-have item cho tủ giày của bạn.', 2, 0),
(17, 'URBAS CORLURAY - LOW TOP', 'MUDBRICK', 'https://res.cloudinary.com/anummio/image/upload/v1644926011/product-details/product17', '590.000', 'New Arrival', 'Lấy cảm hứng từ kì nghỉ Xuân 2020 dài hạn đặc biệt vượt qua cả mùa Hạ để chạm đến mùa Thu, “Corluray Pack” ra đời với nét cách điệu mới mẻ, hiếm thấy ở dòng Urbas. Chất liệu Corduroy với tên gọi khác Elephant Cord (nhung gân sợi to) lần đầu tiên được sử dụng trên thân giày, gây ấn tượng cùng những phối màu như những tia nắng cuối Xuân ấm áp.', 3, 0),
(18, 'URBAS CORLURAY - LOW TOP', 'FADED PINK', 'https://res.cloudinary.com/anummio/image/upload/v1644926011/product-details/product18', '590.000', 'New Arrival', 'Lấy cảm hứng từ kì nghỉ Xuân 2020 dài hạn đặc biệt vượt qua cả mùa Hạ để chạm đến mùa Thu, “Corluray Pack” ra đời với nét cách điệu mới mẻ, hiếm thấy ở dòng Urbas. Chất liệu Corduroy với tên gọi khác Elephant Cord (nhung gân sợi to) lần đầu tiên được sử dụng trên thân giày, gây ấn tượng cùng những phối màu như những tia nắng cuối Xuân ấm áp.', 3, 0),
(19, 'ANANAS TYPO LOGO HOODIE', 'WHITE', 'https://res.cloudinary.com/anummio/image/upload/v1644926011/product-details/product19', '500.000', 'New Arrival', 'Với chất liệu nỉ thể thao cao cấp được lựa chọn kĩ lưỡng để phù hợp với thời tiết lạnh nhẹ của những ngày cuối năm nhưng không tạo cảm giác bức bí, Ananas Typo Logo Hoodie sẽ mang đến một outfit năng động và cá tính dù không cần mix-match cầu kì. Đây là một chiếc áo không thể thiếu trong hoodie seasion năm nay.', 9, 0),
(20, 'CREAS FLIP-FLAP - HIGH TOP', 'MAGENTA-SNORKEL BLUE', 'https://res.cloudinary.com/anummio/image/upload/v1644926011/product-details/product20', '690.000', 'New Arrival', 'Ananas Creas Flip-Flap được sản xuất với số lượng giới hạn. Ngẫu hứng, đảo nghịch và truyền tải bí quyết của sự hạnh phúc. Xem kĩ hình để rõ hơn các chi tiết thiết kế đặc biệt trên sản phẩm', 10, 0),
(21, 'ANANAS X DORAEMON 50 YEARS PATTAS', 'WHITE/SUNRISE 50TH', 'https://res.cloudinary.com/anummio/image/upload/v1645196913/product-details/product21', '950.000', 'New Arrival', 'Ananas x Doraemon 50 Years Pattas thể hiện chân thật nét vẽ nguyên bản của bộ truyện từ cái nhìn đầu tiên. Sử dụng chất liệu Action Leather (da) phủ khắp thân giày, pha trộn cùng các chi tiết đắt giá được sắp đặt hợp lí. Ra mắt với số lượng đặc biệt giới hạn, phiên bản này phát hành với mục đích kỉ niệm, tôn vinh giá trị mà bộ truyện Doraemon đã mang lại suốt 50 năm qua.', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `item` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seller`
--

INSERT INTO `seller` (`id`, `item`) VALUES
(1, 'BUY 2 GET 10% OFF - ÁP DỤNG VỚI TẤT CẢ BASIC TEE'),
(2, 'BUY MORE PAY LESS - ÁP DỤNG KHI MUA PHỤ KIỆN'),
(3, 'HÀNG 2 TUẦN NHẬN ĐỔI - GIÀY NỬA NĂM BẢO HÀNH'),
(4, 'FREE SHIPPING VỚI HOÁ ĐƠN TỪ 800K !');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `idUser` double NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeof` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `fullname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_img` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`idUser`, `email`, `password`, `phone_number`, `typeof`, `fullname`, `account`, `address`, `url_img`) VALUES
(1, 'nguyen', '123', '123', '1', 'nguyenthienthong', 'admin', 'ninh thuận', NULL),
(2, 'thongntps18723@gmail.com', '123', '798910292', '1', 'thongnnnnt', 'user', 'ninh thuận', NULL),
(3, '123', '123', NULL, '0', NULL, 'thong6', NULL, NULL),
(8, 'Mckanvn@gmail.com', '123', '0798910292', '0', 'thong nguyen', 'thong611111', 'phuoc khanh', NULL),
(1.0014594558243773e20, 'thongntps18723@fpt.edu.vn', NULL, NULL, '0', 'Thông Nguyễn Thiện', 'thongntps18723@fpt.edu.vn', NULL, 'https://lh3.googleusercontent.com/a/AATXAJy65shGYaEnAh4_PuyPKq_PtS4QugdIHG_5DEtA=s96-c'),
(1.1672374434401103e20, 'nguyenthienthong3009@gmail.com', NULL, '0798910292', '0', 'thong nguyen', 'thongntps18723@fpt.edu.vn', '', 'https://lh3.googleusercontent.com/a/AATXAJy65shGYaEnAh4_PuyPKq_PtS4QugdIHG_5DEtA=s96-c');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_buy`
--
ALTER TABLE `history_buy`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `history_buy`
--
ALTER TABLE `history_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `idUser` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9223372036854775807;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
