package com.apk;

import android.text.TextUtils;
import com.swl.gg.ggs.SwlAdPosters;
import java.util.List;
import org.json.JSONObject;
/* compiled from: AdShowPopupHelper.java */
/* renamed from: com.apk.private  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cprivate extends c1<g> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Cabstract f3736do;

    public Cprivate(Cabstract cabstract) {
        this.f3736do = cabstract;
    }

    @Override // com.apk.c1
    public g doInBackground() {
        JSONObject jSONObject = Cfinally.m797else().f1376while;
        if (jSONObject != null) {
            long m799goto = Cfinally.m799goto(jSONObject);
            if (m799goto != 0) {
                String m2620do = tt.m2620do("SP_HOME_HAIBAO_AD_INTERBAL_KEY", null);
                if (!TextUtils.isEmpty(m2620do)) {
                    if (Math.abs(System.currentTimeMillis() - Long.parseLong(m2620do)) < m799goto) {
                        return null;
                    }
                }
            }
            List<g> e = Cfinally.e(jSONObject);
            if (e != null && e.size() > 0) {
                return e.get(Cfinally.m797else().m825this(e));
            }
        }
        return (g) super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(g gVar) {
        g gVar2 = gVar;
        super.onPostExecute(gVar2);
        if (gVar2 != null) {
            Cabstract cabstract = this.f3736do;
            if (cabstract != null) {
                String m899if = gVar2.m899if();
                String m898do = gVar2.m898do();
                if ("swl".equals(m899if)) {
                    try {
                        SwlAdPosters swlAdPosters = new SwlAdPosters();
                        cabstract.f78if = swlAdPosters;
                        swlAdPosters.load(cabstract.f77do, m898do, null);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                tt.f4763do.putString("SP_HOME_HAIBAO_AD_INTERBAL_KEY", String.valueOf(System.currentTimeMillis()));
                return;
            }
            throw null;
        }
    }
}
