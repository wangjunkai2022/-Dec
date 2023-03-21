package com.ss.android.downloadlib.c;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.socialbase.downloader.depend.m;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.umeng.analytics.pro.ao;
import java.io.File;

/* loaded from: classes7.dex */
public class a implements m {
    private boolean c(DownloadInfo downloadInfo) {
        String str = downloadInfo.getSavePath() + File.separator + downloadInfo.getName();
        File file = new File(str);
        String a2 = com.ss.android.socialbase.appdownloader.f.a.e.a(j.getContext(), com.ss.android.socialbase.appdownloader.c.a(downloadInfo, file), str);
        boolean z = false;
        if (!TextUtils.isEmpty(a2)) {
            String m989case = Cgoto.m989case(a2, ".apk");
            if (m989case.equals(downloadInfo.getName())) {
                return true;
            }
            try {
                z = file.renameTo(new File(downloadInfo.getSavePath() + File.separator + m989case));
                if (z) {
                    downloadInfo.setName(m989case);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return z;
    }

    @Override // com.ss.android.socialbase.downloader.depend.m
    public void a(DownloadInfo downloadInfo) throws BaseException {
        if (downloadInfo == null || !c(downloadInfo)) {
            return;
        }
        a(j.getContext(), downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.depend.m
    public boolean b(DownloadInfo downloadInfo) {
        if (downloadInfo != null) {
            return com.ss.android.downloadlib.g.e.b(com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()));
        }
        return false;
    }

    private void a(Context context, final DownloadInfo downloadInfo) {
        String str = downloadInfo.getSavePath() + File.separator + downloadInfo.getName();
        Cursor query = context.getContentResolver().query(MediaStore.Files.getContentUri("external"), new String[]{ao.d}, "_data=? ", new String[]{str}, null);
        if (query != null && query.moveToFirst()) {
            downloadInfo.safePutToDBJsonData("file_content_uri", ContentUris.withAppendedId(MediaStore.Files.getContentUri("external"), query.getInt(query.getColumnIndex(ao.d))).toString());
        } else {
            MediaScannerConnection.scanFile(context, new String[]{str}, new String[]{AdBaseConstants.MIME_APK}, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.ss.android.downloadlib.c.a.1
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public void onScanCompleted(String str2, Uri uri) {
                    if (uri != null) {
                        downloadInfo.safePutToDBJsonData("file_content_uri", uri.toString());
                        com.ss.android.socialbase.downloader.downloader.c.x().a(downloadInfo);
                    }
                }
            });
        }
        com.ss.android.socialbase.downloader.i.f.a(query);
    }
}
