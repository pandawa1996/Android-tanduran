package com.w3engineers.ecommerce.uniqa.ui.userRegistration;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.UserRegistrationResponse;

public interface RegisterMvpView extends MvpView {
    void onSignUpSuccess(UserRegistrationResponse user);
    void onSignUpError(String errorMessage);
}
