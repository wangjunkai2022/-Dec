package com.apk;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.tr.comment.sdk.R$color;

/* compiled from: TrBaseActivity.java */
/* loaded from: classes7.dex */
public class h80 extends AppCompatActivity {
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (fa0.m760extends()) {
            k80.m1469if(this, k40.m1451if(this, R$color.tr_sdk_comment_title_bg_night), 0);
        } else {
            k80.m1469if(this, fa0.m758do(this), 0);
        }
    }
}
