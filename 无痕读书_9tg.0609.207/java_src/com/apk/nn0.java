package com.apk;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* compiled from: TagTransformation.java */
/* loaded from: classes7.dex */
public class nn0 {

    /* renamed from: if  reason: not valid java name */
    public Map<String, String> f3278if = new LinkedHashMap();

    /* renamed from: for  reason: not valid java name */
    public List<im0> f3277for = new ArrayList();

    /* renamed from: do  reason: not valid java name */
    public boolean f3276do = true;

    /* renamed from: do  reason: not valid java name */
    public Map<String, String> m1896do(Map<String, String> map) {
        boolean z = this.f3276do;
        boolean z2 = (this.f3278if == null && this.f3277for == null) ? false : true;
        if (z2 || !z) {
            LinkedHashMap linkedHashMap = z ? new LinkedHashMap(map) : new LinkedHashMap();
            if (z2) {
                for (Map.Entry<String, String> entry : this.f3278if.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (value == null) {
                        linkedHashMap.remove(key);
                    } else {
                        linkedHashMap.put(key, m1897if(value, map));
                    }
                }
                for (im0 im0Var : this.f3277for) {
                    for (Map.Entry<String, String> entry2 : map.entrySet()) {
                        String key2 = entry2.getKey();
                        if (im0Var.m1246do(key2, entry2.getValue())) {
                            String m1247if = im0Var.m1247if();
                            if (m1247if == null) {
                                linkedHashMap.remove(key2);
                            } else {
                                linkedHashMap.put(key2, m1897if(m1247if, map));
                            }
                        }
                    }
                }
            }
            return linkedHashMap;
        }
        return map;
    }

    /* renamed from: if  reason: not valid java name */
    public String m1897if(String str, Map<String, String> map) {
        StringBuffer stringBuffer = new StringBuffer();
        int indexOf = str.indexOf("${");
        int i = -1;
        while (indexOf >= 0 && indexOf < str.length()) {
            stringBuffer.append(str.substring(i + 1, indexOf));
            i = str.indexOf("}", indexOf);
            if (i > indexOf) {
                String str2 = map != null ? map.get(str.substring(indexOf + 2, i).toLowerCase()) : "";
                stringBuffer.append(str2 != null ? str2.toString() : "");
            }
            indexOf = str.indexOf("${", Math.max(i + 1, indexOf + 1));
        }
        stringBuffer.append(str.substring(i + 1));
        return stringBuffer.toString();
    }
}
