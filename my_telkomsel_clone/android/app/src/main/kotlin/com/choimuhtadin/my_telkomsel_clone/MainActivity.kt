package com.choimuhtadin.my_telkomsel_clone

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.SplashScreen

class MainActivity: FlutterActivity() {
    override fun provideSplashScreen(): SplashScreen? {
        return SimpleSplashScreen()
    }
}
