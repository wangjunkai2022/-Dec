package com.apk;

import android.net.Uri;
import android.widget.EditText;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.biquge.ebook.app.widget.ClearEditText;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.base.TTBaseAd;
import com.umeng.commonsdk.debug.UMLogUtils;
import java.io.File;
import java.util.HashMap;
import java.util.List;

/* compiled from: outline */
/* renamed from: com.apk.goto  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cgoto {
    /* renamed from: abstract  reason: not valid java name */
    public static void m987abstract(StringBuilder sb, String str, char c, String str2) {
        sb.append(str);
        sb.append(c);
        sb.append(str2);
    }

    /* renamed from: break  reason: not valid java name */
    public static String m988break(StringBuilder sb, String str) {
        sb.append(p0.m2009new());
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: case  reason: not valid java name */
    public static String m989case(String str, String str2) {
        return str + str2;
    }

    /* renamed from: catch  reason: not valid java name */
    public static String m990catch(StringBuilder sb, String str) {
        sb.append(p0.m2014try());
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: class  reason: not valid java name */
    public static String m991class(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: const  reason: not valid java name */
    public static String m992const() {
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t.a(Thread.currentThread().getStackTrace());
    }

    /* renamed from: continue  reason: not valid java name */
    public static void m993continue(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    /* renamed from: default  reason: not valid java name */
    public static void m994default(String str, Exception exc) {
        String str2 = str + exc;
    }

    /* renamed from: do  reason: not valid java name */
    public static float m995do(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }

    /* renamed from: else  reason: not valid java name */
    public static String m996else(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    /* renamed from: extends  reason: not valid java name */
    public static void m997extends(String str, String str2, String str3) {
        k40.m1463this(str + str2 + str3);
    }

    /* renamed from: final  reason: not valid java name */
    public static String m998final(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: finally  reason: not valid java name */
    public static void m999finally(String str, StringBuilder sb, String str2) {
        sb.append(TTLogUtil.getTagSecondLevel(str));
        sb.append(str2);
    }

    /* renamed from: for  reason: not valid java name */
    public static String m1000for(String str, long j) {
        return str + j;
    }

    /* renamed from: goto  reason: not valid java name */
    public static String m1001goto(String str, StringBuilder sb) {
        sb.append(UMLogUtils.makeUrl(str));
        return sb.toString();
    }

    /* renamed from: if  reason: not valid java name */
    public static vx m1002if(List list, vx vxVar, String str, String str2) {
        list.add(vxVar);
        return new vx(str, str2);
    }

    /* renamed from: implements  reason: not valid java name */
    public static String m1003implements(String str, int i) {
        return str + i;
    }

    /* renamed from: import  reason: not valid java name */
    public static StringBuilder m1004import(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    /* renamed from: instanceof  reason: not valid java name */
    public static String m1005instanceof(String str, int i, String str2) {
        return str + i + str2;
    }

    /* renamed from: interface  reason: not valid java name */
    public static String m1006interface(EditText editText) {
        return editText.getText().toString().trim();
    }

    /* renamed from: native  reason: not valid java name */
    public static HashMap m1007native(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, str2);
        return hashMap;
    }

    /* renamed from: new  reason: not valid java name */
    public static String m1008new(String str, Uri uri) {
        return str + uri;
    }

    /* renamed from: package  reason: not valid java name */
    public static void m1009package(String str, StringBuilder sb, String str2, String str3) {
        sb.append(TTLogUtil.getTagSecondLevel(str));
        sb.append(str2);
        Logger.e(str3, sb.toString());
    }

    /* renamed from: private  reason: not valid java name */
    public static void m1010private(String str, Throwable th) {
        String str2 = str + th;
    }

    /* renamed from: protected  reason: not valid java name */
    public static String m1011protected(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    /* renamed from: public  reason: not valid java name */
    public static HashMap m1012public(String str, String str2, String str3, String str4) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, str2);
        hashMap.put(str3, str4);
        return hashMap;
    }

    /* renamed from: return  reason: not valid java name */
    public static void m1013return(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d dVar, AdSlot adSlot, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, TTBaseAd tTBaseAd, HashMap hashMap, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d dVar2, HashMap hashMap2) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(dVar, adSlot, iVar, tTBaseAd, hashMap);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), dVar2, hashMap2);
    }

    /* renamed from: static  reason: not valid java name */
    public static void m1014static(String str, int i, StringBuilder sb) {
        sb.append(str.length() % i);
    }

    /* renamed from: strictfp  reason: not valid java name */
    public static void m1015strictfp(jn0 jn0Var, String str, String str2, String str3) {
        jn0Var.m1363else(str);
        jn0Var.m1364for(str2);
        jn0Var.m1369try(str3);
    }

    /* renamed from: super  reason: not valid java name */
    public static StringBuilder m1016super(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    /* renamed from: switch  reason: not valid java name */
    public static void m1017switch(String str, Fragment fragment) {
        String str2 = str + fragment;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static String m1018synchronized(String str, int i, String str2, int i2) {
        return str + i + str2 + i2;
    }

    /* renamed from: this  reason: not valid java name */
    public static String m1019this(StringBuilder sb, int i, String str) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: throw  reason: not valid java name */
    public static StringBuilder m1020throw(String str, int i, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    /* renamed from: throws  reason: not valid java name */
    public static String m1021throws() {
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t.b(Thread.currentThread().getStackTrace());
    }

    /* renamed from: transient  reason: not valid java name */
    public static String m1022transient(ClearEditText clearEditText) {
        return clearEditText.getText().toString().trim();
    }

    /* renamed from: try  reason: not valid java name */
    public static String m1023try(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    /* renamed from: volatile  reason: not valid java name */
    public static boolean m1024volatile(String str) {
        return new File(str).exists();
    }

    /* renamed from: while  reason: not valid java name */
    public static StringBuilder m1025while(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }
}
