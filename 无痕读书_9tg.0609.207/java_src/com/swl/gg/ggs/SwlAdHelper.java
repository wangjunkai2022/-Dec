package com.swl.gg.ggs;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.apk.dg;
import com.apk.f80;
import com.apk.k40;
import com.apk.kf;
import com.apk.n2;
import com.apk.r40;
import com.apk.y;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.RedBgImageBean;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.activity.BookListDetailActivity;
import com.biquge.ebook.app.ui.activity.WebViewActivity;
import com.swl.gg.bean.SwlAdView;
import java.util.List;
/* loaded from: classes7.dex */
public class SwlAdHelper {
    public static f80<String, List<SwlAdView>> cacheAds;

    public static boolean checkGoBookDetailOrActivity(Context context, SwlAdView swlAdView) {
        if (swlAdView != null) {
            String stattype = swlAdView.getStattype();
            String extraid = swlAdView.getExtraid();
            if ("book".equals(stattype)) {
                r40 r40Var = k40.f2467do;
                if (r40Var != null) {
                    if (((y) r40Var) != null) {
                        BookDetailActivity.o(context, n2.m1811catch(extraid, "", ""));
                    } else {
                        throw null;
                    }
                }
                return true;
            } else if ("booklist".equals(stattype)) {
                r40 r40Var2 = k40.f2467do;
                if (r40Var2 != null) {
                    if (((y) r40Var2) != null) {
                        BookListDetailActivity.k(context, extraid, null);
                    } else {
                        throw null;
                    }
                }
                return true;
            } else if ("innerscreen".equals(stattype) && !TextUtils.isEmpty(extraid)) {
                try {
                    for (ActivityInfo activityInfo : context.getApplicationContext().getPackageManager().getPackageInfo(context.getPackageName(), 1).activities) {
                        Class<?> cls = Class.forName(activityInfo.name);
                        if (cls.getSimpleName().equals(extraid)) {
                            Intent intent = new Intent(context, cls);
                            intent.setFlags(268435456);
                            context.startActivity(intent);
                            return true;
                        }
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                } catch (ClassNotFoundException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return false;
    }

    public static void clickAd(Context context, SwlAdView swlAdView) {
        if (swlAdView != null) {
            setAdClick(context, swlAdView.getLandingtype(), swlAdView.getAdurl(), swlAdView.getAdtitle());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0073 A[Catch: Exception -> 0x005d, TRY_LEAVE, TryCatch #2 {Exception -> 0x005d, blocks: (B:39:0x006d, B:41:0x0073, B:37:0x0068, B:28:0x005c, B:27:0x0059, B:24:0x0054), top: B:61:0x0028, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.swl.gg.bean.SwlAdView> getBqAdViews(java.lang.String r3) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            com.apk.r40 r1 = com.apk.k40.f2467do
            java.lang.String r2 = ""
            if (r1 == 0) goto L13
            com.apk.y r1 = (com.apk.y) r1
            java.lang.String r1 = "SP_AD_HOST_SWL_KEY"
            java.lang.String r2 = com.apk.tt.m2620do(r1, r2)
        L13:
            r0.append(r2)
            java.lang.String r1 = "/ads/"
            r0.append(r1)
            r0.append(r3)
            java.lang.String r3 = ".html"
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            r0 = 0
            com.apk.ky r1 = new com.apk.ky     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L5f
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L5f
            r1.f3967new = r3     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L5f
            com.apk.ch0 r3 = r1.m2193for()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L5f
            if (r3 == 0) goto L46
            boolean r1 = r3.m338throw()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r1 == 0) goto L46
            com.apk.dh0 r1 = r3.f614goto     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            java.lang.String r1 = r1.m455finally()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            goto L47
        L42:
            r1 = move-exception
            goto L52
        L44:
            goto L60
        L46:
            r1 = r0
        L47:
            if (r3 == 0) goto L6d
            r3.close()     // Catch: java.lang.Exception -> L4d
            goto L6d
        L4d:
            r3 = move-exception
            goto L68
        L4f:
            r3 = move-exception
            r1 = r3
            r3 = r0
        L52:
            if (r3 == 0) goto L5c
            r3.close()     // Catch: java.lang.Exception -> L58
            goto L5c
        L58:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Exception -> L5d
        L5c:
            throw r1     // Catch: java.lang.Exception -> L5d
        L5d:
            r3 = move-exception
            goto L79
        L5f:
            r3 = r0
        L60:
            if (r3 == 0) goto L6c
            r3.close()     // Catch: java.lang.Exception -> L66
            goto L6c
        L66:
            r3 = move-exception
            r1 = r0
        L68:
            r3.printStackTrace()     // Catch: java.lang.Exception -> L5d
            goto L6d
        L6c:
            r1 = r0
        L6d:
            boolean r3 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L5d
            if (r3 != 0) goto L7c
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Exception -> L5d
            r3.<init>(r1)     // Catch: java.lang.Exception -> L5d
            goto L7d
        L79:
            r3.printStackTrace()
        L7c:
            r3 = r0
        L7d:
            if (r3 == 0) goto Lcb
            java.lang.String r1 = "ads"
            org.json.JSONArray r3 = r3.optJSONArray(r1)
            if (r3 == 0) goto Lcb
            int r1 = r3.length()
            if (r1 <= 0) goto Lcb
            java.lang.String r3 = r3.toString()
            com.apk.e80 r1 = new com.apk.e80
            r1.<init>()
            java.lang.reflect.Type r1 = r1.getType()
            java.lang.Object r3 = com.biquge.ebook.app.helper.req.convert.Convert.fromJson(r3, r1)
            java.util.List r3 = (java.util.List) r3
            if (r3 == 0) goto Lcb
            int r1 = r3.size()
            if (r1 <= 0) goto Lcb
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r3 = r3.iterator()
        Lb1:
            boolean r1 = r3.hasNext()
            if (r1 == 0) goto Lcb
            java.lang.Object r1 = r3.next()
            com.swl.gg.bean.SwlAdView r1 = (com.swl.gg.bean.SwlAdView) r1
            java.lang.String r2 = r1.getPkg()
            boolean r2 = com.apk.ze.G(r2)
            if (r2 != 0) goto Lb1
            r0.add(r1)
            goto Lb1
        Lcb:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.swl.gg.ggs.SwlAdHelper.getBqAdViews(java.lang.String):java.util.List");
    }

    public static SwlAdView getSwlAdView(String str) {
        return getSwlAdView(str, false);
    }

    public static List<SwlAdView> getSwlAdViews(String str) {
        List<SwlAdView> bqAdViews;
        if (cacheAds == null) {
            cacheAds = new f80<>();
        }
        f80<String, List<SwlAdView>> f80Var = cacheAds;
        f80Var.m751do();
        if (!f80Var.f1258if.containsKey(str) && (bqAdViews = getBqAdViews(str)) != null) {
            cacheAds.put(str, bqAdViews);
        }
        return cacheAds.get(str);
    }

    public static boolean isIntentAvailable(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    public static boolean isInteriorBrowser(SwlAdView swlAdView) {
        if (swlAdView != null) {
            return isInteriorBrowser(swlAdView.getBrowser());
        }
        return false;
    }

    public static void openBrowser(Context context, SwlAdView swlAdView) {
        if (swlAdView == null || checkGoBookDetailOrActivity(context, swlAdView)) {
            return;
        }
        openBrowser(context, swlAdView.getAdurl(), isInteriorBrowser(swlAdView));
    }

    public static void setAdClick(Context context, String str, String str2, String str3) {
        if (SpeechSynthesizer.REQUEST_DNS_OFF.equals(str)) {
            openBrowser(context, str2, false);
        } else if ("1".equals(str)) {
            r40 r40Var = k40.f2467do;
            if (r40Var != null) {
                y yVar = (y) r40Var;
                WebViewActivity.i(context, null, str2);
            }
        } else if ("2".equals(str)) {
            r40 r40Var2 = k40.f2467do;
            if (r40Var2 != null) {
                y yVar2 = (y) r40Var2;
                kf.m1482for(context, str2, str3);
            }
        } else if (RedBgImageBean.RED_BG_TYPE_COLOR.equals(str)) {
            openBrowser(context, str2, false);
        } else if (RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR.equals(str)) {
            try {
                if (!str2.startsWith(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS) && !str2.startsWith(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP)) {
                    try {
                        Intent intent = new Intent();
                        intent.setData(Uri.parse(str2));
                        context.startActivity(intent);
                    } catch (ActivityNotFoundException e) {
                        e.printStackTrace();
                        if (!TextUtils.isEmpty(null)) {
                            openBrowser(context, str2, false);
                        }
                    }
                } else if (str2.endsWith("?linkforwardtype=sysbrowser") || str2.endsWith("&linkforwardtype=sysbrowser")) {
                    openBrowser(context, str2.replace("?linkforwardtype=sysbrowser", "").replace("&linkforwardtype=sysbrowser", ""), false);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else if (!RedBgImageBean.RED_BG_TYPE_CUSTOM_IMAGE.equals(str) || TextUtils.isEmpty(str2)) {
        } else {
            context.startActivity(new Intent("android.intent.action.DIAL", Uri.parse("tel:" + str2)));
        }
    }

    public static SwlAdView getSwlAdView(String str, boolean z) {
        List<SwlAdView> list;
        List<SwlAdView> bqAdViews;
        if (cacheAds == null) {
            cacheAds = new f80<>();
        }
        f80<String, List<SwlAdView>> f80Var = cacheAds;
        f80Var.m751do();
        if (!f80Var.f1258if.containsKey(str) && (bqAdViews = getBqAdViews(str)) != null) {
            cacheAds.put(str, bqAdViews);
        }
        SwlAdView swlAdView = null;
        try {
            if (cacheAds != null) {
                f80<String, List<SwlAdView>> f80Var2 = cacheAds;
                f80Var2.m751do();
                if (f80Var2.f1258if.containsKey(str) && (list = cacheAds.get(str)) != null && list.size() > 0) {
                    if (z) {
                        swlAdView = list.get(dg.f857do.nextInt(list.size()));
                    } else {
                        SwlAdView remove = list.remove(0);
                        try {
                            list.add(remove);
                            cacheAds.put(str, list);
                            swlAdView = remove;
                        } catch (Exception e) {
                            e = e;
                            swlAdView = remove;
                            e.printStackTrace();
                            return swlAdView;
                        }
                    }
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        return swlAdView;
    }

    public static boolean isInteriorBrowser(String str) {
        return "1".equals(str);
    }

    public static void openBrowser(Context context, String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (z) {
            r40 r40Var = k40.f2467do;
            if (r40Var != null) {
                y yVar = (y) r40Var;
                WebViewActivity.i(context, null, str);
                return;
            }
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setFlags(268435456);
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
            if (isIntentAvailable(context, intent)) {
                context.startActivity(intent);
            } else {
                Intent intent2 = new Intent();
                intent2.setFlags(268435456);
                intent2.setAction("android.intent.action.VIEW");
                intent2.setData(Uri.parse(str));
                context.startActivity(intent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
            Intent intent3 = new Intent();
            intent3.setFlags(268435456);
            intent3.setAction("android.intent.action.VIEW");
            intent3.setData(Uri.parse(str));
            context.startActivity(intent3);
        }
    }
}
