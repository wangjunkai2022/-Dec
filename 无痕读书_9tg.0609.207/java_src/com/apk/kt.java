package com.apk;

import android.view.KeyEvent;
import android.view.View;
/* compiled from: PopBase.java */
/* loaded from: classes8.dex */
public class kt implements View.OnKeyListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ lt f2668do;

    public kt(lt ltVar) {
        this.f2668do = ltVar;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i == 4 && keyEvent.getAction() == 0) {
            this.f2668do.m1669if();
            return false;
        }
        return false;
    }
}
