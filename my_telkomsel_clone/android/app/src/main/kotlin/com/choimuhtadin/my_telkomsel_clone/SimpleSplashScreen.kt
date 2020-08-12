package com.choimuhtadin.my_telkomsel_clone

import android.content.Context
import android.os.Bundle
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import io.flutter.embedding.android.SplashScreen
import com.choimuhtadin.my_telkomsel_clone.R

class SimpleSplashScreen : SplashScreen {

    lateinit var img:ImageView

    override fun createSplashView(context: Context, p1: Bundle?): View? {
        img = ImageView(context)
        img.scaleType = ImageView.ScaleType.CENTER_CROP
        img.setImageResource(R.drawable.img_splash)
        return img
    }

    override fun transitionToFlutter(onTransitionComplete: Runnable) {
        onTransitionComplete.run()
    }
}