package com.apk;

import com.tr.comment.sdk.bean.TrChapterCount;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: TrChapterCountManager.java */
/* loaded from: classes7.dex */
public class ca0 {

    /* renamed from: for  reason: not valid java name */
    public static ca0 f550for;

    /* renamed from: do  reason: not valid java name */
    public final wb0<String, List<TrChapterCount>> f551do = new wb0<>();

    /* renamed from: if  reason: not valid java name */
    public final wb0<String, String> f552if = new wb0<>();

    /* compiled from: TrChapterCountManager.java */
    /* renamed from: com.apk.ca0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cif extends bb0<List<TrChapterCount>> {

        /* renamed from: case  reason: not valid java name */
        public final wb0<String, List<TrChapterCount>> f553case;

        /* renamed from: else  reason: not valid java name */
        public final wb0<String, String> f554else;

        /* renamed from: for  reason: not valid java name */
        public final String f555for;

        /* renamed from: if  reason: not valid java name */
        public final String f556if;

        /* renamed from: new  reason: not valid java name */
        public final String f557new;

        /* renamed from: try  reason: not valid java name */
        public final n80 f558try;

        public Cif(String str, String str2, String str3, n80 n80Var, wb0 wb0Var, wb0 wb0Var2, Cdo cdo) {
            this.f556if = str;
            this.f555for = str2;
            this.f557new = str3;
            this.f558try = n80Var;
            this.f553case = wb0Var;
            this.f554else = wb0Var2;
        }

        @Override // com.apk.bb0, android.os.AsyncTask
        public /* bridge */ /* synthetic */ Object doInBackground(Void[] voidArr) {
            return m322for();
        }

        /* renamed from: for  reason: not valid java name */
        public List m322for() {
            JSONArray optJSONArray;
            String str = this.f556if;
            String str2 = this.f555for;
            String str3 = this.f557new;
            StringBuilder sb = new StringBuilder();
            sb.append(fa0.m777while());
            sb.append("/commentservice/Comment/");
            sb.append(str);
            sb.append("/");
            sb.append(str2);
            String m998final = Cgoto.m998final(sb, "/", str3, "/Count.html");
            long m768public = fa0.m768public();
            JSONObject m1300for = ja0.m1300for(m998final, m768public, m768public > 0 ? xw.ALWAYS_FIRST_CACHE_THEN_REQUEST : xw.NO_CACHE);
            if (m1300for != null) {
                ArrayList arrayList = new ArrayList();
                JSONObject optJSONObject = m1300for.optJSONObject("Data");
                if (optJSONObject == null || (optJSONArray = optJSONObject.optJSONArray("List")) == null || optJSONArray.length() <= 0) {
                    return arrayList;
                }
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                    if (optJSONObject2 != null) {
                        arrayList.add(new TrChapterCount(optJSONObject2.optInt("Index"), optJSONObject2.optInt("Count")));
                    }
                }
                return arrayList;
            }
            return null;
        }

        @Override // com.apk.bb0
        /* renamed from: if */
        public /* bridge */ /* synthetic */ List<TrChapterCount> mo167if(Void[] voidArr) {
            return m322for();
        }

        @Override // com.apk.bb0, android.os.AsyncTask
        public void onPostExecute(Object obj) {
            List<TrChapterCount> list = (List) obj;
            super.onPostExecute(list);
            n80 n80Var = this.f558try;
            if (n80Var != null) {
                n80Var.m1849do(this.f555for, this.f557new, list);
            }
            String m321if = ca0.m321if(this.f555for, this.f557new);
            if (list != null) {
                this.f553case.put(m321if, list);
            }
            wb0<String, String> wb0Var = this.f554else;
            if (wb0Var != null) {
                wb0Var.remove(m321if);
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static ca0 m320do() {
        if (f550for == null) {
            synchronized (ca0.class) {
                if (f550for == null) {
                    f550for = new ca0();
                }
            }
        }
        return f550for;
    }

    /* renamed from: if  reason: not valid java name */
    public static String m321if(String str, String str2) {
        return Cgoto.m996else(str, "&", str2);
    }
}
