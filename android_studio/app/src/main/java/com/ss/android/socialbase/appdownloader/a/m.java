package com.ss.android.socialbase.appdownloader.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.umeng.analytics.pro.ak;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes7.dex */
public class m extends a {
    public m(Context context, com.ss.android.socialbase.downloader.g.a aVar, String str) {
        super(context, aVar, str);
    }

    public static String a(Map<String, String> map) {
        if (map == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            stringBuffer.append(entry.getKey());
            stringBuffer.append("=");
            stringBuffer.append(URLEncoder.encode(entry.getValue()));
            stringBuffer.append("&");
        }
        String stringBuffer2 = stringBuffer.toString();
        return stringBuffer2.endsWith("&") ? stringBuffer2.substring(0, stringBuffer2.length() - 1) : stringBuffer2;
    }

    @Override // com.ss.android.socialbase.appdownloader.a.e
    public Intent b() {
        String c = this.b.c(ak.aB);
        String a2 = com.ss.android.socialbase.appdownloader.f.c.a(this.b.c("bb"), c);
        if (!TextUtils.isEmpty(a2) && a2.split(",").length == 2) {
            String a3 = com.ss.android.socialbase.appdownloader.f.c.a(this.b.c("bc"), c);
            if (!TextUtils.isEmpty(a3) && a3.split(",").length == 2) {
                String[] split = a2.split(",");
                String[] split2 = a3.split(",");
                String a4 = com.ss.android.socialbase.appdownloader.f.c.a(this.b.c("bd"), c);
                String a5 = com.ss.android.socialbase.appdownloader.f.c.a(this.b.c("be"), c);
                String a6 = com.ss.android.socialbase.appdownloader.f.c.a(this.b.c("bf"), c);
                HashMap hashMap = new HashMap();
                hashMap.put(split[0], split[1]);
                hashMap.put(split2[0], split2[1]);
                hashMap.put(a4, this.c);
                Intent intent = new Intent();
                intent.setAction(a6);
                StringBuilder m1016super = Cgoto.m1016super(a5);
                m1016super.append(a(hashMap));
                intent.setData(Uri.parse(m1016super.toString()));
                intent.addFlags(268468224);
                return intent;
            }
        }
        return null;
    }
}
