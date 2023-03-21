package com.apk;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import com.apk.yp0;
/* compiled from: SkinBuildInLoader.java */
/* loaded from: classes7.dex */
public class dr0 implements yp0.Cfor {
    @Override // com.apk.yp0.Cfor
    /* renamed from: do  reason: not valid java name */
    public ColorStateList mo507do(Context context, String str, int i) {
        return null;
    }

    @Override // com.apk.yp0.Cfor
    /* renamed from: for  reason: not valid java name */
    public ColorStateList mo508for(Context context, String str, int i) {
        return null;
    }

    @Override // com.apk.yp0.Cfor
    public int getType() {
        return 1;
    }

    @Override // com.apk.yp0.Cfor
    /* renamed from: if  reason: not valid java name */
    public Drawable mo509if(Context context, String str, int i) {
        return null;
    }

    @Override // com.apk.yp0.Cfor
    /* renamed from: new  reason: not valid java name */
    public String mo510new(Context context, String str) {
        lq0.m1663new().m1665goto(context.getResources(), context.getPackageName(), str, this);
        return str;
    }

    @Override // com.apk.yp0.Cfor
    /* renamed from: try */
    public String mo394try(Context context, String str, int i) {
        return context.getResources().getResourceEntryName(i) + "_" + str;
    }
}
