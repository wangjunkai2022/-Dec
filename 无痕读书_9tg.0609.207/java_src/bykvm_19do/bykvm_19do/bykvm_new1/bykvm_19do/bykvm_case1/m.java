package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
/* compiled from: Stack.java */
/* loaded from: classes8.dex */
public final class m {

    /* compiled from: Stack.java */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final PrintWriter f11064a;

        public a(PrintWriter printWriter) {
            this.f11064a = printWriter;
        }

        public Object a() {
            return this.f11064a;
        }

        public void a(Object obj) {
            this.f11064a.println(obj);
        }
    }

    public static String a(StackTraceElement[] stackTraceElementArr) {
        StringBuilder sb = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            a(stackTraceElement, sb);
        }
        return sb.toString();
    }

    public static boolean b(String str) {
        Set<String> a2 = e.a();
        if (!a2.contains(str)) {
            for (String str2 : a2) {
                if (TextUtils.isEmpty(str) || !str.startsWith(str2)) {
                }
            }
            return false;
        }
        return true;
    }

    public static boolean c(Throwable th) {
        int i = 0;
        while (th != null) {
            if (th instanceof StackOverflowError) {
                return true;
            }
            if (i > 20) {
                return false;
            }
            th = th.getCause();
            i++;
        }
        return false;
    }

    public static StringBuilder a(StackTraceElement stackTraceElement, StringBuilder sb) {
        String className = stackTraceElement.getClassName();
        sb.append("  at ");
        sb.append(className);
        sb.append(".");
        sb.append(stackTraceElement.getMethodName());
        sb.append("(");
        sb.append(stackTraceElement.getFileName());
        sb.append(":");
        sb.append(stackTraceElement.getLineNumber());
        sb.append(")\n");
        return sb;
    }

    public static boolean b(Throwable th) {
        if (th == null) {
            return false;
        }
        int i = 0;
        while (th != null) {
            try {
                if (th instanceof OutOfMemoryError) {
                    return true;
                }
                if (i > 20) {
                    return false;
                }
                i++;
                th = th.getCause();
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @NonNull
    public static String a(@NonNull Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            if (c(th)) {
                a(th, printWriter);
            } else {
                th.printStackTrace(printWriter);
            }
            String stringWriter2 = stringWriter.toString();
            printWriter.close();
            return stringWriter2;
        } catch (Exception unused) {
            printWriter.close();
            return "";
        } catch (Throwable th2) {
            printWriter.close();
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0029 A[SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject a(java.lang.String r16) {
        /*
            r0 = r16
            java.lang.String r1 = ")"
            java.lang.String r2 = "("
            r3 = 0
            java.util.Map r4 = java.lang.Thread.getAllStackTraces()     // Catch: java.lang.Throwable -> Le0
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Le0
            r5.<init>()     // Catch: java.lang.Throwable -> Le0
            if (r4 != 0) goto L13
            return r3
        L13:
            java.lang.String r6 = "thread_all_count"
            int r7 = r4.size()     // Catch: java.lang.Throwable -> Le0
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> Le0
            org.json.JSONArray r6 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Le0
            r6.<init>()     // Catch: java.lang.Throwable -> Le0
            java.util.Set r4 = r4.entrySet()     // Catch: java.lang.Throwable -> Le0
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> Le0
        L29:
            boolean r7 = r4.hasNext()     // Catch: java.lang.Throwable -> Le0
            if (r7 == 0) goto Lda
            java.lang.Object r7 = r4.next()     // Catch: java.lang.Throwable -> Le0
            java.util.Map$Entry r7 = (java.util.Map.Entry) r7     // Catch: java.lang.Throwable -> Le0
            org.json.JSONObject r8 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Le0
            r8.<init>()     // Catch: java.lang.Throwable -> Le0
            java.lang.Object r9 = r7.getKey()     // Catch: java.lang.Throwable -> Le0
            java.lang.Thread r9 = (java.lang.Thread) r9     // Catch: java.lang.Throwable -> Le0
            java.lang.String r10 = r9.getName()     // Catch: java.lang.Throwable -> Le0
            boolean r11 = b(r10)     // Catch: java.lang.Throwable -> Le0
            if (r11 != 0) goto L29
            if (r0 == 0) goto L5f
            boolean r11 = r0.equals(r10)     // Catch: java.lang.Throwable -> Le0
            if (r11 != 0) goto L29
            boolean r11 = r10.startsWith(r0)     // Catch: java.lang.Throwable -> Le0
            if (r11 != 0) goto L29
            boolean r10 = r10.endsWith(r0)     // Catch: java.lang.Throwable -> Le0
            if (r10 == 0) goto L5f
            goto L29
        L5f:
            java.lang.String r10 = "thread_name"
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le0
            r11.<init>()     // Catch: java.lang.Throwable -> Le0
            java.lang.String r12 = r9.getName()     // Catch: java.lang.Throwable -> Le0
            r11.append(r12)     // Catch: java.lang.Throwable -> Le0
            r11.append(r2)     // Catch: java.lang.Throwable -> Le0
            long r12 = r9.getId()     // Catch: java.lang.Throwable -> Le0
            r11.append(r12)     // Catch: java.lang.Throwable -> Le0
            r11.append(r1)     // Catch: java.lang.Throwable -> Le0
            java.lang.String r9 = r11.toString()     // Catch: java.lang.Throwable -> Le0
            r8.put(r10, r9)     // Catch: java.lang.Throwable -> Le0
            java.lang.Object r7 = r7.getValue()     // Catch: java.lang.Throwable -> Le0
            java.lang.StackTraceElement[] r7 = (java.lang.StackTraceElement[]) r7     // Catch: java.lang.Throwable -> Le0
            r10 = 1
            if (r7 == 0) goto Ld2
            org.json.JSONArray r11 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Le0
            r11.<init>()     // Catch: java.lang.Throwable -> Le0
            int r12 = r7.length     // Catch: java.lang.Throwable -> Le0
            r13 = 0
        L91:
            if (r13 >= r12) goto Lc4
            r14 = r7[r13]     // Catch: java.lang.Throwable -> Le0
            java.lang.String r15 = r14.getClassName()     // Catch: java.lang.Throwable -> Le0
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le0
            r9.<init>()     // Catch: java.lang.Throwable -> Le0
            r9.append(r15)     // Catch: java.lang.Throwable -> Le0
            java.lang.String r15 = "."
            r9.append(r15)     // Catch: java.lang.Throwable -> Le0
            java.lang.String r15 = r14.getMethodName()     // Catch: java.lang.Throwable -> Le0
            r9.append(r15)     // Catch: java.lang.Throwable -> Le0
            r9.append(r2)     // Catch: java.lang.Throwable -> Le0
            int r14 = r14.getLineNumber()     // Catch: java.lang.Throwable -> Le0
            r9.append(r14)     // Catch: java.lang.Throwable -> Le0
            r9.append(r1)     // Catch: java.lang.Throwable -> Le0
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> Le0
            r11.put(r9)     // Catch: java.lang.Throwable -> Le0
            int r13 = r13 + 1
            goto L91
        Lc4:
            java.lang.String r7 = "thread_stack"
            r8.put(r7, r11)     // Catch: java.lang.Throwable -> Le0
            int r7 = r11.length()     // Catch: java.lang.Throwable -> Le0
            if (r7 <= 0) goto Ld0
            goto Ld2
        Ld0:
            r9 = 0
            goto Ld3
        Ld2:
            r9 = 1
        Ld3:
            if (r9 == 0) goto L29
            r6.put(r8)     // Catch: java.lang.Throwable -> Le0
            goto L29
        Lda:
            java.lang.String r0 = "thread_stacks"
            r5.put(r0, r6)     // Catch: java.lang.Throwable -> Le0
            return r5
        Le0:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.m.a(java.lang.String):org.json.JSONObject");
    }

    public static void a(Throwable th, PrintWriter printWriter) {
        if (th == null || printWriter == null) {
            return;
        }
        a aVar = new a(printWriter);
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        newSetFromMap.add(th);
        synchronized (aVar.a()) {
            aVar.a(th);
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i];
                if (i2 > 256) {
                    aVar.a("\t... skip " + (stackTrace.length - i2) + " lines");
                    break;
                }
                aVar.a("\tat " + stackTraceElement);
                i2++;
                i++;
            }
            for (Throwable th2 : th.getSuppressed()) {
                a(th2, aVar, stackTrace, "Suppressed: ", "\t", newSetFromMap);
            }
            Throwable cause = th.getCause();
            if (cause != null) {
                a(cause, aVar, stackTrace, "Caused by: ", "", newSetFromMap);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Throwable th, a aVar, StackTraceElement[] stackTraceElementArr, String str, String str2, Set<Throwable> set) {
        if (set.contains(th)) {
            aVar.a("\t[CIRCULAR REFERENCE:" + th + "]");
            return;
        }
        set.add(th);
        StackTraceElement[] stackTrace = th.getStackTrace();
        int min = Math.min(stackTrace.length, 256);
        int i = min - 1;
        int i2 = i;
        for (int min2 = Math.min(stackTraceElementArr.length, 256) - 1; i2 >= 0 && min2 >= 0 && stackTrace[i2].equals(stackTraceElementArr[min2]); min2--) {
            i2--;
        }
        int i3 = i - i2;
        aVar.a(str2 + str + th);
        for (int i4 = 0; i4 <= i2; i4++) {
            StringBuilder m1025while = Cgoto.m1025while(str2, "\tat ");
            m1025while.append(stackTrace[i4]);
            aVar.a(m1025while.toString());
        }
        if (min < stackTrace.length) {
            StringBuilder m1016super = Cgoto.m1016super("\t... skip ");
            m1016super.append(stackTrace.length - min);
            m1016super.append(" lines");
            aVar.a(m1016super.toString());
        }
        if (i3 != 0) {
            aVar.a(str2 + "\t... " + i3 + " more");
        }
        for (Throwable th2 : th.getSuppressed()) {
            a(th2, aVar, stackTrace, "Suppressed: ", Cgoto.m989case(str2, "\t"), set);
        }
        Throwable cause = th.getCause();
        if (cause != null) {
            a(cause, aVar, stackTrace, "Caused by: ", str2, set);
        }
    }
}
