package com.baidu.tts.l;

import android.content.Context;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.client.model.BasicHandler;
import com.baidu.tts.client.model.Conditions;
import com.baidu.tts.client.model.DownloadHandler;
import com.baidu.tts.client.model.LibEngineParams;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.d.b;
import com.baidu.tts.database.d;
import com.baidu.tts.f.g;
import com.baidu.tts.l.a.i;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.MD5;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ModelMediator.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public Context f11233a;
    public com.baidu.tts.database.a b;
    public d c;
    public i d;
    public com.baidu.tts.d.d e;

    public a(Context context) {
        this.f11233a = context;
        g();
    }

    private void g() {
        this.b = new com.baidu.tts.database.a(this);
        this.c = new d(this);
        this.d = new i(this);
        com.baidu.tts.d.d dVar = new com.baidu.tts.d.d();
        this.e = dVar;
        dVar.a(this);
        this.e.a();
    }

    public BasicHandler<ModelBags> a(Conditions conditions) {
        return this.d.a(conditions);
    }

    public BasicHandler<ModelFileBags> b(Set<String> set) {
        return this.d.b(set);
    }

    public void c() {
        this.e.b();
    }

    public Context d() {
        return this.f11233a;
    }

    public com.baidu.tts.database.a e() {
        return this.b;
    }

    public Map<String, ArrayList> f() {
        return this.c.a();
    }

    public BasicHandler<ModelBags> a(Conditions conditions, boolean z) {
        return this.d.a(conditions, z);
    }

    public BasicHandler<ModelBags> b() {
        return this.d.b();
    }

    public void c(String str) {
        this.c.a(str);
    }

    public LibEngineParams a() {
        return this.d.a();
    }

    public boolean b(String str) {
        Map<String, String> e = this.b.e(str);
        if (DataTool.isMapEmpty(e)) {
            return false;
        }
        return a(e.get(g.TEXT_DATA_ID.b())) && a(e.get(g.SPEECH_DATA_ID.b()));
    }

    public String c(Set<String> set) {
        int i;
        JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        if (set == null || set.size() == 0 || set.isEmpty()) {
            return "params error";
        }
        try {
            Iterator<String> it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                Conditions conditions = new Conditions();
                conditions.appendId(next);
                ModelBags modelBags = a(conditions, false).get();
                JSONArray json = modelBags.toJson();
                if (!modelBags.isEmpty()) {
                    jSONArray2.put(json.get(0));
                } else {
                    JSONObject jSONObject = new JSONObject();
                    if (Pattern.compile("^[0-9]+$").matcher(next).find()) {
                        jSONObject.put("id", Integer.valueOf(next));
                        jSONObject.put("needUpdate", 2);
                        jSONArray.put(jSONObject);
                    } else {
                        LoggerProxy.e("GetServerModelsWork", "params error id " + next + " is not int");
                    }
                }
            }
            if (jSONArray2.length() != 0) {
                String str = this.d.a(jSONArray2).get();
                if (!str.equals("")) {
                    JSONArray jSONArray3 = new JSONArray(str);
                    for (i = 0; i < jSONArray3.length(); i++) {
                        jSONArray.put(jSONArray3.get(i));
                    }
                } else {
                    LoggerProxy.d("GetServerModelsWork", "servers return result is empty");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONArray.toString();
    }

    public BasicHandler<ModelFileBags> a(Set<String> set) {
        return this.d.a(set);
    }

    public String a(String str, String str2) {
        return this.b.a(str, str2);
    }

    public boolean a(String str) {
        Map<String, String> d = this.b.d(str);
        if (DataTool.isMapEmpty(d)) {
            return false;
        }
        String str2 = d.get(g.LENGTH.b());
        String str3 = d.get(g.MD5.b());
        File file = new File(d.get(g.ABS_PATH.b()));
        return file.exists() && file.length() == Long.parseLong(str2) && MD5.getInstance().getBigFileMd5(file).equalsIgnoreCase(str3);
    }

    public DownloadHandler a(b bVar) {
        return this.e.a(bVar);
    }

    public void a(String str, String str2, String str3) {
        this.c.a(str, str2, str3);
    }

    public int a(int i, int i2) {
        return this.c.a(i, i2);
    }
}
