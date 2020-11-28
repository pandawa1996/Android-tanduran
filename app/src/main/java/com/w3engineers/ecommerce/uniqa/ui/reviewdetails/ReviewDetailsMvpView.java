package com.w3engineers.ecommerce.uniqa.ui.reviewdetails;

import com.w3engineers.ecommerce.uniqa.data.helper.base.MvpView;
import com.w3engineers.ecommerce.uniqa.data.helper.models.FeedBackModel;

public interface ReviewDetailsMvpView extends MvpView {
    void onGettingShowReviewSuccess(FeedBackModel feedBackModel);

    void onGettingShowReviewError(String error);
}
