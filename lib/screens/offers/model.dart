class OffersModel {
  late final int status;
  late final String message;
  late final List<Data> data;

  OffersModel(
      {required this.status, required this.message, required this.data});

  OffersModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  late final int id;
  late final String title;
  late final String details;
  late final String discount;
  late final bool inCart;
  late final String status;
  late final Salon salon;
  late final String image;
  late final List<Images> images;
  late final Item item;

  Data(
      {required this.title,
      required this.details,
      required this.discount,
      required this.inCart,
      required this.status,
      required this.salon,
      required this.image,
      required this.images,
      required this.item});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    details = json['details'];
    discount = json['discount'];
    inCart = json['in_cart'];
    status = json['status'];
    salon = (json['salon'] != null ? new Salon.fromJson(json['salon']) : null)!;
    image = json['image'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images.add(new Images.fromJson(v));
      });
    }
    item = (json['item'] != null ? new Item.fromJson(json['item']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['details'] = this.details;
    data['discount'] = this.discount;
    data['in_cart'] = this.inCart;
    data['status'] = this.status;
    if (this.salon != null) {
      data['salon'] = this.salon.toJson();
    }
    data['image'] = this.image;
    if (this.images != null) {
      data['images'] = this.images.map((v) => v.toJson()).toList();
    }
    if (this.item != null) {
      data['item'] = this.item.toJson();
    }
    return data;
  }
}

class Salon {
  late final int id;
  late final String name;
  late final String msg;
  late final String image;
  late final String isVip;

  Salon(
      {required this.id,
      required this.name,
      required this.msg,
      required this.image,
      required this.isVip});

  Salon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    msg = json['msg'];
    image = json['image'];
    isVip = json['is_vip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['msg'] = this.msg;
    data['image'] = this.image;
    data['is_vip'] = this.isVip;
    return data;
  }
}

class Images {
  late final int id;
  late final String image;

  Images({required this.id, required this.image});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    return data;
  }
}

class Item {
  late final int id;
  late final String title;
  late final bool inCart;
  late final bool hasOffer;
  late final String priceBeforeDiscount;
  late final String priceAfterDiscount;

  Item(
      {required this.id,
      required this.title,
      required this.inCart,
      required this.hasOffer,
      required this.priceBeforeDiscount,
      required this.priceAfterDiscount});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    inCart = json['in_cart'];
    hasOffer = json['hasOffer'];
    priceBeforeDiscount = json['PriceBeforeDiscount'];
    priceAfterDiscount = json['PriceAfterDiscount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['in_cart'] = this.inCart;
    data['hasOffer'] = this.hasOffer;
    data['PriceBeforeDiscount'] = this.priceBeforeDiscount;
    data['PriceAfterDiscount'] = this.priceAfterDiscount;
    return data;
  }
}
