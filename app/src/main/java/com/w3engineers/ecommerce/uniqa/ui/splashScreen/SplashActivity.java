package com.w3engineers.ecommerce.uniqa.ui.splashScreen;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;

import com.w3engineers.ecommerce.uniqa.R;
import com.w3engineers.ecommerce.uniqa.data.util.CustomSharedPrefs;
import com.w3engineers.ecommerce.uniqa.ui.main.MainActivity;
import com.w3engineers.ecommerce.uniqa.ui.onboarding.OnBoardingActivity;


public class SplashActivity extends AppCompatActivity {

    private ImageView ivSplashImage;
    private Intent mainIntent;
    private boolean isRegistered;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);

        isRegistered = CustomSharedPrefs.getUserStatus(this);


        ivSplashImage = findViewById(R.id.image_view_logo);
        Animation transitionAlfa = AnimationUtils.loadAnimation(this, R.anim.transition_alfa);
        ivSplashImage.startAnimation(transitionAlfa);

        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {

                Intent intent;

                if (!isRegistered) {
                    intent = new Intent(SplashActivity.this, OnBoardingActivity.class);
                } else {
                    intent = new Intent(SplashActivity.this, MainActivity.class);
                }
                startActivity(intent);
                finish();


            }
        }, 3000);

    }

}
