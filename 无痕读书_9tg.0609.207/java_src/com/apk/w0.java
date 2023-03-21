package com.apk;

import android.app.Activity;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.apk.zu;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.InitConfNews;
import com.biquge.ebook.app.ui.activity.FeedBackActivity;
import com.biquge.ebook.app.widget.LieBianBottomShareDlg;
import com.hjq.toast.ToastUtils;
import com.jni.crypt.project.CryptDesManager;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.impl.LoadingPopupView;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.widget.barrage.BarrageDataUtils;
import com.tencent.bugly.Bugly;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.LitePal;
import org.litepal.parser.LitePalParser;
/* compiled from: WebInfoHelper.java */
/* loaded from: classes8.dex */
public class w0 {

    /* renamed from: do  reason: not valid java name */
    public static LoadingPopupView f5213do;

    /* compiled from: WebInfoHelper.java */
    /* renamed from: com.apk.w0$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements vu {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ g1 f5214do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ Activity f5215if;

        public Cdo(g1 g1Var, Activity activity) {
            this.f5214do = g1Var;
            this.f5215if = activity;
        }

        @Override // com.apk.vu
        /* renamed from: do */
        public void mo412do(List<String> list, boolean z) {
            g1 g1Var;
            if (!eg.m598goto("registerPermissionsTagKey") && (g1Var = this.f5214do) != null) {
                g1Var.onData(null);
            }
            p0.m2011super("registerPermissionsTagKey", "");
        }

