package com.w3engineers.ecommerce.uniqa.data.helper.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.w3engineers.ecommerce.uniqa.data.helper.models.InventoryModel;

import java.util.List;

public class AvailableInventoryResponse {
    @SerializedName("status_code")
    @Expose
    public int statusCode;

    @SerializedName("message")
    @Expose
    public String message;

    @SerializedName("data")
    @Expose
    public List<InventoryModel> inventoryModelList;
}
