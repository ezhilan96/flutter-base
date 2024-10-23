import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location {
  final String? placeId;
  final LatLng? latLng;
  final String address;
  final String? postcode;
  final String? state;
  final String? district;
  final String? subLocality;
  final String? locality;
  final String? administrativeArea;
  final String? stateFullName;

  Location({
    this.placeId,
    this.latLng,
    required this.address,
    this.postcode,
    this.state,
    this.district,
    this.subLocality,
    this.locality,
    this.administrativeArea,
    this.stateFullName,
  });
}
