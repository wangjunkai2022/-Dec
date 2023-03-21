package com.tr.comment.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import com.apk.ab0;
import com.apk.bb0;
import com.apk.ca0;
import com.apk.fa0;
import com.apk.ha0;
import com.apk.ia0;
import com.apk.ja0;
import com.apk.k40;
import com.apk.ka0;
import com.apk.kb0;
import com.apk.lv;
import com.apk.mb0;
import com.apk.n80;
import com.apk.nb0;
import com.apk.q80;
import com.apk.sb0;
import com.apk.wb0;
import com.apk.xw;
import com.apk.yv;
import com.apk.zu;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.app.AppContext;
import com.lxj.xpopup.core.BasePopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.tr.comment.sdk.activity.TrCommentActivity;
import com.tr.comment.sdk.bean.TrChapterCount;
import com.tr.comment.sdk.bean.TrSortType;
import com.tr.comment.sdk.bean.TrSourceType;
import com.tr.comment.sdk.commons.widget.TrIdeaPopupView;
import com.tr.comment.sdk.view.TrCommentView;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes7.dex */
public class TrCommentSdk {

    /* renamed from: com.tr.comment.sdk.TrCommentSdk$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo extends yv {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ TrIdeaPopupView f10334do;

        public Cdo(TrIdeaPopupView trIdeaPopupView) {
            this.f10334do = trIdeaPopupView;
        }

        @Override // com.apk.yv
        /* renamed from: do */
        public boolean mo3121do(BasePopupView basePopupView) {
            TrCommentView trCommentView = this.f10334do.f10361goto;
            return trCommentView != null ? trCommentView.m3715catch(false) : false;
        }
    }

    /* renamed from: com.tr.comment.sdk.TrCommentSdk$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cif extends ab0<Object> {
        @Override // com.apk.ab0
        /* renamed from: do */
        public Object mo39do() {
            mb0 mb0Var = (mb0) sb0.m2408do();
            SharedPreferences.Editor editor = mb0Var.f3001if;
            if (editor != null) {
                editor.remove("SP_SDK_REQUEST_TOKEN_KEY");
            }
            mb0Var.m1689do();
            ja0.m1301goto();
            return null;
        }
    }

    public static void clearIdeaCountDatas() {
        wb0<String, List<TrChapterCount>> wb0Var = ca0.m320do().f551do;
        if (wb0Var != null) {
            wb0Var.clear();
        }
    }

    public static Context getAppContext() {
        if (fa0.f1264do != null) {
            return AppContext.f6392case;
        }
        return null;
    }

    public static int getIdeaCountParagraph(String str, String str2, int i) {
        ca0 m320do = ca0.m320do();
        if (m320do.f551do != null) {
            List<TrChapterCount> list = m320do.f551do.get(ca0.m321if(str, str2));
            if (list != null && list.size() > 0) {
                for (TrChapterCount trChapterCount : list) {
                    if (i == trChapterCount.getIndex()) {
                        return trChapterCount.getCount();
                    }
                }
            }
        }
        return 0;
    }

    public static void getRequestComment(TrSourceType trSourceType, String str, int i, q80 q80Var) {
        getRequestComment(trSourceType, str, SpeechSynthesizer.REQUEST_DNS_OFF, i, q80Var);
    }

    public static JSONObject getRequestCommentSync(TrSourceType trSourceType, String str, int i) {
        return getRequestCommentSync(trSourceType, str, SpeechSynthesizer.REQUEST_DNS_OFF, i);
    }

    public static void getRequestUrl(String str, q80 q80Var) {
        ja0.m1304try(str, 0L, xw.NO_CACHE, q80Var);
    }

    public static JSONObject getRequestUrlSync(String str) {
        return ja0.m1300for(str, 0L, xw.NO_CACHE);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void init(com.apk.m80 r6) {
        /*
            if (r6 != 0) goto L3
            return
        L3:
            com.biquge.ebook.app.app.AppContext r0 = com.biquge.ebook.app.app.AppContext.f6392case
            r1 = 0
            com.apk.tw r2 = com.apk.tw.Cif.f4772do     // Catch: java.lang.Exception -> L14
            if (r2 == 0) goto L14
            com.apk.tw r2 = com.apk.tw.Cif.f4772do     // Catch: java.lang.Exception -> L14
            android.content.Context r2 = r2.getContext()     // Catch: java.lang.Exception -> L14
            if (r2 == 0) goto L14
            r2 = 1
            goto L15
        L14:
            r2 = 0
        L15:
            if (r2 != 0) goto L51
            com.apk.xg0$do r2 = new com.apk.xg0$do
            r2.<init>()
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            r4 = 10000(0x2710, double:4.9407E-320)
            r2.m2994if(r4, r3)
            r2.m2995new(r4, r3)
            r2.m2992do(r4, r3)
            com.apk.px r3 = new com.apk.px
            com.apk.sx r4 = new com.apk.sx
            r4.<init>(r0)
            r3.<init>(r4)
            java.lang.String r4 = "cookieJar"
            com.apk.nd0.m1875new(r3, r4)
            r2.f5573break = r3
            com.apk.tw r3 = com.apk.tw.Cif.f4772do
            r3.f4766do = r0
            com.apk.xg0 r0 = new com.apk.xg0
            r0.<init>(r2)
            r3.f4768for = r0
            com.apk.xw r0 = com.apk.xw.NO_CACHE
            r3.f4765case = r0
            r4 = -1
            r3.m2623if(r4)
            r3.m2622for(r1)
        L51:
            com.apk.fa0.f1264do = r6
            com.apk.bb0 r6 = new com.apk.bb0
            r6.<init>()
            com.apk.ea0 r0 = new com.apk.ea0
            r0.<init>()
            r6.m166do(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tr.comment.sdk.TrCommentSdk.init(com.apk.m80):void");
    }

    public static void loadIdeaCount(String str, String str2, n80 n80Var) {
        loadIdeaCount(null, str, str2, n80Var);
    }

    public static void openCommentActivity(Context context, String str, String str2) {
        openCommentActivity(context, null, str, str2);
    }

    public static void openIdeaDialog(FragmentActivity fragmentActivity, String str, String str2, String str3, int i) {
        openIdeaDialog(fragmentActivity, null, str, str2, str3, i);
    }

    public static void postRequestUrl(String str, HashMap<String, String> hashMap, HashMap<String, String> hashMap2, String str2, q80 q80Var) {
        try {
            ja0.m1297case(str, hashMap2, !TextUtils.isEmpty(str2) ? new JSONObject(str2) : null, new ka0(q80Var));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static JSONObject postRequestUrlSync(String str, HashMap<String, String> hashMap, HashMap<String, String> hashMap2, String str2) {
        try {
            return ja0.m1303new(str, hashMap2, !TextUtils.isEmpty(str2) ? new JSONObject(str2) : null);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void resetToken() {
        new bb0().m166do(new Cif());
    }

    public static void setCommentHost(String str, String str2, String str3) {
        fa0.f1266if = str;
        fa0.f1265for = str2;
        fa0.f1267new = str3;
    }

    public static void setGender(boolean z) {
        SharedPreferences sharedPreferences = ((mb0) sb0.m2408do()).f3000do;
        if (sharedPreferences != null ? sharedPreferences.contains("SP_USERFACE_TAG_KEY") : false) {
            return;
        }
        if (z) {
            nb0 m2408do = sb0.m2408do();
            ha0.m1107for();
            mb0 mb0Var = (mb0) m2408do;
            SharedPreferences.Editor editor = mb0Var.f3001if;
            if (editor != null) {
                editor.putString("SP_USERFACE_TAG_KEY", "face_man_1");
            }
            mb0Var.m1689do();
            return;
        }
        nb0 m2408do2 = sb0.m2408do();
        ha0.m1108if();
        mb0 mb0Var2 = (mb0) m2408do2;
        SharedPreferences.Editor editor2 = mb0Var2.f3001if;
        if (editor2 != null) {
            editor2.putString("SP_USERFACE_TAG_KEY", "face_lady_2");
        }
        mb0Var2.m1689do();
    }

    public static void setOpenLog(boolean z) {
        fa0.f1268try = z;
    }

    public static void submitComment(Context context, TrSourceType trSourceType, String str, String str2, q80 q80Var) {
        submitComment(context, trSourceType, str, SpeechSynthesizer.REQUEST_DNS_OFF, str2, q80Var);
    }

    public static void getRequestComment(TrSourceType trSourceType, String str, String str2, int i, q80 q80Var) {
        getRequestComment(trSourceType, str, str2, -1, i, TrSortType.HOT, q80Var);
    }

    public static JSONObject getRequestCommentSync(TrSourceType trSourceType, String str, String str2, int i) {
        return getRequestCommentSync(trSourceType, str, str2, -1, i, TrSortType.HOT);
    }

    public static void loadIdeaCount(TrSourceType trSourceType, String str, String str2, n80 n80Var) {
        ca0 m320do = ca0.m320do();
        String m762for = fa0.m762for(trSourceType);
        if (m320do != null) {
            String m321if = ca0.m321if(str, str2);
            wb0<String, List<TrChapterCount>> wb0Var = m320do.f551do;
            if (wb0Var != null && wb0Var.containsKey(m321if)) {
                if (n80Var != null) {
                    n80Var.m1849do(str, str2, m320do.f551do.get(m321if));
                    return;
                }
                return;
            }
            wb0<String, String> wb0Var2 = m320do.f552if;
            if (wb0Var2 != null && wb0Var2.size() > 0) {
                if (m320do.f552if.containsKey(m321if)) {
                    return;
                }
                m320do.f552if.put(m321if, str);
            }
            new ca0.Cif(m762for, str, str2, n80Var, m320do.f551do, m320do.f552if, null).m166do(null);
            return;
        }
        throw null;
    }

    public static void openCommentActivity(Context context, TrSourceType trSourceType, String str, String str2) {
        TrCommentActivity.i(context, trSourceType, str, str2);
    }

    public static void openIdeaDialog(FragmentActivity fragmentActivity, TrSourceType trSourceType, String str, String str2, String str3, int i) {
        openIdeaDialog(fragmentActivity, trSourceType, null, str, str2, str3, i);
    }

    public static void submitComment(Context context, TrSourceType trSourceType, String str, String str2, String str3, q80 q80Var) {
        submitComment(context, trSourceType, str, str2, -1, str3, q80Var);
    }

    public static void getRequestComment(TrSourceType trSourceType, String str, String str2, int i, int i2, TrSortType trSortType, q80 q80Var) {
        ja0.m1304try(ja0.m1302if(trSourceType, str, str2, i, i2, trSortType), 0L, xw.NO_CACHE, q80Var);
    }

    public static JSONObject getRequestCommentSync(TrSourceType trSourceType, String str, String str2, int i, int i2, TrSortType trSortType) {
        return ja0.m1300for(ja0.m1302if(trSourceType, str, str2, i, i2, trSortType), 0L, xw.NO_CACHE);
    }

    public static void openIdeaDialog(FragmentActivity fragmentActivity, TrSourceType trSourceType, TrSortType trSortType, String str, String str2, String str3, int i) {
        TrIdeaPopupView trIdeaPopupView = new TrIdeaPopupView(fragmentActivity, trSourceType, trSortType, str, getIdeaCountParagraph(str2, str3, i), str2, str3, i);
        lv lvVar = new lv();
        lvVar.f2927import = Boolean.FALSE;
        lvVar.f2941throw = new Cdo(trIdeaPopupView);
        if (trIdeaPopupView instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else {
            lvVar.f2917continue = zu.f6266try;
        }
        trIdeaPopupView.popupInfo = lvVar;
        trIdeaPopupView.show();
    }

    public static void submitComment(Context context, TrSourceType trSourceType, String str, String str2, int i, String str3, q80 q80Var) {
        String str4 = SpeechSynthesizer.REQUEST_DNS_OFF;
        if (context == null || fa0.m754catch(context)) {
            if (i != -1) {
                str2 = str2 + "_" + i;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("userIn", trSourceType.toString());
                jSONObject2.put("userId", fa0.m775throws());
                jSONObject2.put("userName", fa0.m757default());
                jSONObject2.put("userFace", fa0.m772switch());
                jSONObject2.put("equipment", fa0.m774throw());
                jSONObject2.put("parentId", SpeechSynthesizer.REQUEST_DNS_OFF);
                jSONObject2.put("bookId", str);
                if (!TextUtils.isEmpty(str2)) {
                    str4 = str2;
                }
                jSONObject2.put("chapterId", str4);
                jSONObject2.put("content", str3);
                jSONObject.put("sign", k40.m1452import(kb0.m1470do(jSONObject2)));
            } catch (Exception e) {
                e.printStackTrace();
            }
            ja0.m1297case(fa0.m769return(), null, jSONObject, new ia0(q80Var));
        }
    }
}
