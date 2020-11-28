package com.w3engineers.ecommerce.uniqa.ui.main;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.MainPageResponse;

public interface MainMvpView extends MvpView {

    void onGettingHomePageDataSuccess(MainPageResponse mainPageResponse);
    void onGettingHomePageDataError(String error);

}
