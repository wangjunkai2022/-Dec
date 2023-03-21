package com.ss.android.socialbase.downloader.impls;

/* loaded from: classes7.dex */
public class b implements com.ss.android.socialbase.downloader.downloader.g {
    @Override // com.ss.android.socialbase.downloader.downloader.g
    public int a(int i, com.ss.android.socialbase.downloader.network.l lVar) {
        int ordinal = lVar.ordinal();
        com.ss.android.socialbase.downloader.network.l lVar2 = com.ss.android.socialbase.downloader.network.l.MODERATE;
        if (ordinal <= 1) {
            return 1;
        }
        return lVar == com.ss.android.socialbase.downloader.network.l.GOOD ? i - 1 : i;
    }
}
