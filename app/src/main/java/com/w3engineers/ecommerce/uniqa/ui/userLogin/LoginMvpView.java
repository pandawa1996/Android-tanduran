package com.w3engineers.ecommerce.uniqa.ui.userLogin;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.UserRegistrationResponse;

public interface LoginMvpView extends MvpView {
    void onEmailSignUpSuccess(UserRegistrationResponse user);
    void onEmainSignUpError(String errorMessage);

    void onSocialSignUpSuccess(UserRegistrationResponse user);
    void onSocialSignUpError(String errorMessage);
}
