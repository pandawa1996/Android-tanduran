package com.w3engineers.ecommerce.uniqa.ui.signinresendcode;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.UserRegistrationResponse;

public interface SignInEmailSendMvpView extends MvpView {
   void onGetCodeSuccess(UserRegistrationResponse user);
   void onGetCodeError(String errorMessage);
}
