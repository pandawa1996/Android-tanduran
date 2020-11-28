package com.w3engineers.ecommerce.uniqa.data.helper.database;

import android.arch.persistence.room.Database;
import android.content.Context;

import com.w3engineers.ecommerce.uniqa.R;
import com.w3engineers.ecommerce.uniqa.data.helper.models.CustomProductInventory;

@Database(entities = {CustomProductInventory.class},
        version = 1, exportSchema = false)
public abstract class UniqaDatabase extends AppDatabase {

    private static volatile UniqaDatabase sInstance;

    // Get a database instance
    public static synchronized UniqaDatabase on() {
        return sInstance;
    }

    public static synchronized void init(Context context) {

        if (sInstance == null) {
            synchronized (UniqaDatabase.class) {
                sInstance = createDb(context, context.getString(R.string.app_name), UniqaDatabase.class);
            }
        }
    }

    public abstract UniqaCustomDao codeDao();
}
