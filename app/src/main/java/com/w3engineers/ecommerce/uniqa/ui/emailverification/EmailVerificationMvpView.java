package com.w3engineers.ecommerce.uniqa.ui.emailverification;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.UserRegistrationResponse;

public interface EmailVerificationMvpView extends MvpView {
    void onEmailVerificationSuccess(UserRegistrationResponse user);

    void onEmailVeridicationError(String errorMessage);

    void onResendCodeSuccess(UserRegistrationResponse user);

    void onResendCodeError(String errorMessage);
}
