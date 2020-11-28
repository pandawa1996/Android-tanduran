package com.w3engineers.ecommerce.uniqa.ui.category;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.response.AllCategoryResponse;

public interface CategoryMvpView extends MvpView {
    void onCategoryListSuccess(AllCategoryResponse productCategories);
    void onCategoryListError(String message);
}
