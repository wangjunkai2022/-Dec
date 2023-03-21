package com.apk;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.apk.e40;
import java.util.List;
/* compiled from: LazyTabAdapter.java */
/* loaded from: classes8.dex */
public class y30 extends e40.Cdo {

    /* renamed from: case  reason: not valid java name */
    public List<Fragment> f5852case;

    /* renamed from: new  reason: not valid java name */
    public List<String> f5853new;

    /* renamed from: try  reason: not valid java name */
    public String[] f5854try;

    public y30(FragmentManager fragmentManager, List<String> list, List<Fragment> list2) {
        super(fragmentManager);
        this.f5853new = list;
        this.f5852case = list2;
    }

    @Override // com.apk.e40.Cdo
    /* renamed from: do */
    public int mo538do() {
        return this.f5852case.size();
    }

    public y30(FragmentManager fragmentManager, String[] strArr, List<Fragment> list) {
        super(fragmentManager);
        this.f5854try = strArr;
        this.f5852case = list;
    }
}
