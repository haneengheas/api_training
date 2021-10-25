class LoginModel {
  late final int status;
  late final String message;
  late final Data data;
  late final String authorization;
  late final String accessToken;
  late final String expiresAt;

  LoginModel(
      {required this.status,
      required this.message,
      required this.data,
      required this.authorization,
      required this.accessToken,
      required this.expiresAt});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
    authorization = json['Authorization'];
    accessToken = json['accessToken'];
    expiresAt = json['expires_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['Authorization'] = this.authorization;
    data['accessToken'] = this.accessToken;
    data['expires_at'] = this.expiresAt;
    return data;
  }
}

class Data {
  late final String fname;
  late final String lname;
  late final String email;
  late final String phone;
  late final String governmentId;
  late final String image;
  late final String typeUser;
  late final String status;
  late final String isActive;
  late final Country country;
  late final City city;
  late final Address address;

  Data(
      {required this.fname,
      required this.lname,
      required this.email,
      required this.phone,
      required this.governmentId,
      required this.image,
      required this.typeUser,
      required this.status,
      required this.isActive,
      required this.country,
      required this.city,
      required this.address});

  Data.fromJson(Map<String, dynamic> json) {
    fname = json['fname'];
    lname = json['lname'];
    email = json['email'];
    phone = json['phone'];
    governmentId = json['government_id'];
    image = json['image'];
    typeUser = json['type_user'];
    status = json['status'];
    isActive = json['is_active'];
    country = (json['country'] != null
        ? new Country.fromJson(json['country'])
        : null)!;
    city = (json['city'] != null ? new City.fromJson(json['city']) : null)!;
    address = (json['address'] != null
        ? new Address.fromJson(json['address'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fname'] = this.fname;
    data['lname'] = this.lname;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['government_id'] = this.governmentId;
    data['image'] = this.image;
    data['type_user'] = this.typeUser;
    data['status'] = this.status;
    data['is_active'] = this.isActive;
    if (this.country != null) {
      data['country'] = this.country.toJson();
    }
    if (this.city != null) {
      data['city'] = this.city.toJson();
    }
    if (this.address != null) {
      data['address'] = this.address.toJson();
    }
    return data;
  }
}

class Country {
  late final int id;
  late final String name;
  late final String native;
  late final String currency;
  late final String phoneCode;
  late final String emoji;

  Country(
      {required this.id,
      required this.name,
      required this.native,
      required this.currency,
      required this.phoneCode,
      required this.emoji});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    native = json['native'];
    currency = json['currency'];
    phoneCode = json['phone_code'];
    emoji = json['emoji'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['native'] = this.native;
    data['currency'] = this.currency;
    data['phone_code'] = this.phoneCode;
    data['emoji'] = this.emoji;
    return data;
  }
}

class City {
  late final int id;
  late final String name;
  late final String latitude;
  late final String longitude;

  City(
      {required this.id,
      required this.name,
      required this.latitude,
      required this.longitude});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}

class Address {
  late final String title;
  late final String latitude;
  late final String longitude;
  late final String flatNumber;
  late final String buildingNumber;
  late final String insigniaAddress;

  Address(
      {required this.title,
      required this.latitude,
      required this.longitude,
      required this.flatNumber,
      required this.buildingNumber,
      required this.insigniaAddress});

  Address.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    flatNumber = json['flat_number'];
    buildingNumber = json['building_number'];
    insigniaAddress = json['insignia_address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['flat_number'] = this.flatNumber;
    data['building_number'] = this.buildingNumber;
    data['insignia_address'] = this.insigniaAddress;
    return data;
  }
}
