package com.apk;

import android.os.SystemClock;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Progress.java */
/* loaded from: classes8.dex */
public class hy implements Serializable {

    /* renamed from: break  reason: not valid java name */
    public int f2001break;

    /* renamed from: case  reason: not valid java name */
    public float f2002case;

    /* renamed from: const  reason: not valid java name */
    public qy<?, ? extends qy> f2005const;

    /* renamed from: do  reason: not valid java name */
    public String f2006do;

    /* renamed from: final  reason: not valid java name */
    public Serializable f2008final;

    /* renamed from: for  reason: not valid java name */
    public String f2009for;

    /* renamed from: goto  reason: not valid java name */
    public long f2010goto;

    /* renamed from: if  reason: not valid java name */
    public String f2011if;

    /* renamed from: import  reason: not valid java name */
    public transient long f2012import;

    /* renamed from: new  reason: not valid java name */
    public String f2014new;

    /* renamed from: super  reason: not valid java name */
    public Serializable f2017super;

    /* renamed from: this  reason: not valid java name */
    public transient long f2018this;

    /* renamed from: throw  reason: not valid java name */
    public Serializable f2019throw;

    /* renamed from: try  reason: not valid java name */
    public String f2020try;

    /* renamed from: while  reason: not valid java name */
    public Throwable f2021while;

    /* renamed from: native  reason: not valid java name */
    public transient long f2013native = SystemClock.elapsedRealtime();

    /* renamed from: else  reason: not valid java name */
    public long f2007else = -1;

    /* renamed from: catch  reason: not valid java name */
    public int f2003catch = 0;

    /* renamed from: class  reason: not valid java name */
    public long f2004class = System.currentTimeMillis();

    /* renamed from: public  reason: not valid java name */
    public transient List<Long> f2015public = new ArrayList();

    /* renamed from: return  reason: not valid java name */
    public boolean f2016return = false;

    /* compiled from: Progress.java */
    /* renamed from: com.apk.hy$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
        void call(hy hyVar);
    }

    /* renamed from: do  reason: not valid java name */
    public static hy m1172do(hy hyVar, long j, long j2, Cdo cdo) {
        hyVar.f2007else = j2;
        hyVar.f2010goto += j;
        hyVar.f2012import += j;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if ((elapsedRealtime - hyVar.f2013native >= 300) || hyVar.f2010goto == j2) {
            long j3 = elapsedRealtime - hyVar.f2013native;
            if (j3 == 0) {
                j3 = 1;
            }
            hyVar.f2002case = (((float) hyVar.f2010goto) * 1.0f) / ((float) j2);
            hyVar.f2015public.add(Long.valueOf((hyVar.f2012import * 1000) / j3));
            if (hyVar.f2015public.size() > 10) {
                hyVar.f2015public.remove(0);
            }
            long j4 = 0;
            for (Long l : hyVar.f2015public) {
                j4 = ((float) j4) + ((float) l.longValue());
            }
            hyVar.f2018this = j4 / hyVar.f2015public.size();
            hyVar.f2013native = elapsedRealtime;
            hyVar.f2012import = 0L;
            if (cdo != null) {
                cdo.call(hyVar);
            }
        }
        return hyVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || hy.class != obj.getClass()) {
            return false;
        }
        String str = this.f2006do;
        String str2 = ((hy) obj).f2006do;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public int hashCode() {
        String str = this.f2006do;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Progress{fraction=");
        m1016super.append(this.f2002case);
        m1016super.append(", totalSize=");
        m1016super.append(this.f2007else);
        m1016super.append(", currentSize=");
        m1016super.append(this.f2010goto);
        m1016super.append(", speed=");
        m1016super.append(this.f2018this);
        m1016super.append(", status=");
        m1016super.append(this.f2001break);
        m1016super.append(", priority=");
        m1016super.append(this.f2003catch);
        m1016super.append(", folder=");
        m1016super.append(this.f2009for);
        m1016super.append(", filePath=");
        m1016super.append(this.f2014new);
        m1016super.append(", fileName=");
        m1016super.append(this.f2020try);
        m1016super.append(", tag=");
        m1016super.append(this.f2006do);
        m1016super.append(", url=");
        m1016super.append(this.f2011if);
        m1016super.append('}');
        return m1016super.toString();
    }
}
