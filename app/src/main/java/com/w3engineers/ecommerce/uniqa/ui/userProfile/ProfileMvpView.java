package com.w3engineers.ecommerce.uniqa.ui.userProfile;


import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.UploadImageResponse;
import com.w3engineers.ecommerce.uniqa.data.helper.response.UserAddressResponse;
import com.w3engineers.ecommerce.uniqa.data.helper.response.UserMultipleAddressResponse;

public interface ProfileMvpView extends MvpView {
    void onSetAddressSuccess(UserAddressResponse address);

    void onRemoveAddressSuccess(UserAddressResponse address);

    void onSetAddressError(String errorMessage);

    void onGettingImageSuccess(UploadImageResponse response);

    void onGettingImageError(String errorMessage);

    void onGettingAllAddressSuccess(UserMultipleAddressResponse response);
}
