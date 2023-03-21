package com.apk;

import com.apk.bh0;
import com.apk.gy;
import com.apk.my;
import com.apk.tg0;
import com.apk.wg0;
import com.apk.zg0;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;

/* compiled from: BodyRequest.java */
/* loaded from: classes8.dex */
public abstract class my<T, R extends my> extends qy<T, R> {

    /* renamed from: import  reason: not valid java name */
    public boolean f3133import;

    /* renamed from: super  reason: not valid java name */
    public transient vg0 f3134super;

    /* renamed from: throw  reason: not valid java name */
    public String f3135throw;

    /* renamed from: while  reason: not valid java name */
    public boolean f3136while;

    public my(String str) {
        super(str);
        this.f3136while = false;
        this.f3133import = false;
    }

    /* renamed from: const  reason: not valid java name */
    public zg0.Cdo m1795const(bh0 bh0Var) {
        try {
            this.f3956break.m897for("Content-Length", String.valueOf(bh0Var.mo48do()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return mu.m1767for(new zg0.Cdo(), this.f3956break);
    }

    /* renamed from: final  reason: not valid java name */
    public R m1796final(JSONObject jSONObject) {
        this.f3135throw = jSONObject.toString();
        this.f3134super = gy.f1653for;
        return this;
    }

    @Override // com.apk.qy
    /* renamed from: goto  reason: not valid java name */
    public bh0 mo1797goto() {
        vg0 vg0Var;
        if (this.f3133import) {
            this.f3961do = mu.m1787throw(this.f3966if, this.f3968this.f1654do);
        }
        String str = this.f3135throw;
        if (str != null && (vg0Var = this.f3134super) != null) {
            bh0.Cdo cdo = bh0.f318do;
            nd0.m1875new(str, "content");
            return cdo.m176do(str, vg0Var);
        }
        gy gyVar = this.f3968this;
        boolean z = this.f3136while;
        if (gyVar.f1655if.isEmpty() && !z) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Iterator<String> it = gyVar.f1654do.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                for (String str2 : gyVar.f1654do.get(next)) {
                    nd0.m1875new(next, "name");
                    nd0.m1875new(str2, LitePalParser.ATTR_VALUE);
                    String str3 = next;
                    arrayList.add(tg0.Cif.m2600do(tg0.f4680catch, str3, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, false, null, 83));
                    ArrayList arrayList3 = arrayList2;
                    arrayList3.add(tg0.Cif.m2600do(tg0.f4680catch, str2, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, false, null, 83));
                    arrayList2 = arrayList3;
                    next = str3;
                }
            }
            return new pg0(arrayList, arrayList2);
        }
        String uuid = UUID.randomUUID().toString();
        nd0.m1872for(uuid, "UUID.randomUUID().toString()");
        nd0.m1875new(uuid, "boundary");
        uk0 m2717if = uk0.f4913try.m2717if(uuid);
        vg0 vg0Var2 = wg0.f5272else;
        ArrayList arrayList4 = new ArrayList();
        vg0 vg0Var3 = wg0.f5273goto;
        nd0.m1875new(vg0Var3, "type");
        if (nd0.m1870do(vg0Var3.f5079if, "multipart")) {
            if (!gyVar.f1654do.isEmpty()) {
                for (Map.Entry<String, List<String>> entry : gyVar.f1654do.entrySet()) {
                    for (String str4 : entry.getValue()) {
                        String key = entry.getKey();
                        nd0.m1875new(key, "name");
                        nd0.m1875new(str4, LitePalParser.ATTR_VALUE);
                        nd0.m1875new(key, "name");
                        nd0.m1875new(str4, LitePalParser.ATTR_VALUE);
                        wg0.Cif m2909do = wg0.Cif.m2909do(key, null, bh0.f318do.m176do(str4, null));
                        nd0.m1875new(m2909do, "part");
                        arrayList4.add(m2909do);
                    }
                }
            }
            for (Map.Entry<String, List<gy.Cdo>> entry2 : gyVar.f1655if.entrySet()) {
                for (gy.Cdo cdo2 : entry2.getValue()) {
                    vg0 vg0Var4 = cdo2.f1657for;
                    File file = cdo2.f1656do;
                    nd0.m1875new(file, "file");
                    nd0.m1875new(file, "$this$asRequestBody");
                    ah0 ah0Var = new ah0(file, vg0Var4);
                    String key2 = entry2.getKey();
                    String str5 = cdo2.f1658if;
                    nd0.m1875new(key2, "name");
                    nd0.m1875new(ah0Var, "body");
                    wg0.Cif m2909do2 = wg0.Cif.m2909do(key2, str5, ah0Var);
                    nd0.m1875new(m2909do2, "part");
                    arrayList4.add(m2909do2);
                }
            }
            if (!arrayList4.isEmpty()) {
                return new wg0(m2717if, vg0Var3, jh0.m1320continue(arrayList4));
            }
            throw new IllegalStateException("Multipart body must have at least one part.".toString());
        }
        throw new IllegalArgumentException(("multipart != " + vg0Var3).toString());
    }
}
