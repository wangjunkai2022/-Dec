package com.tencent.bugly.proguard;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    public StringBuilder f12112a;
    public int b;

    public z(StringBuilder sb, int i) {
        this.b = 0;
        this.f12112a = sb;
        this.b = i;
    }

    private void a(String str) {
        for (int i = 0; i < this.b; i++) {
            this.f12112a.append('\t');
        }
        if (str != null) {
            StringBuilder sb = this.f12112a;
            sb.append(str);
            sb.append(": ");
        }
    }

    public static boolean a(File file, String str, long j, boolean z) {
        if (file == null) {
            return false;
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, z));
            boolean a2 = a(bufferedWriter, str.toCharArray(), str.length(), file.length(), j);
            bufferedWriter.close();
            return a2;
        } catch (Throwable th) {
            y.a(th);
            return false;
        }
    }

    public z a(boolean z, String str) {
        a(str);
        StringBuilder sb = this.f12112a;
        sb.append(z ? 'T' : 'F');
        sb.append('\n');
        return this;
    }

    public z a(byte b, String str) {
        a(str);
        StringBuilder sb = this.f12112a;
        sb.append((int) b);
        sb.append('\n');
        return this;
    }

    public z a(char c, String str) {
        a(str);
        StringBuilder sb = this.f12112a;
        sb.append(c);
        sb.append('\n');
        return this;
    }

    public z a(short s, String str) {
        a(str);
        StringBuilder sb = this.f12112a;
        sb.append((int) s);
        sb.append('\n');
        return this;
    }

    public z a(int i, String str) {
        a(str);
        StringBuilder sb = this.f12112a;
        sb.append(i);
        sb.append('\n');
        return this;
    }

    public z a(long j, String str) {
        a(str);
        StringBuilder sb = this.f12112a;
        sb.append(j);
        sb.append('\n');
        return this;
    }

    public static boolean a(Writer writer, char[] cArr, int i, long j, long j2) {
        if (j >= j2) {
            return false;
        }
        try {
            if ((i << 1) + j <= j2) {
                writer.write(cArr, 0, i);
            } else {
                writer.write(cArr, 0, (int) ((j2 - j) / 2));
            }
            writer.flush();
            return true;
        } catch (IOException e) {
            y.a(e);
            return false;
        }
    }

    public z a(float f, String str) {
        a(str);
        StringBuilder sb = this.f12112a;
        sb.append(f);
        sb.append('\n');
        return this;
    }

    public z a(double d, String str) {
        a(str);
        StringBuilder sb = this.f12112a;
        sb.append(d);
        sb.append('\n');
        return this;
    }

    public z a(String str, String str2) {
        a(str2);
        if (str == null) {
            this.f12112a.append("null\n");
        } else {
            StringBuilder sb = this.f12112a;
            sb.append(str);
            sb.append('\n');
        }
        return this;
    }

    public static void a(String str, String str2, String str3, long j) {
        try {
            int i = 0;
            for (File file : a(str, str2, str3, j, false, null)) {
                y.c("File %s is to be deleted.", file.getName());
                if (file.delete()) {
                    i++;
                }
            }
            y.c("Number of overdue trace files that has deleted: " + i, new Object[0]);
        } catch (Throwable th) {
            y.a(th);
        }
    }

    public z a(byte[] bArr, String str) {
        a(str);
        if (bArr == null) {
            this.f12112a.append("null\n");
            return this;
        } else if (bArr.length == 0) {
            StringBuilder sb = this.f12112a;
            sb.append(bArr.length);
            sb.append(", []\n");
            return this;
        } else {
            StringBuilder sb2 = this.f12112a;
            sb2.append(bArr.length);
            sb2.append(", [\n");
            z zVar = new z(this.f12112a, this.b + 1);
            for (byte b : bArr) {
                zVar.a(b, (String) null);
            }
            a(']', (String) null);
            return this;
        }
    }

    public static List<File> a(String str, final String str2, final String str3, long j, boolean z, Comparator<File> comparator) {
        ArrayList arrayList = new ArrayList();
        if (str2 != null && str3 != null) {
            long currentTimeMillis = System.currentTimeMillis();
            File file = new File(str);
            if (file.exists() && file.isDirectory()) {
                try {
                    File[] listFiles = file.listFiles(new FilenameFilter() { // from class: com.tencent.bugly.proguard.z.1
                        @Override // java.io.FilenameFilter
                        public final boolean accept(File file2, String str4) {
                            return str4 != null && str4.startsWith(str2) && str4.endsWith(str3);
                        }
                    });
                    if (listFiles != null && listFiles.length != 0) {
                        return a(listFiles, str2, str3, 0L, currentTimeMillis - j);
                    }
                    return arrayList;
                } catch (Throwable th) {
                    y.a(th);
                    return arrayList;
                }
            }
            return arrayList;
        }
        y.d("prefix %s and/or postfix %s is null.", str2, str3);
        return arrayList;
    }

    public z a(short[] sArr, String str) {
        a(str);
        if (sArr == null) {
            this.f12112a.append("null\n");
            return this;
        } else if (sArr.length == 0) {
            StringBuilder sb = this.f12112a;
            sb.append(sArr.length);
            sb.append(", []\n");
            return this;
        } else {
            StringBuilder sb2 = this.f12112a;
            sb2.append(sArr.length);
            sb2.append(", [\n");
            z zVar = new z(this.f12112a, this.b + 1);
            for (short s : sArr) {
                zVar.a(s, (String) null);
            }
            a(']', (String) null);
            return this;
        }
    }

    public z a(int[] iArr, String str) {
        a(str);
        if (iArr == null) {
            this.f12112a.append("null\n");
            return this;
        } else if (iArr.length == 0) {
            StringBuilder sb = this.f12112a;
            sb.append(iArr.length);
            sb.append(", []\n");
            return this;
        } else {
            StringBuilder sb2 = this.f12112a;
            sb2.append(iArr.length);
            sb2.append(", [\n");
            z zVar = new z(this.f12112a, this.b + 1);
            for (int i : iArr) {
                zVar.a(i, (String) null);
            }
            a(']', (String) null);
            return this;
        }
    }

    public z a(long[] jArr, String str) {
        a(str);
        if (jArr == null) {
            this.f12112a.append("null\n");
            return this;
        } else if (jArr.length == 0) {
            StringBuilder sb = this.f12112a;
            sb.append(jArr.length);
            sb.append(", []\n");
            return this;
        } else {
            StringBuilder sb2 = this.f12112a;
            sb2.append(jArr.length);
            sb2.append(", [\n");
            z zVar = new z(this.f12112a, this.b + 1);
            for (long j : jArr) {
                zVar.a(j, (String) null);
            }
            a(']', (String) null);
            return this;
        }
    }

    public static List<File> a(File[] fileArr, String str, String str2, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        for (File file : fileArr) {
            long a2 = a(file.getName(), str, str2);
            if (a2 >= 0 && j <= a2 && a2 <= j2) {
                arrayList.add(file);
            }
        }
        return arrayList;
    }

    public z a(float[] fArr, String str) {
        a(str);
        if (fArr == null) {
            this.f12112a.append("null\n");
            return this;
        } else if (fArr.length == 0) {
            StringBuilder sb = this.f12112a;
            sb.append(fArr.length);
            sb.append(", []\n");
            return this;
        } else {
            StringBuilder sb2 = this.f12112a;
            sb2.append(fArr.length);
            sb2.append(", [\n");
            z zVar = new z(this.f12112a, this.b + 1);
            for (float f : fArr) {
                zVar.a(f, (String) null);
            }
            a(']', (String) null);
            return this;
        }
    }

    public static long a(String str, String str2, String str3) {
        if (str == null) {
            y.d("File name is null.", new Object[0]);
            return -1L;
        }
        try {
            if (str.startsWith(str2) && str.endsWith(str3)) {
                return Long.parseLong(str.substring(str2.length(), str.indexOf(str3)));
            }
        } catch (Throwable th) {
            y.a(th);
        }
        return -1L;
    }

    public z a(double[] dArr, String str) {
        a(str);
        if (dArr == null) {
            this.f12112a.append("null\n");
            return this;
        } else if (dArr.length == 0) {
            StringBuilder sb = this.f12112a;
            sb.append(dArr.length);
            sb.append(", []\n");
            return this;
        } else {
            StringBuilder sb2 = this.f12112a;
            sb2.append(dArr.length);
            sb2.append(", [\n");
            z zVar = new z(this.f12112a, this.b + 1);
            for (double d : dArr) {
                zVar.a(d, (String) null);
            }
            a(']', (String) null);
            return this;
        }
    }

    public static boolean a(String str, String str2, int i) {
        boolean z = true;
        y.c("rqdp{  sv sd start} %s", str);
        if (str2 != null && str2.trim().length() > 0) {
            File file = new File(str);
            try {
                if (!file.exists()) {
                    if (file.getParentFile() != null) {
                        file.getParentFile().mkdirs();
                    }
                    file.createNewFile();
                }
                long j = i;
                if (file.length() >= j) {
                    z = false;
                }
                return a(file, str2, j, z);
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }

    public <K, V> z a(Map<K, V> map, String str) {
        a(str);
        if (map == null) {
            this.f12112a.append("null\n");
            return this;
        } else if (map.isEmpty()) {
            StringBuilder sb = this.f12112a;
            sb.append(map.size());
            sb.append(", {}\n");
            return this;
        } else {
            StringBuilder sb2 = this.f12112a;
            sb2.append(map.size());
            sb2.append(", {\n");
            z zVar = new z(this.f12112a, this.b + 1);
            z zVar2 = new z(this.f12112a, this.b + 2);
            for (Map.Entry<K, V> entry : map.entrySet()) {
                zVar.a('(', (String) null);
                zVar2.a((z) entry.getKey(), (String) null);
                zVar2.a((z) entry.getValue(), (String) null);
                zVar.a(')', (String) null);
            }
            a('}', (String) null);
            return this;
        }
    }

    public <T> z a(T[] tArr, String str) {
        a(str);
        if (tArr == null) {
            this.f12112a.append("null\n");
            return this;
        } else if (tArr.length == 0) {
            StringBuilder sb = this.f12112a;
            sb.append(tArr.length);
            sb.append(", []\n");
            return this;
        } else {
            StringBuilder sb2 = this.f12112a;
            sb2.append(tArr.length);
            sb2.append(", [\n");
            z zVar = new z(this.f12112a, this.b + 1);
            for (T t : tArr) {
                zVar.a((z) t, (String) null);
            }
            a(']', (String) null);
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> z a(Collection<T> collection, String str) {
        if (collection == null) {
            a(str);
            this.f12112a.append("null\t");
            return this;
        }
        return a(collection.toArray(), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> z a(T t, String str) {
        if (t == null) {
            this.f12112a.append("null\n");
        } else if (t instanceof Byte) {
            a(((Byte) t).byteValue(), str);
        } else if (t instanceof Boolean) {
            a(((Boolean) t).booleanValue(), str);
        } else if (t instanceof Short) {
            a(((Short) t).shortValue(), str);
        } else if (t instanceof Integer) {
            a(((Integer) t).intValue(), str);
        } else if (t instanceof Long) {
            a(((Long) t).longValue(), str);
        } else if (t instanceof Float) {
            a(((Float) t).floatValue(), str);
        } else if (t instanceof Double) {
            a(((Double) t).doubleValue(), str);
        } else if (t instanceof String) {
            a((String) t, str);
        } else if (t instanceof Map) {
            a((Map) t, str);
        } else if (t instanceof List) {
            a((Collection) ((List) t), str);
        } else if (t instanceof j) {
            a((j) t, str);
        } else if (t instanceof byte[]) {
            a((byte[]) t, str);
        } else if (t instanceof boolean[]) {
            a((z) ((boolean[]) t), str);
        } else if (t instanceof short[]) {
            a((short[]) t, str);
        } else if (t instanceof int[]) {
            a((int[]) t, str);
        } else if (t instanceof long[]) {
            a((long[]) t, str);
        } else if (t instanceof float[]) {
            a((float[]) t, str);
        } else if (t instanceof double[]) {
            a((double[]) t, str);
        } else if (t.getClass().isArray()) {
            a((Object[]) t, str);
        } else {
            throw new b("write object error: unsupport type.");
        }
        return this;
    }

    public z a(j jVar, String str) {
        a('{', str);
        if (jVar == null) {
            StringBuilder sb = this.f12112a;
            sb.append('\t');
            sb.append("null");
        } else {
            jVar.a(this.f12112a, this.b + 1);
        }
        a('}', (String) null);
        return this;
    }
}
