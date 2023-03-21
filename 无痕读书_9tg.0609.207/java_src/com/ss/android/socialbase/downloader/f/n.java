package com.ss.android.socialbase.downloader.f;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.swl.gg.ggs.SwlAdSplashView;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    public final JSONObject f11886a;
    public int b;

    public n(JSONObject jSONObject) {
        this.f11886a = jSONObject;
    }

    private int p() {
        return this.f11886a.optInt("url_balance", 2);
    }

    public void a(int i) {
        this.b = b(i);
    }

    public boolean b() {
        return p() > 0;
    }

    public boolean c() {
        return p() == 1;
    }

    public int d() {
        return this.f11886a.optInt("buffer_count", 512);
    }

    public int e() {
        return this.f11886a.optInt("buffer_size", 8192);
    }

    public boolean f() {
        return this.f11886a.optInt("segment_mode", 1) == 0;
    }

    public long g() {
        long optInt = this.f11886a.optInt("segment_min_kb", 512) * 1024;
        if (optInt < 65536) {
            return 65536L;
        }
        return optInt;
    }

    public long h() {
        long optInt = this.f11886a.optInt("segment_min_init_mb", 10) * DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL;
        if (optInt < 5242880) {
            return 5242880L;
        }
        return optInt;
    }

    public long i() {
        long optInt = this.f11886a.optInt("segment_max_kb", 0) * DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL;
        if (optInt < g()) {
            return -1L;
        }
        return optInt;
    }

    public long j() {
        long optInt = this.f11886a.optInt("connect_timeout", -1);
        if (optInt >= ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS) {
            return optInt;
        }
        return -1L;
    }

    public long k() {
        long optInt = this.f11886a.optInt("read_timeout", -1);
        if (optInt >= SwlAdSplashView.SPLASH_AD_TIMEOUT) {
            return optInt;
        }
        return -1L;
    }

    public int l() {
        return this.f11886a.optInt("ip_strategy", 0);
    }

    public float m() {
        return (float) this.f11886a.optDouble("main_ratio", 0.0d);
    }

    public int n() {
        return this.f11886a.optInt("ratio_segment", 0);
    }

    public float o() {
        return Math.min(Math.max(0.0f, (float) this.f11886a.optDouble("poor_speed_ratio", 0.0d)), 1.0f);
    }

    private int b(int i) {
        int optInt = this.f11886a.optInt("thread_count", 4);
        if (optInt > 16) {
            optInt = 16;
        }
        if (optInt > 0) {
            return p() == 1 ? Math.min(optInt, i) : optInt;
        } else if (p() > 0) {
            return i;
        } else {
            return 1;
        }
    }

    public int a() {
        return this.b;
    }

    @NonNull
    public static n a(@NonNull JSONObject jSONObject) {
        return new n(jSONObject);
    }
}
