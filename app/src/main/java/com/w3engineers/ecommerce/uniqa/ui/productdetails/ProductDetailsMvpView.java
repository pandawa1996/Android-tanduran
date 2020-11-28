package com.w3engineers.ecommerce.uniqa.ui.productdetails;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.AddFavouriteResponse;
import com.w3engineers.ecommerce.uniqa.data.helper.response.ProductDetailsResponse;

public interface ProductDetailsMvpView extends MvpView {
    /**
     * this interface is used to create callback to pass server response
     */


    void onProductDetailsSuccess(ProductDetailsResponse detailsResponse);

    void onProductDetailsError(String errorMessage);

    void onFavSuccess(AddFavouriteResponse response);

    void onFavError(String errorMessage);

    void onRemoveFavSuccess(AddFavouriteResponse response);
}
