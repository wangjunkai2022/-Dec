package com.ss.android.downloadlib.b;

import androidx.annotation.NonNull;
/* loaded from: classes7.dex */
public class b {
    public void a(@NonNull final com.ss.android.downloadad.api.a.b bVar, @NonNull final g gVar, int i) {
        com.ss.android.downloadlib.d.a().a(new Runnable() { // from class: com.ss.android.downloadlib.b.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (i.a(bVar)) {
                    gVar.a(false);
                } else if (!f.a(bVar)) {
                    gVar.a(false);
                } else {
                    f.a(bVar, new h() { // from class: com.ss.android.downloadlib.b.b.1.1
                        @Override // com.ss.android.downloadlib.b.h
                        public void a(boolean z) {
                            gVar.a(z);
                        }
                    });
                }
            }
        }, i);
    }
}
