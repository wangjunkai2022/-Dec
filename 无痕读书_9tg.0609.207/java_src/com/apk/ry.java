package com.apk;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.apk.tw;
import com.apk.xx;
import com.biquge.ebook.app.bean.RedBgImageBean;
import java.io.File;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: OkDownload.java */
/* loaded from: classes8.dex */
public class ry {

    /* renamed from: do  reason: not valid java name */
    public String f4217do;

    /* renamed from: for  reason: not valid java name */
    public final ConcurrentHashMap<String, ty> f4218for;

    /* renamed from: if  reason: not valid java name */
    public final zy f4219if;

    /* compiled from: OkDownload.java */
    /* renamed from: com.apk.ry$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public static final ry f4220do = new ry(null);
    }

    public ry(Cdo cdo) {
        String str = tw.Cif.f4772do.getContext().getExternalFilesDir(null) + File.separator + "Download" + File.separator;
        this.f4217do = str;
        mu.m1783super(str);
        this.f4219if = new zy();
        this.f4218for = new ConcurrentHashMap<>();
        List<hy> query = xx.Cif.f5816do.query(null, "status not in(?)", new String[]{RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR}, null, null, "date ASC", null);
        for (hy hyVar : query) {
            int i = hyVar.f2001break;
            if (i == 1 || i == 2 || i == 3) {
                hyVar.f2001break = 0;
            }
        }
        xx xxVar = xx.Cif.f5816do;
        if (xxVar != null) {
            System.currentTimeMillis();
            xxVar.f4774do.lock();
            try {
                try {
                    xxVar.f4775for.beginTransaction();
                    for (hy hyVar2 : query) {
                        xxVar.f4775for.replace(xxVar.mo2625for(), null, xxVar.mo2626if(hyVar2));
                    }
                    xxVar.f4775for.setTransactionSuccessful();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return;
            } finally {
                xxVar.f4775for.endTransaction();
                xxVar.f4774do.unlock();
                System.currentTimeMillis();
            }
        }
        throw null;
    }

    /* renamed from: for  reason: not valid java name */
    public static ty m2363for(String str, @NonNull qy<File, ? extends qy> qyVar) {
        if (TextUtils.isEmpty(str)) {
            str = qyVar.f3966if;
        }
        ConcurrentHashMap<String, ty> concurrentHashMap = Cif.f4220do.f4218for;
        ty tyVar = concurrentHashMap.get(str);
        if (tyVar == null) {
            ty tyVar2 = new ty(str, qyVar);
            concurrentHashMap.put(str, tyVar2);
            return tyVar2;
        }
        return tyVar;
    }

    /* renamed from: new  reason: not valid java name */
    public static ty m2364new(hy hyVar) {
        ConcurrentHashMap<String, ty> concurrentHashMap = Cif.f4220do.f4218for;
        ty tyVar = concurrentHashMap.get(hyVar.f2006do);
        if (tyVar == null) {
            ty tyVar2 = new ty(hyVar);
            concurrentHashMap.put(hyVar.f2006do, tyVar2);
            return tyVar2;
        }
        return tyVar;
    }

    /* renamed from: do  reason: not valid java name */
    public ty m2365do(String str) {
        return this.f4218for.get(str);
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m2366if(String str) {
        return this.f4218for.containsKey(str);
    }
}
