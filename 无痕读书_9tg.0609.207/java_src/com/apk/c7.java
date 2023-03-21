package com.apk;

import android.content.ContentValues;
import com.biquge.ebook.app.bean.SameCommendBean;
import com.biquge.ebook.app.bean.SameTjConfig;
import java.util.List;
import java.util.TimerTask;
import org.litepal.LitePal;
/* compiled from: BaseReadActivity.java */
/* loaded from: classes8.dex */
public class c7 extends TimerTask {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ List f520do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ String f521for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ SameCommendBean f522if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ b7 f523new;

    public c7(b7 b7Var, List list, SameCommendBean sameCommendBean, String str) {
        this.f523new = b7Var;
        this.f520do = list;
        this.f522if = sameCommendBean;
        this.f521for = str;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        try {
            if (!this.f523new.f254goto || this.f523new.f252else || this.f523new.f250case == null) {
                return;
            }
            int showCount = this.f523new.f250case.getShowCount();
            long rewardTime = this.f523new.f250case.getRewardTime() - 5000;
            if (rewardTime <= 0) {
                final b7 b7Var = this.f523new;
                final List list = this.f520do;
                if (b7Var != null) {
                    if (list != null && list.size() > 0) {
                        b7Var.runOnUiThread(new Runnable() { // from class: com.apk.l6
                            @Override // java.lang.Runnable
                            public final void run() {
                                b7.this.n(list);
                            }
                        });
                    }
                    rewardTime = this.f522if.getBy_minus() * 60 * 1000;
                    this.f523new.f250case.setShowCount(showCount + 1);
                } else {
                    throw null;
                }
            }
            this.f523new.f250case.setRewardTime(rewardTime);
            ContentValues contentValues = new ContentValues();
            contentValues.put("showCount", Integer.valueOf(this.f523new.f250case.getShowCount()));
            contentValues.put("rewardTime", Long.valueOf(this.f523new.f250case.getRewardTime()));
            LitePal.updateAll(SameTjConfig.class, contentValues, "tId = ?", this.f521for);
            if (this.f523new.f250case.getShowCount() < this.f522if.getMax_count() || this.f523new.f257try == null) {
                return;
            }
            this.f523new.f257try.cancel();
            this.f523new.f257try = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
