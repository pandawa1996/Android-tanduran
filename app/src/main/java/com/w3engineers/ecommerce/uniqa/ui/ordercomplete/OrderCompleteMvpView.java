package com.w3engineers.ecommerce.uniqa.ui.ordercomplete;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.OrderListResponse;

public interface OrderCompleteMvpView extends MvpView {
    void onGettingOrderInfoSuccess(OrderListResponse response);
    void onGettingOrderInfoError(String errorMessage);
}
