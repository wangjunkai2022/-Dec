package com.apk;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.fragment.app.Fragment;
/* compiled from: CommonsFragment.java */
/* loaded from: classes8.dex */
public abstract class j6 extends Fragment {
    public int getWidthDpi() {
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) getActivity().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            return (int) (displayMetrics.widthPixels / displayMetrics.density);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public void showTipDialog(Context context, String str, ft ftVar) {
        showTipDialog(context, str, ftVar, true);
    }

    public void showTipDialog(Context context, String str, ft ftVar, boolean z) {
        showTipDialog(context, str, ftVar, null, z);
    }

    public void showTipDialog(Context context, String str, ft ftVar, dt dtVar, boolean z) {
        ze.b0(context, str, ftVar, dtVar, z);
    }
}
