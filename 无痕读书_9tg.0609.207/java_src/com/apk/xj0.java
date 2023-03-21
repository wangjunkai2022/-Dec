package com.apk;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Logger;
import okhttp3.internal.SuppressSignatureCheck;
/* compiled from: AndroidLog.kt */
@SuppressSignatureCheck
/* loaded from: classes7.dex */
public final class xj0 {

    /* renamed from: do  reason: not valid java name */
    public static final CopyOnWriteArraySet<Logger> f5692do = new CopyOnWriteArraySet<>();

    /* renamed from: for  reason: not valid java name */
    public static final xj0 f5693for = null;

    /* renamed from: if  reason: not valid java name */
    public static final Map<String, String> f5694if;

    static {
        Map<String, String> map;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r1 = xg0.class.getPackage();
        String name = r1 != null ? r1.getName() : null;
        if (name != null) {
            linkedHashMap.put(name, "OkHttp");
        }
        String name2 = xg0.class.getName();
        nd0.m1872for(name2, "OkHttpClient::class.java.name");
        linkedHashMap.put(name2, "okhttp.OkHttpClient");
        String name3 = wi0.class.getName();
        nd0.m1872for(name3, "Http2::class.java.name");
        linkedHashMap.put(name3, "okhttp.Http2");
        String name4 = sh0.class.getName();
        nd0.m1872for(name4, "TaskRunner::class.java.name");
        linkedHashMap.put(name4, "okhttp.TaskRunner");
        linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        nd0.m1875new(linkedHashMap, "$this$toMap");
        int size = linkedHashMap.size();
        if (size == 0) {
            map = yc0.f5906do;
        } else if (size != 1) {
            nd0.m1875new(linkedHashMap, "$this$toMutableMap");
            map = new LinkedHashMap<>(linkedHashMap);
        } else {
            nd0.m1875new(linkedHashMap, "$this$toSingletonMap");
            Map.Entry entry = (Map.Entry) linkedHashMap.entrySet().iterator().next();
            map = Collections.singletonMap(entry.getKey(), entry.getValue());
            nd0.m1872for(map, "with(entries.iterator().…ingletonMap(key, value) }");
        }
        f5694if = map;
    }
}
