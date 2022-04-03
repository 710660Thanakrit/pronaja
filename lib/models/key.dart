class Product {
  final String images;
  final String name;
  final String platform;
  final String region;
  final String price;

  Product({
    required this.images,
    required this.name,
    required this.platform,
    required this.region,
    required this.price,
  });
}

class PC {
  final List<Product> PCnaja = [
    Product(images: "assets/images/pc/Civilization_VI.png", name: "Sid Meier’s Civilization® VI", platform: "STEAM", region: "WORLDWIDE", price: "1200"),
    Product(images: "assets/images/pc/dead_by_daylight_pc.png", name: "Dead By Daylight", platform: "STEAM", region: "WORLDWIDE", price: "369"),
    Product(images: "assets/images/pc/cyberpunk_2077.png", name: "Cyberpunk 2077", platform: "STEAM", region: "WORLDWIDE", price: "1799"),
    Product(images: "assets/images/pc/the_elder_scrolls_v_skyrim.png", name: "THE ELDER SCROLLS V SKYRIM", platform: "STEAM", region: "WORLDWIDE", price: "1200"),
    Product(images: "assets/images/pc/RED_DEAD _REDEMPTION _2.png", name: "RED DEAD REDEMPTION 2", platform: "STEAM", region: "WORLDWIDE", price: "1599"),
    Product(images: "assets/images/pc/ds3-deluxe.png", name: "DARK SOULS III DELUXE EDITION", platform: "STEAM", region: "WORLDWIDE", price: "2100"),
    Product(images: "assets/images/pc/ae.png", name: "AGE OF EMPIRES IV", platform: "STEAM", region: "WORLDWIDE", price: "699"),
    Product(images: "assets/images/pc/MONSTER_HUNTER_RISE_DELUXE_EDITION.png", name: "MONSTER HUNTER RISE DELUXE EDITION", platform: "STEAM", region: "WORLDWIDE", price: "2150"),
    Product(images: "assets/images/pc/monster-hunter-world.png", name: "MONSTER HUNTER WORLD", platform: "STEAM", region: "WORLDWIDE", price: "500"),
    Product(images: "assets/images/pc/hunt__showdown.png", name: "HUNT:SHOWDOWN", platform: "STEAM", region: "WORLDWIDE", price: "750"),
    Product(images: "assets/images/pc/death-stranding.png", name: "DEATH STRANDING", platform: "STEAM", region: "WORLDWIDE", price: "1890"),
    Product(images: "assets/images/pc/resident_evil_village.png", name: "RESIDENT EVIL VILLAGE", platform: "STEAM", region: "WORLDWIDE", price: "1829"),
  ];
}
class PSN {
  final List<Product> psnnaja = [
    Product(images: "assets/images/PSN/14-days.png", name: "PLAYSTATION PLUS - 14 DAY", platform: "PLAYSTATION", region: "WORLDWIDE", price: "150"),
    Product(images: "assets/images/PSN/playstation-plus-12-month.png", name: "PLAYSTATION PLUS - 1 YEAR", platform: "PLAYSTATION", region: "USA", price: "1900"),
    Product(images: "assets/images/PSN/playstation-plus-3-month.png", name: "PLAYSTATION PLUS - 3 MONTH", platform: "PLAYSTATION", region: "USA", price: "888"),
    Product(images: "assets/images/PSN/playstation-plus-1-month.png", name: "PLAYSTATION PLUS - 1 MONTH", platform: "PLAYSTATION", region: "USA", price: "310"),
    Product(images: "assets/images/PSN/fifa-21.png", name: "FIFA 21", platform: "PLAYSTATION", region: "WORLDWIDE", price: "2500"),
    Product(images: "assets/images/PSN/star-wars.png", name: "STAR WARS: SQUADRONS DLC", platform: "PLAYSTATION", region: "WORLDWIDE", price: "100"),
    Product(images: "assets/images/PSN/fifa-21-fut-dlc.png", name: "FIFA 21 DLC", platform: "PLAYSTATION", region: "WORLDWIDE", price: "100"),
    Product(images: "assets/images/PSN/5de6658946177c5f23698932_32_.png", name: "CALL OF DUTY: VANGUARD BETA", platform: "PLAYSTATION", region: "WORLDWIDE", price: "50"),
    Product(images: "assets/images/PSN/call-of.png", name: "CALL OF DUTY MODERN WARFARE BETA", platform: "PLAYSTATION", region: "WORLDWIDE", price: "50"),
  ];
}
class Xbox {
  final List<Product> Xboxnaja = [
    Product(images: "assets/images/xbox/elden_ring.png", name: "ELDEN RING", platform: "XBOX", region: "WORLDWIDE", price: "1999"),
    Product(images: "assets/images/xbox/xbox_one_xbox.png", name: "ASSASSIN'S CREED VALHALLA", platform: "XBOX", region: "WORLDWIDE", price: "1200"),
    Product(images: "assets/images/xbox/assassin_s_creed_origins.png", name: "ASSASSIN'S CREED ORIGINS", platform: "XBOX", region: "WORLDWIDE", price: "800"),
    Product(images: "assets/images/xbox/5de6658946177c5f23698932_3__4.png", name: "FAR CRY 6", platform: "XBOX", region: "WORLDWIDE", price: "1150"),
    Product(images: "assets/images/xbox/far_cry_5.png", name: "FAR CRY 5", platform: "XBOX", region: "WORLDWIDE", price: "750"),
    Product(images: "assets/images/xbox/far_cry_primal.png", name: "FAR CRY PRIMAL", platform: "XBOX", region: "WORLDWIDE", price: "500"),
    Product(images: "assets/images/xbox/far-cry-new-dawn.png", name: "FAR CRY NEW DAWN", platform: "XBOX", region: "WORLDWIDE", price: "750"),
    Product(images: "assets/images/xbox/untitled-1.png", name: "FORZA HORIZON 5", platform: "XBOX", region: "WORLDWIDE", price: "1800"),
    Product(images: "assets/images/xbox/frh4.png", name: "FORZA HORIZON 4", platform: "XBOX", region: "WORLDWIDE", price: "1299"),
    Product(images: "assets/images/xbox/star_wars_battlefront_2.png", name: "STAR WARS BATTLEFRONT 2", platform: "XBOX", region: "WORLDWIDE", price: "700"),
    Product(images: "assets/images/xbox/watch-dogs-legion.png", name: "WATCH DOGS:LEGION", platform: "XBOX", region: "WORLDWIDE", price: "800"),
  ];
}