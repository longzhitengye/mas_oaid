package com.ebming.mas_oaid;

import android.app.Application;
import android.util.Log;

public class OAIDApplication extends Application{
    public static final String TAG = "OAIDApplication";
    @Override
    public void onCreate() {
        super.onCreate();
        System.loadLibrary("msaoaidsec");  // TODO （3）SDK初始化操作
    }

}
