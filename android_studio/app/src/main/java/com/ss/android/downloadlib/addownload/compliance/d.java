package com.ss.android.downloadlib.addownload.compliance;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g.c;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.downloader.i.f;
import com.ss.android.socialbase.downloader.i.h;
import com.ss.android.socialbase.downloader.network.i;
import java.io.BufferedInputStream;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes7.dex */
public class d extends h<Long, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    public final Map<Long, SoftReference<a>> f11632a;

    /* loaded from: classes7.dex */
    public interface a {
        void a(Bitmap bitmap);
    }

    /* loaded from: classes7.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public static d f11635a = new d();
    }

    public static int b(int i, int i2, BitmapFactory.Options options) {
        if (options.outWidth > i || options.outHeight > i2) {
            return Math.min(Math.round(options.outWidth / i), Math.round(options.outHeight / i2));
        }
        return 1;
    }

    public d() {
        super(8, 8);
        this.f11632a = new HashMap();
    }

    public static d a() {
        return b.f11635a;
    }

    public void a(long j, @NonNull a aVar) {
        if (get(Long.valueOf(j)) != null) {
            aVar.a(get(Long.valueOf(j)));
        } else {
            this.f11632a.put(Long.valueOf(j), new SoftReference<>(aVar));
        }
    }

    public void a(final long j, final long j2, final String str) {
        if (get(Long.valueOf(j)) != null) {
            SoftReference<a> remove = this.f11632a.remove(Long.valueOf(j));
            if (remove == null || remove.get() == null) {
                return;
            }
            remove.get().a(get(Long.valueOf(j)));
        } else if (TextUtils.isEmpty(str)) {
            e.a(12, j2);
        } else {
            com.ss.android.downloadlib.g.c.a((c.a<Object, R>) new c.a<Object, Object>() { // from class: com.ss.android.downloadlib.addownload.compliance.d.2
                @Override // com.ss.android.downloadlib.g.c.a
                public Object a(Object obj) {
                    BufferedInputStream bufferedInputStream;
                    Throwable th;
                    i a2;
                    try {
                        a2 = com.ss.android.socialbase.downloader.downloader.c.a(true, 0, str, null);
                    } catch (Exception e) {
                        e = e;
                        bufferedInputStream = null;
                    } catch (Throwable th2) {
                        bufferedInputStream = null;
                        th = th2;
                        f.a(bufferedInputStream);
                        throw th;
                    }
                    if (a2 == null) {
                        f.a(null);
                        return null;
                    }
                    bufferedInputStream = new BufferedInputStream(a2.a());
                    try {
                        try {
                            bufferedInputStream.mark(bufferedInputStream.available());
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inJustDecodeBounds = true;
                            BitmapFactory.decodeStream(bufferedInputStream, null, options);
                            int i = options.outWidth;
                            int i2 = options.outHeight;
                            int a3 = l.a(j.getContext(), 60.0f);
                            options.inSampleSize = d.b(a3, a3, options);
                            options.inJustDecodeBounds = false;
                            bufferedInputStream.reset();
                            Bitmap decodeStream = BitmapFactory.decodeStream(bufferedInputStream, null, options);
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.putOpt("ttdownloader_type", "load_bitmap");
                                jSONObject.putOpt("bm_original_w", Integer.valueOf(i));
                                jSONObject.putOpt("bm_original_h", Integer.valueOf(i2));
                                jSONObject.putOpt("bm_bytes", Integer.valueOf(decodeStream == null ? -1 : decodeStream.getByteCount()));
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            com.ss.android.downloadlib.d.a.a().a("ttd_pref_monitor", jSONObject, j2);
                            d.this.put(Long.valueOf(j), decodeStream);
                            f.a(bufferedInputStream);
                        } catch (Throwable th3) {
                            th = th3;
                            f.a(bufferedInputStream);
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        com.ss.android.downloadlib.e.c.a().a(e, "BitmapCache loadBitmap");
                        f.a(bufferedInputStream);
                        return null;
                    }
                    return null;
                }
            }, (Object) null).a(new c.a<Object, Object>() { // from class: com.ss.android.downloadlib.addownload.compliance.d.1
                @Override // com.ss.android.downloadlib.g.c.a
                public Object a(Object obj) {
                    SoftReference softReference = (SoftReference) d.this.f11632a.remove(Long.valueOf(j));
                    if (softReference == null || softReference.get() == null) {
                        return null;
                    }
                    ((a) softReference.get()).a(d.this.get(Long.valueOf(j)));
                    return null;
                }
            }).a();
        }
    }
}
