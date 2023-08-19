package com.example.yandex_map_test

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        var yandexMapKitApiKey = BuildConfig.YANDEX_MAPKIT_API_KEY

        MapKitFactory.setApiKey(yandexMapKitApiKey)
        super.configureFlutterEngine(flutterEngine)
    }
}
