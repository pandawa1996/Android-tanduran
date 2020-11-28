package com.w3engineers.ecommerce.uniqa.ui.checkout;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;

public interface CheckOutMvpView extends MvpView {
    void onPaymentNonceSuccess(String response);
    void  onPaymentNonceError(String errorMessage);

    void allPaymentSuccess(String response);
    void allPaymentError(String errorMessage);

}
