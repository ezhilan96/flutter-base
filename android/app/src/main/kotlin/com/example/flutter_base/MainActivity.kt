package com.example.flutter_base

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    private val channel = "com.flutter.base"

    override fun configurelutterEngine(flutterEngine: FlutterEngine) {
        super.configurelutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            channel,
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "setGoogleApiKey" -> {
                    val apiKey: String? = call.argument<String>("googleApiKey")
                    try {
                        val appinfo =
                            packageManager.getApplicationInfo(packageName, PackageManager.GET_META_DATA)
                        appinfo.metaData.putString("com.google.android.geo.API_KEY", apiKey)
                        result.success(null)
                    } catch (e: Exception) {
                        result.notImplemented()
                    }
                }
            }
        }
    }
}
