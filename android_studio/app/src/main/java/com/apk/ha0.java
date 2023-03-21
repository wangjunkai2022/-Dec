package com.apk;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.LruCache;
import android.util.Xml;
import com.tr.comment.sdk.R$drawable;
import com.tr.comment.sdk.TrCommentSdk;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

/* compiled from: EmojiManager.java */
/* loaded from: classes7.dex */
public class ha0 {

    /* renamed from: do  reason: not valid java name */
    public static final Pattern f1818do;

    /* renamed from: else  reason: not valid java name */
    public static final Pattern f1819else;

    /* renamed from: new  reason: not valid java name */
    public static final LruCache<String, Bitmap> f1822new;

    /* renamed from: if  reason: not valid java name */
    public static final List<ga0> f1821if = new ArrayList();

    /* renamed from: for  reason: not valid java name */
    public static final Map<String, ga0> f1820for = new HashMap();

    /* renamed from: try  reason: not valid java name */
    public static final List<ga0> f1823try = new ArrayList();

    /* renamed from: case  reason: not valid java name */
    public static final Map<String, ga0> f1817case = new HashMap();

    /* compiled from: EmojiManager.java */
    /* renamed from: com.apk.ha0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo extends LruCache<String, Bitmap> {
        public Cdo(int i) {
            super(i);
        }

        @Override // android.util.LruCache
        public void entryRemoved(boolean z, String str, Bitmap bitmap, Bitmap bitmap2) {
            Bitmap bitmap3 = bitmap;
            if (bitmap3 != bitmap2) {
                bitmap3.recycle();
            }
        }
    }

    /* compiled from: EmojiManager.java */
    /* renamed from: com.apk.ha0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cif extends DefaultHandler {

        /* renamed from: do  reason: not valid java name */
        public Context f1824do;

        /* renamed from: if  reason: not valid java name */
        public String f1825if = "";

        public Cif(Cdo cdo) {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            if (str2.equals("Catalog")) {
                this.f1825if = attributes.getValue(str, "Title");
            } else if (str2.equals("Emoticon")) {
                String value = attributes.getValue(str, "Tag");
                String value2 = attributes.getValue(str, "File");
                Context context = this.f1824do;
                int i = 0;
                try {
                    i = context.getResources().getIdentifier(value2.contains(".") ? value2.substring(0, value2.indexOf(".")) : value2, "drawable", context.getPackageName());
                } catch (Exception e) {
                    e.printStackTrace();
                }
                ga0 ga0Var = new ga0(value, value2, i);
                if (this.f1825if.equals("emoji")) {
                    ha0.f1821if.add(ga0Var);
                    ha0.f1820for.put(ga0Var.f1539do, ga0Var);
                } else if (this.f1825if.equals("face")) {
                    ha0.f1823try.add(ga0Var);
                    ha0.f1817case.put(ga0Var.f1539do, ga0Var);
                }
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004a -> B:24:0x004d). Please submit an issue!!! */
    static {
        Context appContext = TrCommentSdk.getAppContext();
        InputStream inputStream = null;
        Cif cif = new Cif(null);
        cif.f1824do = appContext;
        try {
            try {
                try {
                    inputStream = appContext.getAssets().open("tr_sdk_comment_config.xml");
                    Xml.parse(inputStream, Xml.Encoding.UTF_8, cif);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                if (inputStream != null) {
                    inputStream.close();
                }
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        f1818do = Pattern.compile("\\[[^\\[]{1,10}\\]");
        f1819else = Pattern.compile("@.*?：");
        f1822new = new Cdo(1024);
    }

    /* renamed from: do  reason: not valid java name */
    public static int m1106do(String str) {
        try {
            Map<String, ga0> map = f1817case;
            if (map.size() > 0 && map.containsKey(str)) {
                ga0 ga0Var = map.get(str);
                if (ga0Var == null) {
                    ga0Var = f1823try.get(0);
                }
                if (ga0Var != null) {
                    return ga0Var.f1540for;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return R$drawable.tr_sdk_face_ac;
    }

    /* renamed from: for  reason: not valid java name */
    public static String m1107for() {
        return "face_man_1";
    }

    /* renamed from: if  reason: not valid java name */
    public static String m1108if() {
        return "face_lady_2";
    }
}
