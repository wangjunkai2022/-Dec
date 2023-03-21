package com.apk;

import com.baidu.tts.loopj.RequestParams;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* compiled from: HttpParams.java */
/* loaded from: classes8.dex */
public class gy implements Serializable {

    /* renamed from: for  reason: not valid java name */
    public static final vg0 f1653for;

    /* renamed from: do  reason: not valid java name */
    public LinkedHashMap<String, List<String>> f1654do = new LinkedHashMap<>();

    /* renamed from: if  reason: not valid java name */
    public LinkedHashMap<String, List<Cdo>> f1655if = new LinkedHashMap<>();

    /* compiled from: HttpParams.java */
    /* renamed from: com.apk.gy$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements Serializable {

        /* renamed from: do  reason: not valid java name */
        public File f1656do;

        /* renamed from: for  reason: not valid java name */
        public transient vg0 f1657for;

        /* renamed from: if  reason: not valid java name */
        public String f1658if;

        public String toString() {
            return "FileWrapper{file=null, fileName=null, contentType=null, fileSize=0}";
        }
    }

    static {
        vg0.m2790for("text/plain;charset=utf-8");
        f1653for = vg0.m2790for("application/json;charset=utf-8");
        vg0.m2790for(RequestParams.APPLICATION_OCTET_STREAM);
    }

    /* renamed from: do  reason: not valid java name */
    public final void m1047do(String str, String str2, boolean z) {
        if (str == null || str2 == null) {
            return;
        }
        List<String> list = this.f1654do.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f1654do.put(str, list);
        }
        if (z) {
            list.clear();
        }
        list.add(str2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, List<String>> entry : this.f1654do.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
        }
        for (Map.Entry<String, List<Cdo>> entry2 : this.f1655if.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(entry2.getKey());
            sb.append("=");
            sb.append(entry2.getValue());
        }
        return sb.toString();
    }
}
