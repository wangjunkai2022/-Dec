package com.apk;

import java.io.File;
import java.io.FileFilter;

/* compiled from: LFileFilter.java */
/* loaded from: classes8.dex */
public class wh implements FileFilter {

    /* renamed from: do  reason: not valid java name */
    public String[] f5282do;

    public wh(String[] strArr) {
        this.f5282do = strArr;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        String[] strArr;
        if (file.isDirectory() || (strArr = this.f5282do) == null || strArr.length <= 0) {
            return true;
        }
        for (int i = 0; i < this.f5282do.length; i++) {
            if (file.getName().endsWith(this.f5282do[i].toLowerCase()) || file.getName().endsWith(this.f5282do[i].toUpperCase())) {
                return true;
            }
        }
        return false;
    }
}
