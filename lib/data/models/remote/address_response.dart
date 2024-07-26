class AddressResponse {
  final int id;
  final String addressName;
  final String phoneNumber;
  final String city;
  final String state;
  final String zipCode;
  final bool addressResponseDefault;

  AddressResponse({
    required this.id,
    required this.addressName,
    required this.phoneNumber,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.addressResponseDefault,
  });

  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      AddressResponse(
        id: json["id"],
        addressName: json["address_name"],
        phoneNumber: json["phone_number"],
        city: json["city"],
        state: json["state"],
        zipCode: json["zip_code"],
        addressResponseDefault: json["default"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "address_name": addressName,
        "phone_number": phoneNumber,
        "city": city,
        "state": state,
        "zip_code": zipCode,
        "default": addressResponseDefault,
      };
}
