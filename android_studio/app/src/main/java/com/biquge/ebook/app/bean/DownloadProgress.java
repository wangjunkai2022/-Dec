package com.biquge.ebook.app.bean;

import android.content.ContentValues;
import androidx.core.app.NotificationCompat;
import java.io.File;
import org.litepal.LitePal;
import org.litepal.crud.LitePalSupport;

/* loaded from: classes8.dex */
public class DownloadProgress extends LitePalSupport {
    public long currentSize;
    public String filePath;
    public int status;
    public long totalSize = -1;
    public String url;

    public static DownloadProgress getDownloadProgress(String str) {
        return (DownloadProgress) LitePal.where("url = ?", str).findFirst(DownloadProgress.class);
    }

    public static void removeDownloadProgress(String str) {
        try {
            DownloadProgress downloadProgress = getDownloadProgress(str);
            if (downloadProgress != null) {
                LitePal.deleteAll(DownloadProgress.class, "url = ?", str);
                new File(downloadProgress.getFilePath()).delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static DownloadProgress saveDownloadProgress(String str, String str2) {
        DownloadProgress downloadProgress = new DownloadProgress();
        downloadProgress.setUrl(str);
        downloadProgress.setFilePath(str2);
        downloadProgress.save();
        return downloadProgress;
    }

    public static void updateDownloadProgress(String str, int i, long j, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(NotificationCompat.CATEGORY_STATUS, Integer.valueOf(i));
        contentValues.put("currentSize", Long.valueOf(j));
        contentValues.put("totalSize", Long.valueOf(j2));
        LitePal.updateAll(DownloadProgress.class, contentValues, "url = ?", str);
    }

    public long getCurrentSize() {
        return this.currentSize;
    }

    public String getFilePath() {
        String str = this.filePath;
        return str == null ? "" : str;
    }

    public int getStatus() {
        return this.status;
    }

    public long getTotalSize() {
        return this.totalSize;
    }

    public String getUrl() {
        String str = this.url;
        return str == null ? "" : str;
    }

    public void setCurrentSize(long j) {
        this.currentSize = j;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setTotalSize(long j) {
        this.totalSize = j;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
