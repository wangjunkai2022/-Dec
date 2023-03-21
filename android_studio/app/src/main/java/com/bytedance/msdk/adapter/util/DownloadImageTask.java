package com.bytedance.msdk.adapter.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.baidu.tts.loopj.HttpGet;
import java.lang.ref.SoftReference;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes8.dex */
public class DownloadImageTask extends AsyncTask<String, Void, Bitmap> {

    /* renamed from: do  reason: not valid java name */
    public SoftReference<ImageView> f8747do;

    public DownloadImageTask(ImageView imageView) {
        this.f8747do = new SoftReference<>(imageView);
    }

    @Override // android.os.AsyncTask
    public Bitmap doInBackground(String[] strArr) {
        String str = strArr[0];
        if (str == null) {
            return null;
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod(HttpGet.METHOD_NAME);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                return BitmapFactory.decodeStream(httpURLConnection.getInputStream());
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Bitmap bitmap) {
        Bitmap bitmap2 = bitmap;
        super.onPostExecute(bitmap2);
        if (bitmap2 == null || this.f8747do.get() == null) {
            return;
        }
        this.f8747do.get().setImageBitmap(bitmap2);
    }
}
