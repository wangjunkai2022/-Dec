package com.ss.android.downloadlib.b;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.Cgoto;
import com.ss.android.download.api.config.r;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.model.DeepLink;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.g.l;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public class a {
    public static boolean a(@NonNull com.ss.android.downloadlib.addownload.b.e eVar) {
        boolean z;
        DeepLink deepLink = eVar.b.getDeepLink();
        String openUrl = deepLink == null ? null : deepLink.getOpenUrl();
        JSONObject a2 = com.ss.android.downloadlib.g.f.a(new JSONObject(), eVar);
        l.a(a2, "applink_source", "click_by_sdk");
        com.ss.android.downloadlib.d.a.a().b("applink_click", a2, eVar);
        com.ss.android.downloadlib.addownload.b.g a3 = com.ss.android.downloadlib.g.i.a(openUrl, eVar);
        if (a3.getType() == 2) {
            if (!TextUtils.isEmpty(openUrl)) {
                b("by_url", a3, a2, eVar);
            }
            a3 = com.ss.android.downloadlib.g.i.a(com.ss.android.downloadlib.addownload.j.getContext(), eVar.b.getPackageName(), eVar);
        }
        boolean z2 = false;
        if (a(eVar.f11597a) && com.ss.android.downloadlib.addownload.j.i().optInt("link_ad_click_event") == 1) {
            DownloadModel downloadModel = eVar.b;
            if (downloadModel instanceof AdDownloadModel) {
                ((AdDownloadModel) downloadModel).setFunnelType(4);
            }
            com.ss.android.downloadlib.d.a.a().a(eVar.f11597a, 0);
            z = true;
        } else {
            z = false;
        }
        int type = a3.getType();
        if (type == 1) {
            b("by_url", a2, eVar);
        } else if (type == 3) {
            a("by_package", a2, eVar);
        } else {
            if (type != 4) {
                com.ss.android.downloadlib.e.c.a().b("AppLinkClick default");
            } else {
                a("by_package", a3, a2, eVar);
            }
            if (z2 && !z && ((com.ss.android.downloadlib.d.c.a().b() && !com.ss.android.downloadlib.d.c.a().b(eVar.f11597a, eVar.b.getLogExtra())) || com.ss.android.downloadlib.d.c.a().c())) {
                com.ss.android.downloadlib.d.a.a().a(eVar.f11597a, 2);
            }
            return z2;
        }
        z2 = true;
        if (z2) {
            com.ss.android.downloadlib.d.a.a().a(eVar.f11597a, 2);
        }
        return z2;
    }

    public static void b(com.ss.android.downloadad.api.a.b bVar) {
        if (bVar == null) {
            return;
        }
        String f = com.ss.android.socialbase.downloader.g.a.c().b("app_link_opt") == 1 ? bVar.f() : null;
        JSONObject a2 = com.ss.android.downloadlib.g.f.a(new JSONObject(), bVar);
        l.a(a2, "applink_source", "dialog_click_by_sdk");
        com.ss.android.downloadlib.d.a.a().b("applink_click", a2, bVar);
        com.ss.android.downloadlib.addownload.b.g a3 = com.ss.android.downloadlib.g.i.a(f, bVar);
        if (a3.getType() == 2) {
            if (!TextUtils.isEmpty(f)) {
                b("dialog_by_url", a3, a2, bVar);
            }
            a3 = com.ss.android.downloadlib.g.i.a(com.ss.android.downloadlib.addownload.j.getContext(), bVar.e(), bVar);
        }
        int type = a3.getType();
        if (type == 1) {
            b("dialog_by_url", a2, bVar);
        } else if (type == 3) {
            a("dialog_by_package", a2, bVar);
        } else if (type != 4) {
            com.ss.android.downloadlib.e.c.a().b("AppLinkClickDialog default");
        } else {
            a("dialog_by_package", a3, a2, bVar);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void b(String str, @NonNull final JSONObject jSONObject, @NonNull final com.ss.android.downloadad.api.a.a aVar) {
        char c;
        l.a(jSONObject, "applink_source", str);
        l.a(jSONObject, "download_scene", Integer.valueOf(aVar.t()));
        com.ss.android.downloadlib.d.a.a().b("deeplink_url_open", jSONObject, aVar);
        switch (str.hashCode()) {
            case -1721882089:
                if (str.equals("auto_by_url")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1374618233:
                if (str.equals("by_url")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -129544387:
                if (str.equals("notify_by_url")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 829750366:
                if (str.equals("dialog_by_url")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0 || c == 1 || c == 2 || c == 3) {
            if ((com.ss.android.downloadlib.addownload.j.i().optInt("check_applink_mode") & 1) != 0) {
                l.a(jSONObject, "check_applink_result_by_sdk", (Object) 1);
                e.a().a(new d() { // from class: com.ss.android.downloadlib.b.a.2
                    @Override // com.ss.android.downloadlib.b.d
                    public void a(boolean z) {
                        com.ss.android.downloadlib.d.a.a().b(z ? "deeplink_success" : "deeplink_failed", jSONObject, aVar);
                        if (z) {
                            com.ss.android.downloadlib.addownload.j.t().a(com.ss.android.downloadlib.addownload.j.getContext(), aVar.u(), aVar.w(), aVar.v(), aVar.e(), 0);
                        }
                    }
                });
                return;
            }
            com.ss.android.downloadlib.addownload.j.b().a(com.ss.android.downloadlib.addownload.j.getContext(), aVar.u(), aVar.w(), aVar.v(), aVar.e(), str);
        }
    }

    public static void a(@NonNull com.ss.android.downloadad.api.a.b bVar) {
        String f = bVar.f();
        JSONObject a2 = com.ss.android.downloadlib.g.f.a(new JSONObject(), bVar);
        l.a(a2, "applink_source", "notify_click_by_sdk");
        com.ss.android.downloadlib.d.a.a().b("applink_click", a2, bVar);
        com.ss.android.downloadlib.addownload.b.g a3 = com.ss.android.downloadlib.g.i.a(f, bVar);
        if (a3.getType() == 2) {
            if (!TextUtils.isEmpty(f)) {
                b("notify_by_url", a3, a2, bVar);
            }
            a3 = com.ss.android.downloadlib.g.i.a(com.ss.android.downloadlib.addownload.j.getContext(), bVar.e(), bVar);
        }
        int type = a3.getType();
        if (type == 1) {
            b("notify_by_url", a2, bVar);
        } else if (type == 3) {
            a("notify_by_package", a2, bVar);
        } else if (type != 4) {
            com.ss.android.downloadlib.e.c.a().b("AppLinkClickNotification default");
        } else {
            a("notify_by_package", a3, a2, bVar);
        }
    }

    public static void b(String str, @NonNull com.ss.android.downloadlib.addownload.b.g gVar, @NonNull JSONObject jSONObject, @NonNull com.ss.android.downloadad.api.a.a aVar) {
        l.a(jSONObject, "applink_source", str);
        l.a(jSONObject, "error_code", Integer.valueOf(gVar.a()));
        l.a(jSONObject, "download_scene", Integer.valueOf(aVar.t()));
        com.ss.android.downloadlib.d.a.a().b("deeplink_url_open_fail", jSONObject, aVar);
    }

    public static boolean a(String str, @NonNull com.ss.android.downloadad.api.a.b bVar) {
        if (com.ss.android.downloadlib.addownload.h.b(bVar.O())) {
            if (TextUtils.isEmpty(bVar.f()) && TextUtils.isEmpty(str)) {
                return false;
            }
            com.ss.android.socialbase.downloader.notification.b.a().f(bVar.s());
            JSONObject jSONObject = new JSONObject();
            com.ss.android.downloadlib.g.f.a(jSONObject, bVar);
            l.a(jSONObject, "applink_source", "auto_click");
            com.ss.android.downloadlib.d.a.a().b("applink_click", bVar);
            com.ss.android.downloadlib.addownload.b.g a2 = com.ss.android.downloadlib.g.i.a(bVar, bVar.f(), bVar.e());
            int type = a2.getType();
            if (type == 1) {
                b("auto_by_url", jSONObject, bVar);
                return true;
            } else if (type == 2) {
                b("auto_by_url", a2, jSONObject, bVar);
                return false;
            } else if (type == 3) {
                a("auto_by_package", jSONObject, bVar);
                return true;
            } else if (type != 4) {
                return false;
            } else {
                a("auto_by_package", a2, jSONObject, bVar);
                return false;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void a(String str, @NonNull final JSONObject jSONObject, @NonNull final com.ss.android.downloadad.api.a.a aVar) {
        char c;
        l.a(jSONObject, "applink_source", str);
        l.a(jSONObject, "download_scene", Integer.valueOf(aVar.t()));
        com.ss.android.downloadlib.d.a.a().b("deeplink_app_open", jSONObject, aVar);
        switch (str.hashCode()) {
            case -1282070764:
                if (str.equals("notify_by_package")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -441514770:
                if (str.equals("auto_by_package")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -185950114:
                if (str.equals("by_package")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 368401333:
                if (str.equals("dialog_by_package")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0 || c == 1 || c == 2 || c == 3) {
            if ((com.ss.android.downloadlib.addownload.j.i().optInt("check_applink_mode") & 1) != 0) {
                l.a(jSONObject, "check_applink_result_by_sdk", (Object) 1);
                e.a().a(new d() { // from class: com.ss.android.downloadlib.b.a.1
                    @Override // com.ss.android.downloadlib.b.d
                    public void a(boolean z) {
                        com.ss.android.downloadlib.d.a.a().b(z ? "deeplink_success" : "deeplink_failed", jSONObject, aVar);
                        if (z) {
                            com.ss.android.downloadlib.addownload.j.t().a(com.ss.android.downloadlib.addownload.j.getContext(), aVar.u(), aVar.w(), aVar.v(), aVar.e(), 0);
                        }
                    }
                });
                return;
            }
            com.ss.android.downloadlib.addownload.j.b().a(com.ss.android.downloadlib.addownload.j.getContext(), aVar.u(), aVar.w(), aVar.v(), aVar.e(), str);
        }
    }

    public static void a(String str, @NonNull com.ss.android.downloadlib.addownload.b.g gVar, @NonNull JSONObject jSONObject, @NonNull com.ss.android.downloadad.api.a.a aVar) {
        l.a(jSONObject, "applink_source", str);
        l.a(jSONObject, "error_code", Integer.valueOf(gVar.a()));
        l.a(jSONObject, "download_scene", Integer.valueOf(aVar.t()));
        com.ss.android.downloadlib.d.a.a().b("deeplink_app_open_fail", jSONObject, aVar);
    }

    public static boolean a(@NonNull com.ss.android.downloadlib.addownload.b.e eVar, int i) {
        JSONObject jSONObject = new JSONObject();
        l.a(jSONObject, "download_scene", Integer.valueOf(eVar.t()));
        com.ss.android.downloadlib.d.a.a().b("market_click_open", jSONObject, eVar);
        com.ss.android.downloadlib.addownload.b.g a2 = com.ss.android.downloadlib.g.i.a(com.ss.android.downloadlib.addownload.j.getContext(), eVar, eVar.b.getPackageName());
        String a3 = l.a(a2.b(), "open_market");
        int type = a2.getType();
        if (type == 5) {
            a(a3, jSONObject, eVar, true);
        } else if (type == 6) {
            l.a(jSONObject, "error_code", Integer.valueOf(a2.a()));
            l.a(jSONObject, "download_scene", Integer.valueOf(eVar.t()));
            com.ss.android.downloadlib.d.a.a().b("market_open_failed", jSONObject, eVar);
            return false;
        } else if (type != 7) {
            return false;
        }
        com.ss.android.downloadlib.d.a.a().a(eVar.f11597a, i);
        return true;
    }

    public static void a(final String str, @Nullable final JSONObject jSONObject, final com.ss.android.downloadlib.addownload.b.e eVar, boolean z) {
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
            } catch (Exception e) {
                com.ss.android.downloadlib.e.c.a().a(e, "onMarketSuccess");
                return;
            }
        }
        l.a(jSONObject, "applink_source", str);
        l.a(jSONObject, "download_scene", Integer.valueOf(eVar.t()));
        if (z) {
            com.ss.android.downloadlib.d.a.a().b("market_open_success", jSONObject, eVar);
        }
        if ((com.ss.android.downloadlib.addownload.j.i().optInt("check_applink_mode") & 4) != 0) {
            e.a().b(new d() { // from class: com.ss.android.downloadlib.b.a.3
                @Override // com.ss.android.downloadlib.b.d
                public void a(boolean z2) {
                    if (!z2 && !"open_market".equals(str)) {
                        Context context = com.ss.android.downloadlib.addownload.j.getContext();
                        StringBuilder m1016super = Cgoto.m1016super(BaseConstants.MARKET_PREFIX);
                        m1016super.append(eVar.e());
                        a.a(com.ss.android.downloadlib.g.i.a(context, Uri.parse(m1016super.toString())), eVar, false);
                    }
                    com.ss.android.downloadlib.d.a.a().a(z2 ? "market_delay_success" : "market_delay_failed", jSONObject, eVar);
                    if (z2) {
                        r t = com.ss.android.downloadlib.addownload.j.t();
                        Context context2 = com.ss.android.downloadlib.addownload.j.getContext();
                        com.ss.android.downloadlib.addownload.b.e eVar2 = eVar;
                        DownloadModel downloadModel = eVar2.b;
                        t.a(context2, downloadModel, eVar2.d, eVar2.c, downloadModel.getPackageName(), 2);
                    }
                }
            });
        } else {
            com.ss.android.downloadlib.addownload.j.b().a(com.ss.android.downloadlib.addownload.j.getContext(), eVar.b, eVar.d, eVar.c, eVar.b.getPackageName(), str);
        }
        com.ss.android.downloadad.api.a.b bVar = new com.ss.android.downloadad.api.a.b(eVar.b, eVar.c, eVar.d);
        bVar.e(2);
        bVar.f(System.currentTimeMillis());
        bVar.h(4);
        bVar.i(2);
        com.ss.android.downloadlib.addownload.b.f.a().a(bVar);
    }

    public static void a(com.ss.android.downloadlib.addownload.b.g gVar, com.ss.android.downloadlib.addownload.b.e eVar, boolean z) {
        String a2 = l.a(gVar.b(), "open_market");
        JSONObject jSONObject = new JSONObject();
        l.a(jSONObject, "ttdownloader_type", "backup");
        int type = gVar.getType();
        if (type == 5) {
            a(a2, jSONObject, eVar, z);
        } else if (type != 6) {
        } else {
            l.a(jSONObject, "error_code", Integer.valueOf(gVar.a()));
            l.a(jSONObject, "download_scene", Integer.valueOf(eVar.t()));
            com.ss.android.downloadlib.d.a.a().b("market_open_failed", jSONObject, eVar);
        }
    }

    public static boolean a(long j) {
        return com.ss.android.downloadlib.addownload.b.f.a().d(j) == null;
    }
}
