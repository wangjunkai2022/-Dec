package com.ss.android.socialbase.downloader.depend;

import java.util.List;
/* loaded from: classes7.dex */
public abstract class b implements v {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11838a = false;

    @Override // com.ss.android.socialbase.downloader.depend.v
    public void a(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f11838a = true;
    }

    @Override // com.ss.android.socialbase.downloader.depend.v
    public boolean a() {
        return this.f11838a;
    }
}
