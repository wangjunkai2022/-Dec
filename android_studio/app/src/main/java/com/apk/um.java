package com.apk;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: LazyHeaders.java */
/* loaded from: classes8.dex */
public final class um implements sm {

    /* renamed from: for  reason: not valid java name */
    public volatile Map<String, String> f4930for;

    /* renamed from: if  reason: not valid java name */
    public final Map<String, List<tm>> f4931if;

    /* compiled from: LazyHeaders.java */
    /* renamed from: com.apk.um$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo {

        /* renamed from: for  reason: not valid java name */
        public static final Map<String, List<tm>> f4932for;

        /* renamed from: if  reason: not valid java name */
        public static final String f4933if;

        /* renamed from: do  reason: not valid java name */
        public Map<String, List<tm>> f4934do = f4932for;

        static {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
                int length = property.length();
                StringBuilder sb = new StringBuilder(property.length());
                for (int i = 0; i < length; i++) {
                    char charAt = property.charAt(i);
                    if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                        sb.append(charAt);
                    } else {
                        sb.append('?');
                    }
                }
                property = sb.toString();
            }
            f4933if = property;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(f4933if)) {
                hashMap.put("User-Agent", Collections.singletonList(new Cif(f4933if)));
            }
            f4932for = Collections.unmodifiableMap(hashMap);
        }
    }

    /* compiled from: LazyHeaders.java */
    /* renamed from: com.apk.um$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif implements tm {
        @NonNull

        /* renamed from: do  reason: not valid java name */
        public final String f4935do;

        public Cif(@NonNull String str) {
            this.f4935do = str;
        }

        @Override // com.apk.tm
        /* renamed from: do */
        public String mo2608do() {
            return this.f4935do;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cif) {
                return this.f4935do.equals(((Cif) obj).f4935do);
            }
            return false;
        }

        public int hashCode() {
            return this.f4935do.hashCode();
        }

        public String toString() {
            StringBuilder m1016super = Cgoto.m1016super("StringHeaderFactory{value='");
            m1016super.append(this.f4935do);
            m1016super.append('\'');
            m1016super.append('}');
            return m1016super.toString();
        }
    }

    public um(Map<String, List<tm>> map) {
        this.f4931if = Collections.unmodifiableMap(map);
    }

    /* renamed from: do  reason: not valid java name */
    public final Map<String, String> m2725do() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<tm>> entry : this.f4931if.entrySet()) {
            List<tm> value = entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = value.size();
            for (int i = 0; i < size; i++) {
                String mo2608do = value.get(i).mo2608do();
                if (!TextUtils.isEmpty(mo2608do)) {
                    sb.append(mo2608do);
                    if (i != value.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String sb2 = sb.toString();
            if (!TextUtils.isEmpty(sb2)) {
                hashMap.put(entry.getKey(), sb2);
            }
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj instanceof um) {
            return this.f4931if.equals(((um) obj).f4931if);
        }
        return false;
    }

    @Override // com.apk.sm
    public Map<String, String> getHeaders() {
        if (this.f4930for == null) {
            synchronized (this) {
                if (this.f4930for == null) {
                    this.f4930for = Collections.unmodifiableMap(m2725do());
                }
            }
        }
        return this.f4930for;
    }

    public int hashCode() {
        return this.f4931if.hashCode();
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("LazyHeaders{headers=");
        m1016super.append(this.f4931if);
        m1016super.append('}');
        return m1016super.toString();
    }
}
