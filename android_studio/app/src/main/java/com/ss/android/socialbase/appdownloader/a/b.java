package com.ss.android.socialbase.appdownloader.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.RequiresApi;
import com.apk.Cgoto;

@RequiresApi(api = 26)
/* loaded from: classes7.dex */
public class b extends a {
    public b(Context context) {
        super(context, null, null);
    }

    @Override // com.ss.android.socialbase.appdownloader.a.e
    public Intent b() {
        StringBuilder m1016super = Cgoto.m1016super("package:");
        m1016super.append(this.f11746a.getPackageName());
        Intent intent = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse(m1016super.toString()));
        intent.addFlags(1073741824);
        intent.addFlags(8388608);
        intent.addFlags(268435456);
        return intent;
    }
}