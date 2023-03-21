package androidx.multidex;

import android.app.Application;
import android.content.Context;

/* loaded from: classes8.dex */
public class MultiDexApplication extends Application {
    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }
}