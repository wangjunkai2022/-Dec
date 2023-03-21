package com.apk;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Challenge.kt */
/* loaded from: classes7.dex */
public final class dg0 {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final Map<String, String> f858do;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final String f859if;

    public dg0(@NotNull String str, @NotNull Map<String, String> map) {
        String str2;
        nd0.m1875new(str, "scheme");
        nd0.m1875new(map, "authParams");
        this.f859if = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key != null) {
                Locale locale = Locale.US;
                nd0.m1872for(locale, "US");
                str2 = key.toLowerCase(locale);
                nd0.m1872for(str2, "(this as java.lang.String).toLowerCase(locale)");
            } else {
                str2 = null;
            }
            linkedHashMap.put(str2, value);
        }
        Map<String, String> unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        nd0.m1872for(unmodifiableMap, "unmodifiableMap<String?, String>(newAuthParams)");
        this.f858do = unmodifiableMap;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof dg0) {
            dg0 dg0Var = (dg0) obj;
            if (nd0.m1870do(dg0Var.f859if, this.f859if) && nd0.m1870do(dg0Var.f858do, this.f858do)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f858do.hashCode() + ((this.f859if.hashCode() + 899) * 31);
    }

    @NotNull
    public String toString() {
        return this.f859if + " authParams=" + this.f858do;
    }
}
