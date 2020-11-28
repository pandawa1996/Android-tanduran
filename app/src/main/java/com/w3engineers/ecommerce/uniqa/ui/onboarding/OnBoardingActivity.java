package com.w3engineers.ecommerce.uniqa.ui.onboarding;

import android.content.Intent;
import android.os.Handler;
import android.view.View;

import com.w3engineers.ecommerce.uniqa.R;
import com.w3engineers.ecommerce.uniqa.data.helper.base.BaseActivity;
import com.w3engineers.ecommerce.uniqa.databinding.ActivityOnboardingBinding;
import com.w3engineers.ecommerce.uniqa.ui.main.MainActivity;

import java.util.Timer;
import java.util.TimerTask;

import static com.w3engineers.ecommerce.uniqa.data.util.Constants.DefaultValue.DELAY_MS;
import static com.w3engineers.ecommerce.uniqa.data.util.Constants.DefaultValue.PERIOD_MS;


public class OnBoardingActivity extends BaseActivity <OnBoardingMvpView, OnBoardingPresenter> implements OnBoardingMvpView {
    private ActivityOnboardingBinding mBinding;
    OnBoardingPagerAdapter mPagerAdapter;
    int currentPage = 0;
    Timer timer;

    @Override
    protected int getLayoutId() {
        return R.layout.activity_onboarding;
    }

    @Override
    protected void startUI() {
        mBinding = (ActivityOnboardingBinding) getViewDataBinding();
        autoSlideOnBoarding();
        overridePendingTransition(R.anim.activity_slide_in, R.anim.activity_slide_out);

        mPagerAdapter = new OnBoardingPagerAdapter(this);
        mBinding.viewpagerOnboarding.setAdapter(mPagerAdapter);
        mBinding.indicator.setViewPager(mBinding.viewpagerOnboarding);

        setClickListener(mBinding.textSkip);

    }

    @Override
    protected void stopUI() {

    }

    @Override
    public void onClick(View view) {
        super.onClick(view);
        switch (view.getId()) {
            case R.id.text_skip:
                startActivity(new Intent(this, MainActivity.class));
                finish();
                break;
        }
    }

    @Override
    protected OnBoardingPresenter initPresenter() {
        return new OnBoardingPresenter();
    }

    /**
     * method for auto sliding view pager
     */
    private void autoSlideOnBoarding() {
        final Handler handler = new Handler();
        final Runnable runnable = new Runnable() {
            public void run() {
                if (currentPage == 4 - 1) {
                    currentPage = 0;
                }
                mBinding.viewpagerOnboarding.setCurrentItem(currentPage++, true);
            }
        };

        timer = new Timer(); // This will create a new Thread
        timer.schedule(new TimerTask() { // task to be scheduled

            @Override
            public void run() {
                handler.post(runnable);
            }
        }, DELAY_MS, PERIOD_MS);
    }
}
