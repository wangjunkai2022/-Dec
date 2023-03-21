package com.apk;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import com.apk.yp0;

/* compiled from: SkinPrefixBuildInLoader.java */
/* loaded from: classes7.dex */
public class fr0 implements yp0.Cfor {
    @Override // com.apk.yp0.Cfor
    /* renamed from: do */
    public ColorStateList mo507do(Context context, String str, int i) {
        return null;
    }

    @Override // com.apk.yp0.Cfor
    /* renamed from: for */
    public ColorStateList mo508for(Context context, String str, int i) {
        return null;
    }

    @Override // com.apk.yp0.Cfor
    public int getType() {
        return 2;
    }

    @Override // com.apk.yp0.Cfor
    /* renamed from: if */
    public Drawable mo509if(Context context, String str, int i) {
        return null;
    }

    @Override // com.apk.yp0.Cfor
    /* renamed from: new */
    public String mo510new(Context context, String str) {
        lq0.m1663new().m1665goto(context.getResources(), context.getPackageName(), str, this);
        return str;
    }

    @Override // com.apk.yp0.Cfor
    /* renamed from: try */
    public String mo394try(Context context, String str, int i) {
        StringBuilder m1025while = Cgoto.m1025while(str, "_");
        m1025while.append(context.getResources().getResourceEntryName(i));
        return m1025while.toString();
    }
}
