package com.w3engineers.ecommerce.uniqa.ui.offerproduct;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.AddFavouriteResponse;
import com.w3engineers.ecommerce.uniqa.data.helper.response.ProductGridResponse;

public interface OfferProductMvpView extends MvpView {
    /**
     * below callback is used to get server response on view
     *
     * @param response
     */
    void onOfferProductSuccess(ProductGridResponse response);

    void onOfferProductError(String errorMessage);

    void onFavSuccess(AddFavouriteResponse response);

    void onFavError(String errorMessage);

    void onRemoveFavSuccess(AddFavouriteResponse response);
}
