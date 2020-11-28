package com.w3engineers.ecommerce.uniqa.ui.updatepassword;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.UserRegistrationResponse;

public interface UpdatePasswordMvpView extends MvpView {
    void onPasswordUpdateSuccess(UserRegistrationResponse user);
    void onPasswordUpdateError(String errorMessage);
}
