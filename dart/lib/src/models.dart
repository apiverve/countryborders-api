/// Response models for the Country Borders API.

/// API Response wrapper.
class CountrybordersResponse {
  final String status;
  final dynamic error;
  final CountrybordersData? data;

  CountrybordersResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CountrybordersResponse.fromJson(Map<String, dynamic> json) => CountrybordersResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CountrybordersData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Country Borders API.

class CountrybordersData {
  String? country;
  String? cca2;
  bool? landlocked;
  String? region;
  String? subregion;
  CountrybordersDataCoordinates? coordinates;
  List<String>? borders;

  CountrybordersData({
    this.country,
    this.cca2,
    this.landlocked,
    this.region,
    this.subregion,
    this.coordinates,
    this.borders,
  });

  factory CountrybordersData.fromJson(Map<String, dynamic> json) => CountrybordersData(
      country: json['country'],
      cca2: json['cca2'],
      landlocked: json['landlocked'],
      region: json['region'],
      subregion: json['subregion'],
      coordinates: json['coordinates'] != null ? CountrybordersDataCoordinates.fromJson(json['coordinates']) : null,
      borders: (json['borders'] as List?)?.cast<String>(),
    );
}

class CountrybordersDataCoordinates {
  int? lat;
  int? lng;

  CountrybordersDataCoordinates({
    this.lat,
    this.lng,
  });

  factory CountrybordersDataCoordinates.fromJson(Map<String, dynamic> json) => CountrybordersDataCoordinates(
      lat: json['lat'],
      lng: json['lng'],
    );
}

class CountrybordersRequest {
  String country;

  CountrybordersRequest({
    required this.country,
  });

  Map<String, dynamic> toJson() => {
      'country': country,
    };
}
