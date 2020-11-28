package com.w3engineers.ecommerce.uniqa.ui.myfavourite;

import android.content.Context;
import android.support.annotation.NonNull;
import android.widget.Toast;

import com.w3engineers.ecommerce.uniqa.data.helper.base.BasePresenter;
import com.w3engineers.ecommerce.uniqa.data.helper.response.ProductGridResponse;
import com.w3engineers.ecommerce.uniqa.data.provider.retrofit.RetrofitClient;
import com.w3engineers.ecommerce.uniqa.data.util.Constants;
import com.w3engineers.ecommerce.uniqa.data.util.NetworkHelper;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class UserFavPresenter extends BasePresenter<UserFavMvpView> {

    /**
     * getting all favourite items of user
     * @param context
     * @param page
     * @param userId
     */
    public void getAllFavouriteResponse(Context context, String page, String userId) {
        if (NetworkHelper.hasNetworkAccess(context)) {
            RetrofitClient.getApiService().allFavourite(Constants.ServerUrl.API_TOKEN, page, userId).enqueue(new Callback<ProductGridResponse>() {
                @Override
                public void onResponse(@NonNull Call<ProductGridResponse> call, @NonNull Response<ProductGridResponse> response) {
                    if (response.body() != null) {
                        getMvpView().onGettingFavouriteSuccess(response.body());
                    }
                }

                @Override
                public void onFailure(@NonNull Call<ProductGridResponse> call, @NonNull Throwable t) {
                    getMvpView().onGettingFavouriteError(t.getMessage());
                }
            });
        } else {
            Toast.makeText(context, "Could not connect to internet.", Toast.LENGTH_SHORT).show();
        }
    }

}
