package com.apk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Toast;
import com.hjq.toast.ToastUtils;
import com.swl.gg.ggs.SwlAdHelper;
import com.tr.comment.sdk.R$color;
import com.tr.comment.sdk.R$string;
import com.tr.comment.sdk.TrCommentSdk;
import com.tr.comment.sdk.bean.TrSourceType;
import com.tr.danmu.sdk.TrDanMuSdk;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* compiled from: TrCommentManager.java */
/* loaded from: classes7.dex */
public class fa0 {

    /* renamed from: do  reason: not valid java name */
    public static m80 f1264do;

    /* renamed from: for  reason: not valid java name */
    public static String f1265for;

    /* renamed from: if  reason: not valid java name */
    public static String f1266if;

    /* renamed from: new  reason: not valid java name */
    public static String f1267new;

    /* renamed from: try  reason: not valid java name */
    public static boolean f1268try;

    /* renamed from: break  reason: not valid java name */
    public static String m752break() {
        StringBuilder sb = new StringBuilder();
        SharedPreferences sharedPreferences = ((mb0) sb0.m2408do()).f3000do;
        return Cgoto.m991class(sb, sharedPreferences != null ? sharedPreferences.getString("SP_CLOUD_CONFIG_HOST_KEY", "https://pinglun2.chinadegi.com") : "https://pinglun2.chinadegi.com", "/sdkcloud/comment_conf.html");
    }

    /* renamed from: case  reason: not valid java name */
    public static void m753case(Activity activity) {
        if (activity == null || activity.getWindow() == null || activity.getWindow().getDecorView() == null || !m763goto(activity.getWindow().getDecorView().getRootView())) {
            return;
        }
        ((InputMethodManager) activity.getSystemService("input_method")).toggleSoftInput(2, 0);
    }

    /* renamed from: catch  reason: not valid java name */
    public static boolean m754catch(Context context) {
        if (f1264do == null || v0.m2736try().m2741const()) {
            return true;
        }
        ze.M(context);
        return false;
    }

    /* renamed from: class  reason: not valid java name */
    public static final String m755class() {
        return TrDanMuSdk.getHost("https://dmapp2.chinadegi.com");
    }

    /* renamed from: const  reason: not valid java name */
    public static void m756const(String str) {
        if (f1264do != null) {
            ToastUtils.show((CharSequence) str);
        } else {
            Toast.makeText(TrCommentSdk.getAppContext(), str, 0).show();
        }
    }

    /* renamed from: default  reason: not valid java name */
    public static String m757default() {
        String m1467while;
        m80 m80Var = f1264do;
        if (m80Var != null && !TextUtils.isEmpty(((x) m80Var).m2945do())) {
            m1467while = ((x) f1264do).m2945do();
        } else {
            m1467while = k40.m1467while(R$string.tr_sdk_tourists_txt);
        }
        return k40.m1458return(m1467while);
    }

    /* renamed from: do  reason: not valid java name */
    public static int m758do(Context context) {
        if (f1264do != null && ze.p(R.color.colorPrimaryDark) != 0) {
            if (((x) f1264do) != null) {
                return ze.p(R.color.colorPrimaryDark);
            }
            throw null;
        }
        return k40.m1451if(context, R$color.tr_sdk_comment_colorPrimary);
    }

    /* renamed from: else  reason: not valid java name */
    public static void m759else(Context context, String str, String str2) {
        if (f1264do != null) {
            if ("sysweb".equals(str)) {
                SwlAdHelper.openBrowser(context, str2, false);
            } else if (com.umeng.analytics.pro.ak.au.equals(str)) {
                SwlAdHelper.openBrowser(context, str2, true);
            } else if ("apk".equals(str)) {
                kf.m1482for(context, str2, "推荐");
            }
        }
    }

    /* renamed from: extends  reason: not valid java name */
    public static boolean m760extends() {
        if (f1264do != null) {
            return da.m438while();
        }
        return false;
    }

    /* renamed from: final  reason: not valid java name */
    public static String m761final() {
        if (f1264do == null || TextUtils.isEmpty("novel")) {
            return "test_api";
        }
        if (((x) f1264do) != null) {
            return "novel";
        }
        throw null;
    }

    /* renamed from: for  reason: not valid java name */
    public static String m762for(TrSourceType trSourceType) {
        TrSourceType trSourceType2;
        if (trSourceType != null) {
            return trSourceType.name();
        }
        if (f1264do != null && (trSourceType2 = TrSourceType.Novel) != null) {
            if (((x) f1264do) != null) {
                return trSourceType2.name();
            }
            throw null;
        }
        return TrSourceType.Novel.name();
    }

