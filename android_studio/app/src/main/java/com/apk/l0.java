package com.apk;

import java.io.File;

/* compiled from: AppInitHelper.java */
/* loaded from: classes8.dex */
public final class l0 {
    /* renamed from: do  reason: not valid java name */
    public void m1582do(File file) {
        try {
            String m23new = a6.m18else().m23new();
            if (eg.n(file.toString(), m23new, null)) {
                File file2 = new File(m23new);
                if (file2.exists() && file2.isDirectory()) {
                    File[] listFiles = file2.listFiles();
                    if (listFiles.length > 0) {
                        tt.f4763do.putBoolean("SP_LOAD_DEFAULT_FONT_KEY", true);
                        tt.f4763do.putString("SP_DEFAULT_TEXT_FONT_KEY", listFiles[0].getAbsolutePath());
                    }
                }
                file.delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
