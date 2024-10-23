import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../config/map_style.dart';
import 'custom_info_window.dart';
import 'widget_size_listener.dart';

class MapWithCustomInfoWindow extends StatefulWidget {
  const MapWithCustomInfoWindow({
    required this.initialCameraPosition,
    required this.onMapCreated,
    required this.markers,
    required this.polylines,
    required this.pickupAddress,
    this.dropAddress,
    super.key,
  });

  final CameraPosition initialCameraPosition;
  final void Function(GoogleMapController)? onMapCreated;
  final Set<Marker> markers;
  final Set<Polyline> polylines;
  final String pickupAddress;
  final String? dropAddress;

  @override
  State<MapWithCustomInfoWindow> createState() =>
      _MapWithCustomInfoWindowState();
}

class _MapWithCustomInfoWindowState extends State<MapWithCustomInfoWindow> {
  Offset? pickupMarkerOffset;
  Offset? dropMarkerOffset;
  Size pickupInfoWindowSize = Size.zero;
  Size dropInfoWindowSize = Size.zero;
  GoogleMapController? _controller;

  void _onMapCreated(GoogleMapController controller) {
    widget.onMapCreated?.call(controller);
    _controller = controller;
  }

  void _setupMarkerOffsets() async {
    final pickupMarker = widget.markers.firstOrNull;
    if (pickupMarker != null) {
      final ScreenCoordinate pickUpCoordinate =
          await _controller!.getScreenCoordinate(pickupMarker.position);
      setState(() {
        // Apply devicePixelRatio only on Android
        double dx = pickUpCoordinate.x.toDouble();
        double dy = pickUpCoordinate.y.toDouble();
        if (Platform.isAndroid) {
          dx /= View.of(context).devicePixelRatio;
          dy /= View.of(context).devicePixelRatio;
        }
        pickupMarkerOffset = Offset(dx, dy);
      });
    }
    final dropMarker = widget.markers.lastOrNull;
    if (dropMarker != null) {
      final ScreenCoordinate dropCoordinate =
          await _controller!.getScreenCoordinate(dropMarker.position);
      setState(() {
        double dx = dropCoordinate.x.toDouble();
        double dy = dropCoordinate.y.toDouble();
        if (Platform.isAndroid) {
          dx /= View.of(context).devicePixelRatio;
          dy /= View.of(context).devicePixelRatio;
        }
        dropMarkerOffset = Offset(dx, dy);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WidgetSizeListner(
      onSizeChange: (size) => _setupMarkerOffsets(),
      child: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: widget.initialCameraPosition,
            markers: widget.markers,
            polylines: Set<Polyline>.of(widget.polylines),
            style: mapStyleRoute,
            myLocationButtonEnabled: false,
            zoomGesturesEnabled: false,
            scrollGesturesEnabled: false,
            rotateGesturesEnabled: false,
            tiltGesturesEnabled: false,
            myLocationEnabled: false,
            compassEnabled: false,
            mapToolbarEnabled: false,
            zoomControlsEnabled: false,
            onCameraIdle: () => _setupMarkerOffsets(),
          ),
          if (pickupMarkerOffset != null)
            Positioned(
              top: pickupMarkerOffset!.dy - pickupInfoWindowSize.height - 12,
              left: pickupMarkerOffset!.dx - pickupInfoWindowSize.width / 2,
              child: WidgetSizeListner(
                onSizeChange: (size) =>
                    setState(() => pickupInfoWindowSize = size),
                child: CustomInfoWindow(widget.pickupAddress),
              ),
            ),
          if (widget.dropAddress != null && dropMarkerOffset != null)
            Positioned(
              top: dropMarkerOffset!.dy - dropInfoWindowSize.height - 12,
              left: dropMarkerOffset!.dx - dropInfoWindowSize.width / 2,
              child: WidgetSizeListner(
                onSizeChange: (size) =>
                    setState(() => dropInfoWindowSize = size),
                child: CustomInfoWindow(widget.dropAddress!),
              ),
            ),
        ],
      ),
    );
  }
}
