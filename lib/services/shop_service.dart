import '../models/shop.dart';

class ShopService {
  static List<Shop> getDummyShops() {
    return [
      Shop(
        name: "Cà Phê Nhạc quán Romantic",
        address: "3 Đường Thông Thiên Học, Phường 2, Đà Lạt, Lâm Đồng, Vietnam",
        currentStamps: 3,
        totalStamps: 8,
      ),
      Shop(
        name: "Phở HƯNG",
        address: "E2 Cư Xá Phú Lâm B, Phường 13, Quận 6, Hồ Chí Minh, Vietnam",
        currentStamps: 6,
        totalStamps: 10,
      ),
      Shop(
        name: "Cà Phê Nhạc quán Romantic",
        address: "3 Đường Thông Thiên Học, Phường 2, Đà Lạt, Lâm Đồng, Vietnam",
        currentStamps: 3,
        totalStamps: 10,
      ),
    ];
  }
}
