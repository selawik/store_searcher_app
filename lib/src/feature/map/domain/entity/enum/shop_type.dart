enum ShopType {
  pyaterochka,
  magnit,
  perekrestok,
  spar;

  bool get isPyaterochka => this == ShopType.pyaterochka;
  bool get isMagnit => this == ShopType.magnit;
  bool get isPerekrestok => this == ShopType.perekrestok;
  bool get isSpar => this == ShopType.spar;
}
