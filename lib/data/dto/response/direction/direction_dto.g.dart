// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DirectionDtoImpl _$$DirectionDtoImplFromJson(Map<String, dynamic> json) =>
    _$DirectionDtoImpl(
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) => Route.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DirectionDtoImplToJson(_$DirectionDtoImpl instance) =>
    <String, dynamic>{
      'routes': instance.routes,
    };

_$RouteImpl _$$RouteImplFromJson(Map<String, dynamic> json) => _$RouteImpl(
      bounds: json['bounds'] == null
          ? null
          : Bound.fromJson(json['bounds'] as Map<String, dynamic>),
      legs: (json['legs'] as List<dynamic>?)
          ?.map((e) => Leg.fromJson(e as Map<String, dynamic>))
          .toList(),
      overview_polyline: json['overview_polyline'] == null
          ? null
          : OverviewPolyLine.fromJson(
              json['overview_polyline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RouteImplToJson(_$RouteImpl instance) =>
    <String, dynamic>{
      'bounds': instance.bounds,
      'legs': instance.legs,
      'overview_polyline': instance.overview_polyline,
    };

_$BoundImpl _$$BoundImplFromJson(Map<String, dynamic> json) => _$BoundImpl(
      northeast: json['northeast'] == null
          ? null
          : BoundLatLng.fromJson(json['northeast'] as Map<String, dynamic>),
      southwest: json['southwest'] == null
          ? null
          : BoundLatLng.fromJson(json['southwest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BoundImplToJson(_$BoundImpl instance) =>
    <String, dynamic>{
      'northeast': instance.northeast,
      'southwest': instance.southwest,
    };

_$BoundLatLngImpl _$$BoundLatLngImplFromJson(Map<String, dynamic> json) =>
    _$BoundLatLngImpl(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BoundLatLngImplToJson(_$BoundLatLngImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$LegImpl _$$LegImplFromJson(Map<String, dynamic> json) => _$LegImpl(
      distance: json['distance'] == null
          ? null
          : LegInfo.fromJson(json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : LegInfo.fromJson(json['duration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LegImplToJson(_$LegImpl instance) => <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
    };

_$LegInfoImpl _$$LegInfoImplFromJson(Map<String, dynamic> json) =>
    _$LegInfoImpl(
      text: json['text'] as String?,
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LegInfoImplToJson(_$LegInfoImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };

_$OverviewPolyLineImpl _$$OverviewPolyLineImplFromJson(
        Map<String, dynamic> json) =>
    _$OverviewPolyLineImpl(
      points: json['points'] as String?,
    );

Map<String, dynamic> _$$OverviewPolyLineImplToJson(
        _$OverviewPolyLineImpl instance) =>
    <String, dynamic>{
      'points': instance.points,
    };
