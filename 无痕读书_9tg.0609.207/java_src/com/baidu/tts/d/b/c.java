package com.baidu.tts.d.b;

import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.f.g;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.StringTool;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ModelFileFlyweight.java */
/* loaded from: classes8.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public String f11192a;
    public Map<String, String> b = new HashMap();

    public c(String str) {
        this.f11192a = str;
    }

    public boolean a(com.baidu.tts.database.a aVar) {
        Map<String, String> d = aVar.d(this.f11192a);
        this.b = d;
        if (DataTool.isMapEmpty(d)) {
            return false;
        }
        String str = this.b.get(g.ABS_PATH.b());
        if (StringTool.isEmpty(str)) {
            aVar.b(this.f11192a);
            return false;
        }
        e.a().c(str).c(this.f11192a);
        return true;
    }

    public String b() {
        return DataTool.getMapValue(this.b, g.LENGTH.b());
    }

    public String c() {
        return DataTool.getMapValue(this.b, g.MD5.b());
    }

    public void a(ModelFileBags modelFileBags, com.baidu.tts.database.a aVar) {
        aVar.a(modelFileBags);
        a(aVar);
    }

    public String a() {
        return DataTool.getMapValue(this.b, g.ABS_PATH.b());
    }
}
