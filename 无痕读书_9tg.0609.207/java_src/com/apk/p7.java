package com.apk;

import com.biquge.ebook.app.ui.activity.DownloadTxtListActivity;
import kimi.wuhends.ebooks.R;
/* compiled from: DownloadTxtListActivity.java */
/* loaded from: classes8.dex */
public class p7 implements xv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ DownloadTxtListActivity f3590do;

    /* compiled from: DownloadTxtListActivity.java */
    /* renamed from: com.apk.p7$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ int f3591do;

        public Cdo(int i) {
            this.f3591do = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x011b  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0124 A[SYNTHETIC] */
        @Override // com.apk.ft
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick() {
            /*
                Method dump skipped, instructions count: 300
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.p7.Cdo.onClick():void");
        }
    }

    public p7(DownloadTxtListActivity downloadTxtListActivity) {
        this.f3590do = downloadTxtListActivity;
    }

    @Override // com.apk.xv
    /* renamed from: do */
    public void mo15do(int i, String str) {
        if (i == 3) {
            this.f3590do.k(true);
            return;
        }
        String r = i != 0 ? i != 1 ? i != 2 ? "" : ze.r(R.string.txt_download_task_select_txt, ze.q(R.string.txt_download_task_all_remove_txt)) : ze.r(R.string.txt_download_task_select_txt, ze.q(R.string.txt_download_task_all_stop_txt)) : ze.r(R.string.txt_download_task_select_txt, ze.q(R.string.txt_download_task_all_start_txt));
        DownloadTxtListActivity downloadTxtListActivity = this.f3590do;
        downloadTxtListActivity.showTipDialog(downloadTxtListActivity, r, new Cdo(i), null, true);
    }
}
