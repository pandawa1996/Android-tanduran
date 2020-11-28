package com.w3engineers.ecommerce.uniqa.ui.prductGrid;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.AddFavouriteResponse;
import com.w3engineers.ecommerce.uniqa.data.helper.response.ProductGridResponse;

public interface ProductGridMvpView extends MvpView {
    void onProductListSuccess(ProductGridResponse products);

    void onProductListError(String errorMessage);

    void onFavSuccess(AddFavouriteResponse response);
    void onFavError(String errorMessage);

    void onRemoveFavSuccess(AddFavouriteResponse response);
}
