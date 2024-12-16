import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/core/utils.dart';
// import 'dart:io';
// import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

extension DateTimeExtension on DateTime {
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return year == yesterday.year &&
        month == yesterday.month &&
        day == yesterday.day;
  }

  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return year == tomorrow.year &&
        month == tomorrow.month &&
        day == tomorrow.day;
  }

  int getDaysInMonth() {
    if (month == DateTime.february) {
      final bool isLeapYear =
          (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0);
      return isLeapYear ? 29 : 28;
    }
    const List<int> daysInMonth = <int>[
      31,
      -1,
      31,
      30,
      31,
      30,
      31,
      31,
      30,
      31,
      30,
      31
    ];
    return daysInMonth[month - 1];
  }

  String getFormattedDate() => isToday
      ? 'Today'
      : isTomorrow
          ? 'Tomorrow'
          : isYesterday
              ? 'Yesterday'
              : '${DateFormat('E').format(this)}, ${day.toString().padLeft(2, '0')} ${DateFormat('MMM').format(this)}\'${year.toString().takeLast(2)}';

  String getShortDate() => isToday
      ? 'Today'
      : isTomorrow
          ? 'Tomorrow'
          : isYesterday
              ? 'Yesterday'
              : '${day.toString().padLeft(2, '0')} ${DateFormat('MMM').format(this)}';

  String getFormattedTime() => DateFormat('hh:mm a').format(this);

  String getLogTime() => DateFormat.yMd().add_Hms().format(this);

  bool isSameDayAs(DateTime other) =>
      year == other.year && month == other.month && day == other.day;

  bool isSameWeekAs(DateTime other) {
    final thisWeekStart = DateTime(year, month, day - weekday);
    final otherWeekStart =
        DateTime(other.year, other.month, other.day - other.weekday);
    return thisWeekStart.isSameDayAs(otherWeekStart);
  }

  bool isSameMonthAs(DateTime other) =>
      year == other.year && month == other.month;

  String getDatetApiFormat() =>
      '$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';

  String getTimeApiFormat() =>
      '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
}

double getWidgetHeight(GlobalKey key) {
  final renderBox = key.currentContext?.findRenderObject() as RenderBox?;
  return renderBox?.size.height ?? 0;
}

double getWidgetWidth(GlobalKey key) {
  final renderBox = key.currentContext?.findRenderObject() as RenderBox?;
  return renderBox?.size.width ?? 0;
}

LatLng getCenterLatLng(LatLng p1, LatLng p2) {
  final double latM = (p1.latitude + p2.longitude) / 2;
  final double lngM = (p1.latitude + p2.longitude) / 2;
  return LatLng(latM, lngM);
}

// Future<Position?> getCurrentLocation() async {
//   final isServiceEnabled = await Geolocator.isLocationServiceEnabled();
//   if (!isServiceEnabled) {
//     if (Platform.isIOS) {
//       return null;
//     }
//     final openSettings = await Geolocator.openLocationSettings();
//     if (!openSettings) {
//       return null;
//     }
//   }

//   LocationPermission permission = await Geolocator.checkPermission();
//   if (permission == LocationPermission.denied) {
//     permission = await Geolocator.requestPermission();
//     if (permission == LocationPermission.denied) {
//       return null;
//     }
//   }

//   if (permission == LocationPermission.deniedForever) {
//     return null;
//   }

//   return await Geolocator.getCurrentPosition();
// }
