package com.apk;

import android.view.View;
import android.widget.AdapterView;
import com.apk.nt;
/* compiled from: PopCommon.java */
/* loaded from: classes8.dex */
public class mt implements AdapterView.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ nt f3100do;

    public mt(nt ntVar) {
        this.f3100do = ntVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        lt ltVar = this.f3100do.f3307do;
        if (ltVar != null) {
            ltVar.m1669if();
        }
        nt.Cdo cdo = this.f3100do.f3310if;
        if (cdo != null) {
            cdo.onItemClick(adapterView, view, i, j);
        }
    }
}
