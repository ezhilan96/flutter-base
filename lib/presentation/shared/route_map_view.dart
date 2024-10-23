import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_base/data/dto/response/direction/direction_dto.dart'
    as direction;

import '../../domain/entity/location.dart';
import '../config/color_scheme.dart';
import 'map_with_custom_info_window.dart';

class RouteMapView extends StatefulWidget {
  const RouteMapView({
    required this.pickup,
    this.drop,
    this.route,
    super.key,
  });

  final Location pickup;
  final Location? drop;
  final direction.Route? route;

  @override
  State<RouteMapView> createState() => _RouteMapViewState();
}

class _RouteMapViewState extends State<RouteMapView> {
  final PolylinePoints _polylinePoints = PolylinePoints();
  GoogleMapController? _mapController;

  Set<Marker> markers = {};
  List<Polyline> polylines = [];
  BitmapDescriptor pickupMarkerIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor dropMarkerIcon = BitmapDescriptor.defaultMarker;

  void _onMapCreated(GoogleMapController controller) async {
    _mapController = controller;
    final LatLngBounds? bounds = widget.route?.bounds?.toLatLngBounds();
    if (bounds != null) {
      _mapController?.animateCamera(
        CameraUpdate.newLatLngBounds(
          bounds,
          65,
        ),
      );
    }
    if (widget.route?.overview_polyline?.points != null) {
      final result = _polylinePoints
          .decodePolyline(widget.route!.overview_polyline!.points!);
      List<LatLng> routePoints = result
          .map((point) => LatLng(point.latitude, point.longitude))
          .toList();
      markers = <Marker>{
        Marker(
          markerId: const MarkerId('1'),
          position: routePoints.first,
          icon: pickupMarkerIcon,
        ),
        Marker(
          markerId: const MarkerId('2'),
          position: routePoints.last,
          icon: dropMarkerIcon,
        ),
      };
      polylines.add(
        Polyline(
          polylineId: const PolylineId('route'),
          points: routePoints,
          color: CustomColors.textDisabled,
          width: 3,
        ),
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    BitmapDescriptor.asset(
      const ImageConfiguration(size: Size.square(8)),
      'assets/images/png/ic_pickup_marker.png',
    ).then((onValue) => pickupMarkerIcon = onValue);
    BitmapDescriptor.asset(
      const ImageConfiguration(size: Size.square(8)),
      'assets/images/png/ic_drop_marker.png',
    ).then((onValue) => dropMarkerIcon = onValue);
  }

  @override
  Widget build(BuildContext context) {
    return MapWithCustomInfoWindow(
      initialCameraPosition: CameraPosition(
        target: widget.pickup.latLng!,
        zoom: 17,
      ),
      onMapCreated: _onMapCreated,
      markers: markers,
      polylines: Set.of(polylines),
      pickupAddress: widget.pickup.address,
      dropAddress: widget.drop?.address,
    );
  }
}
