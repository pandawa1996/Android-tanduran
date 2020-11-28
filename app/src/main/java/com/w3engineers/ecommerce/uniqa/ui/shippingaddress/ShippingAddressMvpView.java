package com.w3engineers.ecommerce.uniqa.ui.shippingaddress;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.AvailableInventoryResponse;
import com.w3engineers.ecommerce.uniqa.data.helper.response.UserAddressResponse;
import com.w3engineers.ecommerce.uniqa.data.helper.response.UserMultipleAddressResponse;

public interface ShippingAddressMvpView extends MvpView {
    void onGetAvailableAddressSuccess(UserAddressResponse addressResponse);
    void onGetAvailableAddressError(String errorMessage);
    void onGettingAllAddressSuccess(UserMultipleAddressResponse response);

    void onAvailableInventorySuccess(AvailableInventoryResponse response);
    void onAvailableInventoryError(String errorMessage);

    void onBrainTreeClientTokenSuccess(String tokenResponse);
    void onBrainTreeClientTokenError(String errorMessage);

}
