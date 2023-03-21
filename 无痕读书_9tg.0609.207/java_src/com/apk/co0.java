package com.apk;

import com.apk.ho0;
import java.io.IOException;
import java.util.Map;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
/* compiled from: Attribute.java */
/* loaded from: classes7.dex */
public class co0 implements Map.Entry<String, String>, Cloneable {

    /* renamed from: do  reason: not valid java name */
    public String f699do;
    @Nullable

    /* renamed from: for  reason: not valid java name */
    public do0 f700for;
    @Nullable

    /* renamed from: if  reason: not valid java name */
    public String f701if;

    /* renamed from: new  reason: not valid java name */
    public static final String[] f697new = {"allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"};

    /* renamed from: try  reason: not valid java name */
    public static final Pattern f698try = Pattern.compile("[a-zA-Z_:][-a-zA-Z0-9_:.]*");

    /* renamed from: case  reason: not valid java name */
    public static final Pattern f694case = Pattern.compile("[^-a-zA-Z0-9_:.]");

    /* renamed from: else  reason: not valid java name */
    public static final Pattern f695else = Pattern.compile("[^\\x00-\\x1f\\x7f-\\x9f \"'/=]+");

    /* renamed from: goto  reason: not valid java name */
    public static final Pattern f696goto = Pattern.compile("[\\x00-\\x1f\\x7f-\\x9f \"'/=]");

    public co0(String str, @Nullable String str2, @Nullable do0 do0Var) {
        sb0.m2418instanceof(str);
        String trim = str.trim();
        sb0.m2435transient(trim);
        this.f699do = trim;
        this.f701if = str2;
        this.f700for = do0Var;
    }

    @Nullable
    /* renamed from: do  reason: not valid java name */
    public static String m376do(String str, ho0.Cdo.EnumC0066do enumC0066do) {
        if (enumC0066do == ho0.Cdo.EnumC0066do.xml && !f698try.matcher(str).matches()) {
            String replaceAll = f694case.matcher(str).replaceAll("");
            if (f698try.matcher(replaceAll).matches()) {
                return replaceAll;
            }
            return null;
        } else if (enumC0066do != ho0.Cdo.EnumC0066do.html || f695else.matcher(str).matches()) {
            return str;
        } else {
            String replaceAll2 = f696goto.matcher(str).replaceAll("");
            if (f695else.matcher(replaceAll2).matches()) {
                return replaceAll2;
            }
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0024, code lost:
        if ((java.util.Arrays.binarySearch(com.apk.co0.f697new, r6) >= 0) != false) goto L13;
     */
    /* renamed from: if  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m377if(java.lang.String r6, @javax.annotation.Nullable java.lang.String r7, java.lang.Appendable r8, com.apk.ho0.Cdo r9) throws java.io.IOException {
        /*
            r8.append(r6)
            com.apk.ho0$do$do r0 = r9.f1915goto
            com.apk.ho0$do$do r1 = com.apk.ho0.Cdo.EnumC0066do.html
            r2 = 0
            r3 = 1
            if (r0 != r1) goto L27
            if (r7 == 0) goto L26
            boolean r0 = r7.isEmpty()
            if (r0 != 0) goto L19
            boolean r0 = r7.equalsIgnoreCase(r6)
            if (r0 == 0) goto L27
        L19:
            java.lang.String[] r0 = com.apk.co0.f697new
            int r6 = java.util.Arrays.binarySearch(r0, r6)
            if (r6 < 0) goto L23
            r6 = 1
            goto L24
        L23:
            r6 = 0
        L24:
            if (r6 == 0) goto L27
        L26:
            r2 = 1
        L27:
            if (r2 != 0) goto L40
            java.lang.String r6 = "=\""
            r8.append(r6)
            if (r7 != 0) goto L32
            java.lang.String r7 = ""
        L32:
            r1 = r7
            r3 = 1
            r4 = 0
            r5 = 0
            r0 = r8
            r2 = r9
            com.apk.ko0.m1541for(r0, r1, r2, r3, r4, r5)
            r6 = 34
            r8.append(r6)
        L40:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.co0.m377if(java.lang.String, java.lang.String, java.lang.Appendable, com.apk.ho0$do):void");
    }

    public Object clone() throws CloneNotSupportedException {
        try {
            return (co0) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // java.util.Map.Entry
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || co0.class != obj.getClass()) {
            return false;
        }
        co0 co0Var = (co0) obj;
        String str = this.f699do;
        if (str == null ? co0Var.f699do == null : str.equals(co0Var.f699do)) {
            String str2 = this.f701if;
            String str3 = co0Var.f701if;
            return str2 != null ? str2.equals(str3) : str3 == null;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public String getKey() {
        return this.f699do;
    }

    @Override // java.util.Map.Entry
    public String getValue() {
        String str = this.f701if;
        return str == null ? "" : str;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        String str = this.f699do;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f701if;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public String setValue(@Nullable String str) {
        int m490class;
        String str2 = str;
        String str3 = this.f701if;
        do0 do0Var = this.f700for;
        if (do0Var != null && (m490class = do0Var.m490class(this.f699do)) != -1) {
            str3 = this.f700for.m493else(this.f699do);
            this.f700for.f949for[m490class] = str2;
        }
        this.f701if = str2;
        return str3 == null ? "" : str3;
    }

    public String toString() {
        StringBuilder m253if = bo0.m253if();
        try {
            ho0.Cdo cdo = new ho0("").f1908break;
            String str = this.f699do;
            String str2 = this.f701if;
            String m376do = m376do(str, cdo.f1915goto);
            if (m376do != null) {
                m377if(m376do, str2, m253if, cdo);
            }
            return bo0.m246catch(m253if);
        } catch (IOException e) {
            throw new xn0(e);
        }
    }
}
