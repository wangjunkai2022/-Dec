package com.biquge.ebook.app.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.apk.mf;
/* loaded from: classes8.dex */
public class RemoteReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        mf.m1712do("REFRESH_CHANGE_VOICE_KEY", null);
    }
}
