// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'direction_dto.freezed.dart';
part 'direction_dto.g.dart';

@freezed
class DirectionDto with _$DirectionDto {
  const factory DirectionDto({
    List<Route>? routes,
  }) = _DirectionDto;

  factory DirectionDto.fromJson(Map<String, dynamic> json) =>
      _$DirectionDtoFromJson(json);
}

@freezed
class Route with _$Route {
  const factory Route({
    Bound? bounds,
    List<Leg>? legs,
    OverviewPolyLine? overview_polyline,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}

@freezed
class Bound with _$Bound {
  const factory Bound({
    BoundLatLng? northeast,
    BoundLatLng? southwest,
  }) = _Bound;

  factory Bound.fromJson(Map<String, dynamic> json) => _$BoundFromJson(json);
}

@freezed
class BoundLatLng with _$BoundLatLng {
  const factory BoundLatLng({
    double? lat,
    double? lng,
  }) = _BoundLatLng;

  factory BoundLatLng.fromJson(Map<String, dynamic> json) =>
      _$BoundLatLngFromJson(json);
}

extension BoundExt on Bound {
  LatLngBounds toLatLngBounds() {
    return LatLngBounds(
      southwest: LatLng(
        southwest!.lat!,
        southwest!.lng!,
      ),
      northeast: LatLng(
        northeast!.lat!,
        northeast!.lng!,
      ),
    );
  }
}

@freezed
class Leg with _$Leg {
  const factory Leg({
    LegInfo? distance,
    LegInfo? duration,
  }) = _Leg;

  factory Leg.fromJson(Map<String, dynamic> json) => _$LegFromJson(json);
}

@freezed
class LegInfo with _$LegInfo {
  const factory LegInfo({
    String? text,
    double? value,
  }) = _LegInfo;

  factory LegInfo.fromJson(Map<String, dynamic> json) =>
      _$LegInfoFromJson(json);
}

@freezed
class OverviewPolyLine with _$OverviewPolyLine {
  const factory OverviewPolyLine({String? points}) = _OverviewPolyLine;

  factory OverviewPolyLine.fromJson(Map<String, dynamic> json) =>
      _$OverviewPolyLineFromJson(json);
}
