package com.w3engineers.ecommerce.uniqa.ui.welcome;


import android.content.Intent;
import android.os.Handler;

import com.w3engineers.ecommerce.uniqa.R;
import com.w3engineers.ecommerce.uniqa.data.helper.base.BaseActivity;
import com.w3engineers.ecommerce.uniqa.data.util.Constants;
import com.w3engineers.ecommerce.uniqa.ui.main.MainActivity;

public class WelcomeActivity extends BaseActivity<WelcomeMvpView, WelcomePresenter> {
    @Override
    protected int getLayoutId() {
        return R.layout.activity_welcome;
    }

    @Override
    protected void startUI() {
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                startActivity(new Intent(WelcomeActivity.this, MainActivity.class));

                finish();
            }
        }, Constants.DefaultValue.DELAY_INTERVAL);
    }

    @Override
    protected void stopUI() {

    }

    @Override
    protected WelcomePresenter initPresenter() {
        return new WelcomePresenter();
    }
}