        @Override // com.apk.vu
        /* renamed from: if */
        public void mo413if(List<String> list, boolean z) {
            g1 g1Var;
            if (!eg.m598goto("registerPermissionsTagKey") && (g1Var = this.f5214do) != null) {
                g1Var.onData(null);
            }
            p0.m2011super("registerPermissionsTagKey", "");
        }
    }

    /* compiled from: WebInfoHelper.java */
    /* renamed from: com.apk.w0$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor extends c1<Bitmap> {

        /* renamed from: case  reason: not valid java name */
        public final /* synthetic */ int f5216case;

        /* renamed from: do  reason: not valid java name */
        public File f5217do = null;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ ImageView f5218for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f5219if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ Activity f5220new;

        /* renamed from: try  reason: not valid java name */
        public final /* synthetic */ View f5221try;

        public Cfor(String str, ImageView imageView, Activity activity, View view, int i) {
            this.f5219if = str;
            this.f5218for = imageView;
            this.f5220new = activity;
            this.f5221try = view;
            this.f5216case = i;
        }

        @Override // com.apk.c1
        public Bitmap doInBackground() {
            try {
                File file = new File(a6.m18else().m25try(), "novel.jpg");
                this.f5217do = file;
                if (file.exists()) {
                    this.f5217do.delete();
                }
                return jg.m1311do(w.m2840class(this.f5219if));
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // com.apk.c1
        public void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            super.onPostExecute(bitmap2);
            if (bitmap2 != null) {
                this.f5218for.setImageBitmap(bitmap2);
            }
            Activity activity = this.f5220new;
            View view = this.f5221try;
            int i = this.f5216case;
            new b1().m141do(new z0(view, this.f5217do, i, activity));
        }
    }

    /* compiled from: WebInfoHelper.java */
    /* renamed from: com.apk.w0$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif implements LieBianBottomShareDlg.Cif {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Activity f5222do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ View f5223if;

        public Cif(Activity activity, View view) {
            this.f5222do = activity;
            this.f5223if = view;
        }
    }

    /* renamed from: abstract  reason: not valid java name */
    public static void m2865abstract(String str) {
        tt.f4763do.putString("CACHE_NOVEL_TIPS_TXT_KEY", str);
    }

    /* renamed from: break  reason: not valid java name */
    public static long m2866break() {
        try {
            String m2620do = tt.m2620do("SP_INSTALL_APP_DATE_KEY_TWO", "");
            if (!TextUtils.isEmpty(m2620do)) {
                return Long.parseLong(m2620do);
            }
        } catch (Exception unused) {
        }
        long currentTimeMillis = System.currentTimeMillis();
        tt.f4763do.putString("SP_INSTALL_APP_DATE_KEY_TWO", currentTimeMillis + "");
        return currentTimeMillis;
    }

    /* renamed from: case  reason: not valid java name */
    public static void m2867case(Context context, hf hfVar, String str) {
        if (!ze.m3179private("FEEDBACK_NATIVE_FEEDBACK_KEY", true)) {
            m2877finally(context, "", str);
        } else {
            FeedBackActivity.i(context, hfVar, FeedBackActivity.f6632new[2], "");
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public static int m2868catch() {
        return ze.m3174instanceof("SP_NEW_SHARE_LINK_SIZE", 0);
    }

    /* renamed from: class  reason: not valid java name */
    public static String m2869class() {
        return tt.m2620do("SP_NEW_SHARE_USER_COUPONID", "");
    }

    /* renamed from: const  reason: not valid java name */
    public static String m2870const() {
        return tt.m2620do("SP_SERVICE_CUR_TIME_KEY", "");
    }

    /* renamed from: continue  reason: not valid java name */
    public static void m2871continue(String str) {
        String str2;
        try {
            String m1498if = kg.m1498if();
            String m2620do = tt.m2620do(str, "");
            if (TextUtils.isEmpty(m2620do)) {
                str2 = m1498if + ",1";
            } else {
                String[] split = m2620do.split(",");
                if (m1498if.equals(split[0])) {
                    int parseInt = Integer.parseInt(split[1]);
                    str2 = m1498if + "," + (parseInt + 1);
                } else {
                    str2 = m1498if + ",1";
                }
            }
            tt.f4763do.putString(str, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: default  reason: not valid java name */
    public static boolean m2872default() {
        return ze.m3179private("SP_SPLASH_AD_FULL_KEY", true);
    }

    /* renamed from: do  reason: not valid java name */
    public static void m2873do(Activity activity, View view, int i) {
        ImageView imageView = (ImageView) view.findViewById(R.id.share_detail_qrcode_iv);
        String m2869class = m2869class();
        if (!TextUtils.isEmpty(m2869class)) {
            m2878for(activity, view, i, imageView, m2869class);
            return;
        }
        m2887protected(activity);
        new b1().m141do(new y0(activity, view, i, imageView));
    }

    /* renamed from: else  reason: not valid java name */
    public static void m2874else(Context context, hf hfVar, String str) {
        if (!ze.m3179private("FEEDBACK_NATIVE_FEEDBACK_KEY", true)) {
            m2877finally(context, "", str);
        } else {
            FeedBackActivity.i(context, hfVar, FeedBackActivity.f6632new[4], str);
        }
    }

    /* renamed from: extends  reason: not valid java name */
    public static void m2875extends(Activity activity, g1 g1Var, boolean z) {
        if (z) {
            if (g1Var != null) {
                g1Var.onData(null);
                return;
            }
            return;
        }
        p0.m2013throw("registerPermissionsTagKey");
        yu yuVar = new yu(activity);
        yuVar.m3120if(wu.f5403do);
        yuVar.m3120if("android.permission.ACCESS_FINE_LOCATION");
        yuVar.m3120if("android.permission.READ_PHONE_STATE");
        yuVar.m3119for(new Cdo(g1Var, activity));
    }

    /* renamed from: final  reason: not valid java name */
    public static int m2876final(String str) {
        try {
            String m2620do = tt.m2620do(str, "");
            if (!TextUtils.isEmpty(m2620do)) {
                String m1498if = kg.m1498if();
                String[] split = m2620do.split(",");
                if (m1498if.equals(split[0])) {
                    return Integer.parseInt(split[1]);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    /* renamed from: finally  reason: not valid java name */
    public static void m2877finally(Context context, String str, String str2) {
        String email = Ccontinue.m379if().m384new().getEmail();
        if (TextUtils.isEmpty(email)) {
            email = "xiangwangxing888@gmail.com";
        }
        StringBuilder m1025while = Cgoto.m1025while(str, "[");
        m1025while.append(ze.m3162continue(context));
        m1025while.append("/");
        m1025while.append(ze.m3168finally());
        m1025while.append("/");
        m1025while.append(ze.b());
        m1025while.append("/");
        m1025while.append(ze.c());
        m1025while.append("/");
        m1025while.append(ze.g());
        m1025while.append("/");
        m1025while.append(ze.m3166extends());
        m1025while.append("/");
        m1025while.append(ze.m());
        m1025while.append("]");
        String sb = m1025while.toString();
        try {
            Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("mailto:" + email));
            intent.putExtra("android.intent.extra.SUBJECT", sb);
            intent.putExtra("android.intent.extra.TEXT", str2);
            context.startActivity(Intent.createChooser(intent, "请选择邮件类应用"));
        } catch (Exception e) {
            e.printStackTrace();
            ToastUtils.show((int) R.string.share_start_email_txt);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static void m2878for(Activity activity, View view, int i, ImageView imageView, String str) {
        if (i == 3) {
            LoadingPopupView loadingPopupView = f5213do;
            if (loadingPopupView != null && loadingPopupView.isShow()) {
                f5213do.dismiss();
            }
            f5213do = null;
            if (Ccontinue.m379if().m384new() != null) {
                StringBuilder m1016super = Cgoto.m1016super(ze.q(R.string.authentication_share_tips).replace("{appname}", ze.m3166extends()));
                m1016super.append(w.m2840class(str));
                String sb = m1016super.toString();
                try {
                    ((ClipboardManager) activity.getSystemService("clipboard")).setText(sb);
                    Toast.makeText(activity, ze.q(R.string.share_send_friend_txt), 1).show();
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("text/plain");
                    intent.putExtra("android.intent.extra.TEXT", sb);
                    activity.startActivity(Intent.createChooser(intent, ze.q(R.string.main_to_share_txt)));
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            return;
        }
        m2887protected(activity);
        new b1().m141do(new Cfor(str, imageView, activity, view, i));
    }

    /* renamed from: goto  reason: not valid java name */
    public static String m2879goto() {
        return tt.m2620do("SP_FREE_AD_ENDTIME_KEY", "");
    }

    /* renamed from: if  reason: not valid java name */
    public static boolean m2880if() {
        for (InitConfNews initConfNews : LitePal.findAll(InitConfNews.class, new long[0])) {
            if (Bugly.SDK_IS_DEV.equals(initConfNews.getDelete()) && !initConfNews.isRead()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: import  reason: not valid java name */
    public static boolean m2881import() {
        return ze.m3179private("SP_BOOK_CITY_TYPE_MEN_KEY", true);
    }

    /* renamed from: interface  reason: not valid java name */
    public static void m2882interface(Activity activity, View view, Book book, ComicBean comicBean) {
        if (activity == null || view == null) {
            return;
        }
        ImageView imageView = (ImageView) view.findViewById(R.id.share_detail_icon);
        TextView textView = (TextView) view.findViewById(R.id.share_detail_title_tv);
        TextView textView2 = (TextView) view.findViewById(R.id.share_detail_desc_tv);
        if (book != null) {
            u.m2653public(book.getImg(), imageView);
            textView.setText(book.getName());
            textView2.setText(book.getDesc());
        } else if (comicBean != null) {
            u.m2650import(comicBean.getImg(), imageView);
            textView.setText(comicBean.getName());
            textView2.setText(comicBean.getDesc());
        } else {
            imageView.setVisibility(8);
            textView.setVisibility(8);
            textView2.setVisibility(8);
        }
        lv lvVar = new lv();
        LieBianBottomShareDlg lieBianBottomShareDlg = new LieBianBottomShareDlg(activity, new Cif(activity, view));
        if (lieBianBottomShareDlg instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else {
            lvVar.f2917continue = zu.f6266try;
        }
        lieBianBottomShareDlg.popupInfo = lvVar;
        lieBianBottomShareDlg.show();
    }

    /* renamed from: native  reason: not valid java name */
    public static boolean m2883native(String str) {
        if (ze.m3179private("SP_FILTER_FLAG_KEY", true)) {
            if (ze.m3179private("SP_FILTER_COMIC_EMPTY_KEY", false)) {
                return false;
            }
            long a2 = ze.a("SP_FILTER_COMIC_TIME_KEY" + str, 0L);
            if (a2 != 0 && Math.abs(kg.m1494do(a2, System.currentTimeMillis())) >= ze.m3174instanceof("SP_FILTER_AUTO_RESTORE_DAYS_KEY", 7)) {
                return false;
            }
        }
        String m2620do = tt.m2620do("SP_FILTER_BOOK_COMIC_KEY", "");
        if (TextUtils.isEmpty(m2620do)) {
            return false;
        }
        return m2620do.contains("," + str + ",");
    }

    /* renamed from: new  reason: not valid java name */
    public static String m2884new() {
        String str;
        HashMap m1007native = Cgoto.m1007native("action", "createcode");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sourceType", BarrageDataUtils.BARRAGE_OPTION_KEY_NOVEL.toLowerCase());
            jSONObject.put("platform", ze.h());
            jSONObject.put("packageName", ze.m3168finally());
            jSONObject.put(LitePalParser.NODE_VERSION, ze.m());
            jSONObject.put("channel", ze.m3156abstract());
            jSONObject.put("deviceno", eg.m613super());
            jSONObject.put("ts", kg.m1498if());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        m1007native.put("data", CryptDesManager.encodeContent(jSONObject.toString()));
        JSONObject m2953extends = x4.m2953extends(w.m2841const(), m1007native);
        if (m2953extends != null) {
            str = m2953extends.optString("data");
            if (!TextUtils.isEmpty(str)) {
                tt.f4763do.putString("SP_NEW_SHARE_USER_COUPONID", str);
            }
        } else {
            str = null;
        }
        return str == null ? "" : str;
    }

    /* renamed from: package  reason: not valid java name */
    public static void m2885package(String str) {
        tt.f4763do.putString("SP_FREE_AD_ENDTIME_KEY", str);
    }

    /* renamed from: private  reason: not valid java name */
    public static void m2886private(String str, String str2) {
        tt.f4763do.putBoolean(Cgoto.m989case("NOVEL_STATUS_KEY", str), "完结".equals(str2) || "完成".equals(str2));
    }

    /* renamed from: protected  reason: not valid java name */
    public static void m2887protected(Context context) {
        LoadingPopupView loadingPopupView = f5213do;
        if (loadingPopupView == null || !loadingPopupView.isShow()) {
            zu.Cdo cdo = new zu.Cdo(context);
            cdo.f6267do.f2924for = Boolean.FALSE;
            f5213do = (LoadingPopupView) cdo.m3248break(ze.q(R.string.save_img_in_txt)).show();
        }
    }

    /* renamed from: public  reason: not valid java name */
    public static boolean m2888public(String str) {
        if (ze.m3179private("SP_FILTER_FLAG_KEY", true)) {
            if (ze.m3179private("SP_FILTER_NOVEL_EMPTY_KEY", false)) {
                return false;
            }
            long a2 = ze.a("SP_FILTER_NOVEL_TIME_KEY" + str, 0L);
            if (a2 != 0 && Math.abs(kg.m1494do(a2, System.currentTimeMillis())) >= ze.m3174instanceof("SP_FILTER_AUTO_RESTORE_DAYS_KEY", 7)) {
                return false;
            }
        }
        String m2620do = tt.m2620do("SP_FILTER_BOOK_NOVEL_KEY", "");
        if (TextUtils.isEmpty(m2620do)) {
            return false;
        }
        return m2620do.contains("," + str + ",");
    }

    /* renamed from: return  reason: not valid java name */
    public static boolean m2889return(String str) {
        return ze.m3179private("NOVEL_STATUS_KEY" + str, false);
    }

    /* renamed from: static  reason: not valid java name */
    public static boolean m2890static() {
        return ze.m3179private("SP_OPEN_BARRAGE_FLAG_KEY", true);
    }

    /* renamed from: strictfp  reason: not valid java name */
    public static void m2891strictfp(int i) {
        if (i != m2895throw()) {
            tt.f4763do.putInt("SP_USER_BOOKSHELF_TAB_MODULE_KEY", i);
        }
    }

    /* renamed from: super  reason: not valid java name */
    public static int m2892super() {
        return ze.m3174instanceof("SPLASH_AD_SHOW_MAX_KEY", 0);
    }

    /* renamed from: switch  reason: not valid java name */
    public static boolean m2893switch() {
        return ze.m3179private("SP_OPEN_CHARLES_KEY", false);
    }

    /* renamed from: this  reason: not valid java name */
    public static long m2894this() {
        return Math.abs(System.currentTimeMillis() - m2866break());
    }

    /* renamed from: throw  reason: not valid java name */
    public static int m2895throw() {
        return ze.m3174instanceof("SP_USER_BOOKSHELF_TAB_MODULE_KEY", 0);
    }

    /* renamed from: throws  reason: not valid java name */
    public static boolean m2896throws() {
        return ze.m3179private("SP_OPEN_COMMENT_FLAG_KEY", true);
    }

    /* renamed from: try  reason: not valid java name */
    public static void m2897try(Context context, hf hfVar, String str) {
        if (!ze.m3179private("FEEDBACK_NATIVE_FEEDBACK_KEY", true)) {
            m2877finally(context, "", str);
        } else {
            FeedBackActivity.i(context, hfVar, FeedBackActivity.f6632new[0], str);
        }
    }

    /* renamed from: volatile  reason: not valid java name */
    public static void m2898volatile(boolean z) {
        tt.f4763do.putBoolean("SP_TOP_MSG_RED_TAG_KEY", z);
    }

    /* renamed from: while  reason: not valid java name */
    public static String m2899while() {
        return tt.m2620do("SP_TO_GUANWANG_REPLACE_KEY", "");
    }
}
