package com.apk;

import java.io.File;
import java.util.Comparator;

/* compiled from: FileComparator.java */
/* loaded from: classes8.dex */
public class sh implements Comparator<File> {
    @Override // java.util.Comparator
    public int compare(File file, File file2) {
        File file3 = file;
        File file4 = file2;
        if (file3 == file4) {
            return 0;
        }
        if (file3.isDirectory() && file4.isFile()) {
            return -1;
        }
        if (file3.isFile() && file4.isDirectory()) {
            return 1;
        }
        return file3.getName().compareToIgnoreCase(file4.getName());
    }
}
