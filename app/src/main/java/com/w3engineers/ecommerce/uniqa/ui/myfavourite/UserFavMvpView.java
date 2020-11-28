package com.w3engineers.ecommerce.uniqa.ui.myfavourite;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.ProductGridResponse;

public interface UserFavMvpView extends MvpView {
    void onGettingFavouriteSuccess(ProductGridResponse response);
    void onGettingFavouriteError(String errorMessage);
}
