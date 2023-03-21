package com.apk;

import com.apk.x4;
import java.util.List;
import org.json.JSONObject;
/* compiled from: BookUtil.java */
/* loaded from: classes8.dex */
public final class ba implements x4.Cgoto {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f275do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ List f276if;

    public ba(String str, List list) {
        this.f275do = str;
        this.f276if = list;
    }

    @Override // com.apk.x4.Cgoto
    /* renamed from: do  reason: not valid java name */
    public void mo162do(boolean z, int i, String str) {
    }

    @Override // com.apk.x4.Cgoto
    /* renamed from: if  reason: not valid java name */
    public void mo163if() {
        JSONObject m2963throw;
        List list;
        JSONObject m2963throw2;
        List list2;
        xw xwVar = xw.NO_CACHE;
        try {
            boolean z = true;
            if ("SP_HOST_XZ_XS_KEY".equals(this.f275do)) {
                if (!eg.m598goto("NOVEL_CLOUD_CHANGE_XZXS_HOST_KEY") || (list2 = (List) p0.m2001do("NOVEL_CLOUD_CHANGE_XZXS_HOST_KEY")) == null || list2.size() <= 0) {
                    z = false;
                } else {
                    list2.add(list2.remove(0));
                    p0.m2011super("NOVEL_CLOUD_CHANGE_XZXS_HOST_KEY", list2);
                }
                if (!z || (m2963throw2 = x4.m2963throw("https://contentxs.apptuxing.com", 0L, xwVar, null, null)) == null) {
                    return;
                }
                this.f276if.add(m2963throw2);
                return;
            }
            if (!eg.m598goto("NOVEL_CLOUD_CHANGE_HOST_KEY") || (list = (List) p0.m2001do("NOVEL_CLOUD_CHANGE_HOST_KEY")) == null || list.size() <= 0) {
                z = false;
            } else {
                list.add(list.remove(0));
                p0.m2011super("NOVEL_CLOUD_CHANGE_HOST_KEY", list);
            }
            if (!z || (m2963throw = x4.m2963throw("https://downbakxs.apptuxing.com", 0L, xwVar, null, null)) == null) {
                return;
            }
            this.f276if.add(m2963throw);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
