package com.apk;

import com.biquge.ebook.app.ui.activity.MainActivity;

/* compiled from: MainActivity.java */
/* loaded from: classes8.dex */
public class a8 extends c1<Boolean> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ MainActivity f45do;

    public a8(MainActivity mainActivity) {
        this.f45do = mainActivity;
    }

    @Override // com.apk.c1
    public Boolean doInBackground() {
        Cfinally m797else = Cfinally.m797else();
        boolean z = false;
        if (m797else.n != null && m797else.m822super(true) && Cfinally.m796do(m797else.n, "pupinsert") != null) {
            if (m797else.n.has("maxcount")) {
                m797else.m = m797else.n.optInt("maxcount");
            }
            if (m797else.n.has("showinterval")) {
                m797else.l = m797else.n.optInt("showinterval") * 60 * 1000;
            }
            long a2 = ze.a("SP_SHOW_MAIN_PUPINSERT_AD_TIME_KEY", 0L);
            if (a2 != 0) {
                if (Math.abs(System.currentTimeMillis() - a2) > m797else.l) {
                    if (m797else.m != -1) {
                        int m3174instanceof = ze.m3174instanceof("SP_SHOW_MAIN_PUPINSERT_TODAY_COUNT_KEY", 0) + 1;
                        if (m3174instanceof <= m797else.m) {
                            tt.f4763do.putInt("SP_SHOW_MAIN_PUPINSERT_TODAY_COUNT_KEY", m3174instanceof);
                        }
                    }
                }
            }
            z = true;
        }
        return Boolean.valueOf(z);
    }

    @Override // com.apk.c1
    public void onPostExecute(Boolean bool) {
        Boolean bool2 = bool;
        super.onPostExecute(bool2);
        if (bool2.booleanValue()) {
            MainActivity.o(this.f45do);
        } else {
            this.f45do.f6695static = false;
        }
    }
}
