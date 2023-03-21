package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.ui.activity.FeedBackActivity;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
/* compiled from: FeedBackActivity.java */
/* loaded from: classes8.dex */
public class r7 extends c1<Boolean> {

    /* renamed from: do  reason: not valid java name */
    public String f4010do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ FeedBackActivity f4011for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f4012if;

    public r7(FeedBackActivity feedBackActivity, String str) {
        this.f4011for = feedBackActivity;
        this.f4012if = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00e1 A[Catch: Exception -> 0x00f7, TryCatch #0 {Exception -> 0x00f7, blocks: (B:3:0x0002, B:11:0x0029, B:15:0x003d, B:17:0x00db, B:19:0x00e1, B:23:0x00f2, B:6:0x001c), top: B:29:0x0002 }] */
    @Override // com.apk.c1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Boolean doInBackground() {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.r7.doInBackground():java.lang.Object");
    }

    @Override // com.apk.c1
    public void onPostExecute(Boolean bool) {
        Boolean bool2 = bool;
        super.onPostExecute(bool2);
        if (bool2.booleanValue()) {
            if (TextUtils.isEmpty(this.f4010do)) {
                this.f4010do = "提交反馈成功";
            }
            ze.c0(this.f4011for, this.f4010do, new q7(this), false);
            return;
        }
        if (TextUtils.isEmpty(this.f4010do)) {
            this.f4010do = ze.q(R.string.load_data_failed_txt);
        }
        ToastUtils.show((CharSequence) this.f4010do);
    }
}
