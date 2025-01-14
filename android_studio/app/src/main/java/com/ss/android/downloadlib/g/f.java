package com.ss.android.downloadlib.g;

import androidx.annotation.NonNull;
import com.ss.android.socialbase.appdownloader.g;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes7.dex */
public class f {
    public static void a(DownloadInfo downloadInfo, JSONObject jSONObject) {
        try {
            c(downloadInfo, jSONObject);
            com.ss.android.downloadad.api.a.b a2 = com.ss.android.downloadlib.addownload.b.f.a().a(downloadInfo);
            if (a2 == null) {
                return;
            }
            jSONObject.put("is_update_download", a2.V() ? 1 : 2);
            a(a2, jSONObject);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void b(DownloadInfo downloadInfo, JSONObject jSONObject) {
        com.ss.android.downloadad.api.a.b a2;
        if (jSONObject == null || (a2 = com.ss.android.downloadlib.addownload.b.f.a().a(downloadInfo)) == null) {
            return;
        }
        try {
            c(downloadInfo, jSONObject);
            jSONObject.putOpt("time_after_click", Long.valueOf(System.currentTimeMillis() - a2.T()));
            jSONObject.putOpt("click_download_size", Long.valueOf(a2.U()));
            jSONObject.putOpt("download_length", Long.valueOf(downloadInfo.getCurBytes()));
            jSONObject.putOpt("download_apk_size", Long.valueOf(downloadInfo.getTotalBytes()));
            a2.A();
            com.ss.android.downloadlib.addownload.b.i.a().a(a2);
            jSONObject.put("click_pause_times", a2.z());
            long totalBytes = downloadInfo.getTotalBytes();
            long curBytes = downloadInfo.getCurBytes();
            jSONObject.put("download_percent", (curBytes < 0 || totalBytes <= 0) ? 0.0d : curBytes / totalBytes);
            jSONObject.put("download_status", downloadInfo.getRealStatus());
            long currentTimeMillis = System.currentTimeMillis();
            long H = a2.H();
            if (H > 0) {
                jSONObject.put("time_from_start_download", currentTimeMillis - H);
            }
            long B = a2.B();
            if (B > 0) {
                jSONObject.put("time_from_download_resume", currentTimeMillis - B);
            }
            jSONObject.putOpt("fail_status", Integer.valueOf(a2.E()));
            jSONObject.putOpt("fail_msg", a2.F());
            jSONObject.put("download_failed_times", a2.x());
            jSONObject.put("can_show_notification", com.ss.android.socialbase.appdownloader.e.d.a() ? 1 : 2);
            jSONObject.put("first_speed_time", downloadInfo.getFirstSpeedTime());
            jSONObject.put("all_connect_time", downloadInfo.getAllConnectTime());
            jSONObject.put("download_prepare_time", downloadInfo.getDownloadPrepareTime());
            jSONObject.put("download_time", downloadInfo.getRealDownloadTime() + downloadInfo.getAllConnectTime() + downloadInfo.getDownloadPrepareTime());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void c(DownloadInfo downloadInfo, JSONObject jSONObject) {
        if (downloadInfo != null) {
            try {
                jSONObject.putOpt("total_bytes", Long.valueOf(downloadInfo.getTotalBytes()));
                jSONObject.putOpt("cur_bytes", Long.valueOf(downloadInfo.getCurBytes()));
                jSONObject.putOpt("chunk_count", Integer.valueOf(downloadInfo.getChunkCount()));
                jSONObject.putOpt("app_name", downloadInfo.getTitle());
                jSONObject.putOpt("network_quality", downloadInfo.getNetworkQuality());
                jSONObject.putOpt("save_path", downloadInfo.getSavePath());
                jSONObject.putOpt("file_name", downloadInfo.getName());
                jSONObject.putOpt("download_status", Integer.valueOf(downloadInfo.getRealStatus()));
                com.ss.android.downloadad.api.a.b a2 = com.ss.android.downloadlib.addownload.b.f.a().a(downloadInfo.getId());
                if (a2 != null) {
                    jSONObject.putOpt("click_download_time", Long.valueOf(a2.T()));
                    jSONObject.putOpt("click_download_size", Long.valueOf(a2.U()));
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        int i = 1;
        jSONObject.putOpt("permission_notification", Integer.valueOf(com.ss.android.socialbase.appdownloader.e.d.a() ? 1 : 2));
        jSONObject.putOpt("network_available", Integer.valueOf(com.ss.android.socialbase.downloader.i.f.c(com.ss.android.downloadlib.addownload.j.getContext()) ? 1 : 2));
        if (!com.ss.android.socialbase.downloader.i.f.b(com.ss.android.downloadlib.addownload.j.getContext())) {
            i = 2;
        }
        jSONObject.putOpt("network_is_wifi", Integer.valueOf(i));
    }

    public static void a(com.ss.android.downloadad.api.a.b bVar, JSONObject jSONObject) {
        if (jSONObject == null || bVar == null) {
            return;
        }
        try {
            jSONObject.put("is_patch_apply_handled", bVar.X() ? 1 : 0);
            jSONObject.put("origin_mime_type", bVar.W());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(JSONObject jSONObject, int i) {
        if (jSONObject == null) {
            return;
        }
        JSONArray e = com.ss.android.socialbase.downloader.g.a.a(i).e("ah_report_config");
        if (e != null) {
            for (int i2 = 0; i2 < e.length(); i2++) {
                try {
                    String string = e.getString(i2);
                    g.a a2 = com.ss.android.socialbase.appdownloader.f.a.a(string);
                    if (a2 != null) {
                        String replaceAll = string.replaceAll("\\.", "_");
                        jSONObject.put(replaceAll, a2.f() + "_" + a2.g());
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        try {
            jSONObject.put("is_unknown_source_enabled", com.ss.android.socialbase.appdownloader.b.a(com.ss.android.socialbase.downloader.downloader.c.N()) ? 1 : 2);
        } catch (Throwable unused) {
        }
    }

    public static JSONObject a(@NonNull JSONObject jSONObject, com.ss.android.downloadad.api.a.a aVar) {
        l.a(jSONObject, "open_url", l.a(aVar.f(), "open_url_not_exist"));
        return jSONObject;
    }

    public static JSONObject b(@NonNull JSONObject jSONObject, com.ss.android.downloadad.api.a.a aVar) {
        l.a(jSONObject, com.ss.android.socialbase.appdownloader.f.d.i().replaceAll("\\.", "_"), Integer.valueOf(l.b(com.ss.android.downloadlib.addownload.j.getContext(), com.ss.android.socialbase.appdownloader.f.d.i())));
        return jSONObject;
    }
}
