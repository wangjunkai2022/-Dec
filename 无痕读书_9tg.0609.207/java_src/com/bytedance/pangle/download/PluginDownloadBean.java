package com.bytedance.pangle.download;

import android.content.SharedPreferences;
import androidx.annotation.Keep;
import androidx.appcompat.widget.ActivityChooserView;
import com.bytedance.pangle.util.l;
import java.util.List;
@Keep
/* loaded from: classes8.dex */
public class PluginDownloadBean {
    public List<String> mBackupUrlList;
    public int mFlag;
    public long mFollowId;
    public String mMd5;
    public String mPackageName;
    public String mUrl;
    public int mVersionCode;
    public int mApiVersionMin = 0;
    public int mApiVersionMax = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;

    public boolean allowDownload() {
        l a2 = l.a();
        String str = this.mPackageName;
        int i = this.mVersionCode;
        SharedPreferences sharedPreferences = a2.f11391a;
        return sharedPreferences.getBoolean("ALLOW_DOWNLOAD__" + str + "_" + i, true);
    }

    public boolean isRevert() {
        return this.mFlag == 3;
    }

    public boolean isUnInstall() {
        return this.mFlag == 1;
    }
}