    /* renamed from: goto  reason: not valid java name */
    public static boolean m763goto(View view) {
        if (view == null) {
            return false;
        }
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        return ((float) (view.getBottom() - rect.bottom)) > view.getResources().getDisplayMetrics().density * 100.0f;
    }

    /* renamed from: if  reason: not valid java name */
    public static String m764if() {
        return m771super() + "/commentservice/comment/error/add";
    }

    /* renamed from: import  reason: not valid java name */
    public static String m765import() {
        String string;
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(f1266if)) {
            string = f1266if;
        } else {
            SharedPreferences sharedPreferences = ((mb0) sb0.m2408do()).f3000do;
            string = sharedPreferences != null ? sharedPreferences.getString("SP_GET_TOKEN_HOST_KEY", "https://pinglun2.chinadegi.com") : "https://pinglun2.chinadegi.com";
        }
        return Cgoto.m991class(sb, string, "/TokenService/Manage/GetToken");
    }

    /* renamed from: native  reason: not valid java name */
    public static String m766native() {
        return m771super() + "/commentservice/commend/add";
    }

    /* renamed from: new  reason: not valid java name */
    public static final String m767new(String str) {
        return m755class() + "/Api/Auth/GetToken/" + str;
    }

    /* renamed from: public  reason: not valid java name */
    public static long m768public() {
        return f1264do != null ? 180000L : 0L;
    }

    /* renamed from: return  reason: not valid java name */
    public static String m769return() {
        return m771super() + "/commentservice/comment/add";
    }

    /* renamed from: static  reason: not valid java name */
    public static String m770static() {
        SharedPreferences sharedPreferences = ((mb0) sb0.m2408do()).f3000do;
        return sharedPreferences != null ? sharedPreferences.getString("SP_SDK_REQUEST_TOKEN_KEY", "") : "";
    }

    /* renamed from: super  reason: not valid java name */
    public static String m771super() {
        if (!TextUtils.isEmpty(f1265for)) {
            return f1265for;
        }
        SharedPreferences sharedPreferences = ((mb0) sb0.m2408do()).f3000do;
        return sharedPreferences != null ? sharedPreferences.getString("SP_DYNAMIC_HOST_KEY", "https://pinglun2.chinadegi.com") : "https://pinglun2.chinadegi.com";
    }

    /* renamed from: switch  reason: not valid java name */
    public static String m772switch() {
        SharedPreferences sharedPreferences = ((mb0) sb0.m2408do()).f3000do;
        String string = sharedPreferences != null ? sharedPreferences.getString("SP_USERFACE_TAG_KEY", "") : "";
        if (TextUtils.isEmpty(string)) {
            List<ga0> list = ha0.f1823try;
            string = list.size() > 0 ? list.get(0).m955do() : "face_man_1";
            mb0 mb0Var = (mb0) sb0.m2408do();
            SharedPreferences.Editor editor = mb0Var.f3001if;
            if (editor != null) {
                editor.putString("SP_USERFACE_TAG_KEY", string);
            }
            mb0Var.m1689do();
        }
        return string;
    }

    /* renamed from: this  reason: not valid java name */
    public static final String m773this(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(m755class());
        sb.append("/Api/Barrage/");
        sb.append(str);
        sb.append("/");
        sb.append(str2);
        return Cgoto.m991class(sb, "/", str3);
    }

    /* renamed from: throw  reason: not valid java name */
    public static String m774throw() {
        if (f1264do != null && !TextUtils.isEmpty(eg.m613super())) {
            if (((x) f1264do) != null) {
                return eg.m613super();
            }
            throw null;
        }
        return System.currentTimeMillis() + "";
    }

    /* renamed from: throws  reason: not valid java name */
    public static String m775throws() {
        if (f1264do == null || TextUtils.isEmpty(v0.m2736try().m2746goto())) {
            return "";
        }
        if (((x) f1264do) != null) {
            return v0.m2736try().m2746goto();
        }
        throw null;
    }

    /* renamed from: try  reason: not valid java name */
    public static String m776try(String str, String str2, String str3, String str4, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(m777while());
        sb.append("/commentservice/comment/");
        sb.append(str);
        sb.append("/");
        sb.append(str2);
        Cgoto.m993continue(sb, "/", str3, "/", str4);
        sb.append("/");
        sb.append(i);
        sb.append(".html");
        return sb.toString();
    }

    /* renamed from: while  reason: not valid java name */
    public static String m777while() {
        if (!TextUtils.isEmpty(f1267new)) {
            return f1267new;
        }
        SharedPreferences sharedPreferences = ((mb0) sb0.m2408do()).f3000do;
        return sharedPreferences != null ? sharedPreferences.getString("SP_STATIC_HOST_KEY", "https://pinglun2.chinadegi.com") : "https://pinglun2.chinadegi.com";
    }
}
