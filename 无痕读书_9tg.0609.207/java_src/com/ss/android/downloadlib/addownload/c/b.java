package com.ss.android.downloadlib.addownload.c;

import com.ss.android.downloadlib.addownload.b.f;
import com.ss.android.downloadlib.addownload.b.i;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public DownloadInfo f11609a;

    public b(DownloadInfo downloadInfo) {
        this.f11609a = downloadInfo;
    }

    @Override // java.lang.Runnable
    public void run() {
        final com.ss.android.downloadad.api.a.b a2;
        if (this.f11609a == null || (a2 = f.a().a(this.f11609a)) == null) {
            return;
        }
        com.ss.android.downloadlib.d.a.a().a("cleanspace_task", a2);
        long longValue = Double.valueOf((com.ss.android.downloadlib.g.e.a(this.f11609a.getId()) + 1.0d) * this.f11609a.getTotalBytes()).longValue() - this.f11609a.getCurBytes();
        long a3 = l.a(0L);
        if (j.l() != null) {
            j.l().e();
        }
        c.a();
        c.b();
        if (com.ss.android.downloadlib.g.e.g(a2.s())) {
            c.a(j.getContext());
        }
        long a4 = l.a(0L);
        if (a4 >= longValue) {
            a2.l("1");
            i.a().a(a2);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("quite_clean_size", Long.valueOf(a4 - a3));
            } catch (JSONException e) {
                e.printStackTrace();
            }
            com.ss.android.downloadlib.d.a.a().a("cleanspace_download_after_quite_clean", jSONObject, a2);
            Downloader.getInstance(j.getContext()).restart(this.f11609a.getId());
        } else if (j.l() != null) {
            a2.d(false);
            d.a().a(a2.a(), new e() { // from class: com.ss.android.downloadlib.addownload.c.b.1
            });
            if (j.l().a(this.f11609a.getId(), this.f11609a.getUrl(), true, longValue)) {
                a2.e(true);
            }
        } else {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.putOpt("show_dialog_result", 3);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            com.ss.android.downloadlib.d.a.a().a("cleanspace_window_show", jSONObject2, a2);
        }
    }
}
