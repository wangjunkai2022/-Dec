package com.apk;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.tr.comment.sdk.bean.TrGgBean;
import com.tr.comment.sdk.ggs.view.TrAdViewBangDan;
import com.tr.comment.sdk.ggs.view.TrAdViewRectangle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;
/* compiled from: TrCommentGG.java */
/* loaded from: classes7.dex */
public class cb0 {

    /* renamed from: final  reason: not valid java name */
    public static cb0 f563final;

    /* renamed from: break  reason: not valid java name */
    public int f564break;

    /* renamed from: case  reason: not valid java name */
    public int f565case;

    /* renamed from: catch  reason: not valid java name */
    public TrAdViewBangDan f566catch;

    /* renamed from: class  reason: not valid java name */
    public Map<String, String> f567class;

    /* renamed from: const  reason: not valid java name */
    public TrAdViewRectangle f568const;

    /* renamed from: do  reason: not valid java name */
    public boolean f569do;

    /* renamed from: else  reason: not valid java name */
    public int f570else;

    /* renamed from: for  reason: not valid java name */
    public JSONObject f571for;

    /* renamed from: goto  reason: not valid java name */
    public int f572goto;

    /* renamed from: if  reason: not valid java name */
    public JSONObject f573if;

    /* renamed from: new  reason: not valid java name */
    public JSONObject f574new;

    /* renamed from: this  reason: not valid java name */
    public List<Integer> f575this;

    /* renamed from: try  reason: not valid java name */
    public JSONObject f576try;

    /* renamed from: case  reason: not valid java name */
    public static List<TrGgBean> m323case(JSONObject jSONObject) {
        JSONArray optJSONArray;
        ArrayList arrayList = null;
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray(LitePalParser.NODE_LIST)) != null) {
            arrayList = new ArrayList();
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                arrayList.add(new TrGgBean(optJSONObject.optString("adpt"), optJSONObject.optString("adid")));
            }
        }
        return arrayList;
    }

    /* renamed from: do  reason: not valid java name */
    public static long m324do(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optLong("Interval", 0L) * 1000;
        }
        return 0L;
    }

    /* renamed from: else  reason: not valid java name */
    public static cb0 m325else() {
        if (f563final == null) {
            synchronized (cb0.class) {
                if (f563final == null) {
                    f563final = new cb0();
                }
            }
        }
        return f563final;
    }

    /* renamed from: try  reason: not valid java name */
    public static boolean m326try(JSONObject jSONObject) {
        return jSONObject != null && "1".equals(jSONObject.optString("close"));
    }

    /* renamed from: for  reason: not valid java name */
    public final void m327for(ViewGroup viewGroup, View view) {
        if (view != null) {
            if (viewGroup != null && viewGroup.getChildCount() > 0) {
                viewGroup.removeAllViews();
            }
            ViewGroup viewGroup2 = (ViewGroup) view.getParent();
            if (viewGroup2 != null && viewGroup2.getChildCount() > 0) {
                viewGroup2.removeAllViews();
            }
            viewGroup.addView(view);
        }
    }

    /* renamed from: if  reason: not valid java name */
    public TrAdViewBangDan m328if(Activity activity, int i) {
        String m1003implements = Cgoto.m1003implements("bangdan_", i);
        if (this.f567class == null) {
            this.f567class = new HashMap();
        }
        if (this.f567class.containsKey(m1003implements)) {
            return this.f566catch;
        }
        this.f567class.put(m1003implements, m1003implements);
        TrAdViewBangDan trAdViewBangDan = this.f566catch;
        if (trAdViewBangDan == null) {
            TrAdViewBangDan trAdViewBangDan2 = new TrAdViewBangDan(activity, null);
            this.f566catch = trAdViewBangDan2;
            trAdViewBangDan2.setLoadSuccessVisible(true);
            this.f566catch.setAutoRefresh(false);
            TrAdViewBangDan trAdViewBangDan3 = this.f566catch;
            JSONObject jSONObject = this.f574new;
            if (trAdViewBangDan3 == null) {
                throw null;
            }
            if (jSONObject != null) {
                trAdViewBangDan3.f10412if = activity;
                trAdViewBangDan3.f10410for = "pl_bangdan_ad";
                new bb0().m166do(new w90(trAdViewBangDan3, jSONObject));
            }
        } else {
            trAdViewBangDan.mo2788do();
        }
        return this.f566catch;
    }

    /* renamed from: new  reason: not valid java name */
    public TrAdViewRectangle m329new(Activity activity, int i) {
        String m1003implements = Cgoto.m1003implements("rect_", i);
        if (this.f567class == null) {
            this.f567class = new HashMap();
        }
        if (this.f567class.containsKey(m1003implements)) {
            return this.f568const;
        }
        this.f567class.put(m1003implements, m1003implements);
        TrAdViewRectangle trAdViewRectangle = this.f568const;
        if (trAdViewRectangle == null) {
            TrAdViewRectangle trAdViewRectangle2 = new TrAdViewRectangle(activity, null);
            this.f568const = trAdViewRectangle2;
            trAdViewRectangle2.setLoadSuccessVisible(true);
            this.f568const.setAutoRefresh(false);
            TrAdViewRectangle trAdViewRectangle3 = this.f568const;
            JSONObject jSONObject = this.f576try;
            if (trAdViewRectangle3 == null) {
                throw null;
            }
            if (jSONObject != null) {
                if (trAdViewRectangle3.f10430case) {
                    trAdViewRectangle3.setVisibility(8);
                }
                trAdViewRectangle3.f10435if = activity;
                trAdViewRectangle3.f10433for = "pl_rect_ad";
                new bb0().m166do(new aa0(trAdViewRectangle3, jSONObject));
            }
        } else {
            trAdViewRectangle.mo2788do();
        }
        return this.f568const;
    }
}
