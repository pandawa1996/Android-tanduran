package com.w3engineers.ecommerce.uniqa.data.helper.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.w3engineers.ecommerce.uniqa.data.helper.models.ProductModel;

import java.util.List;

public class ProductGridResponse {
    @SerializedName("status_code")
    @Expose
    public int statusCode;

    @SerializedName("message")
    @Expose
    public String message;

    @SerializedName("data")
    @Expose
    public List<ProductModel> dataModel;
}
