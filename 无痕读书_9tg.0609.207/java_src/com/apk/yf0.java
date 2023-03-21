package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;
/* compiled from: CacheControl.kt */
/* loaded from: classes7.dex */
public final class yf0 {

    /* renamed from: final  reason: not valid java name */
    public static final Cdo f5920final = new Cdo(null);

    /* renamed from: break  reason: not valid java name */
    public final boolean f5921break;

    /* renamed from: case  reason: not valid java name */
    public final boolean f5922case;

    /* renamed from: catch  reason: not valid java name */
    public final boolean f5923catch;

    /* renamed from: class  reason: not valid java name */
    public final boolean f5924class;

    /* renamed from: const  reason: not valid java name */
    public String f5925const;

    /* renamed from: do  reason: not valid java name */
    public final boolean f5926do;

    /* renamed from: else  reason: not valid java name */
    public final boolean f5927else;

    /* renamed from: for  reason: not valid java name */
    public final int f5928for;

    /* renamed from: goto  reason: not valid java name */
    public final int f5929goto;

    /* renamed from: if  reason: not valid java name */
    public final boolean f5930if;

    /* renamed from: new  reason: not valid java name */
    public final int f5931new;

    /* renamed from: this  reason: not valid java name */
    public final int f5932this;

    /* renamed from: try  reason: not valid java name */
    public final boolean f5933try;

    /* compiled from: CacheControl.kt */
    /* renamed from: com.apk.yf0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }

        /* renamed from: do  reason: not valid java name */
        public final int m3064do(String str, String str2, int i) {
            int length = str.length();
            while (i < length) {
                if (ie0.m1195do(str2, str.charAt(i), false, 2)) {
                    return i;
                }
                i++;
            }
            return str.length();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00cd  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00d1  */
        @kotlin.jvm.JvmStatic
        @org.jetbrains.annotations.NotNull
        /* renamed from: if  reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.apk.yf0 m3065if(@org.jetbrains.annotations.NotNull com.apk.sg0 r27) {
            /*
                Method dump skipped, instructions count: 391
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.yf0.Cdo.m3065if(com.apk.sg0):com.apk.yf0");
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        nd0.m1875new(timeUnit, "timeUnit");
        timeUnit.toSeconds((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public yf0(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str, md0 md0Var) {
        this.f5926do = z;
        this.f5930if = z2;
        this.f5928for = i;
        this.f5931new = i2;
        this.f5933try = z3;
        this.f5922case = z4;
        this.f5927else = z5;
        this.f5929goto = i3;
        this.f5932this = i4;
        this.f5921break = z6;
        this.f5923catch = z7;
        this.f5924class = z8;
        this.f5925const = str;
    }

    @NotNull
    public String toString() {
        String str = this.f5925const;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            if (this.f5926do) {
                sb.append("no-cache, ");
            }
            if (this.f5930if) {
                sb.append("no-store, ");
            }
            if (this.f5928for != -1) {
                sb.append("max-age=");
                sb.append(this.f5928for);
                sb.append(", ");
            }
            if (this.f5931new != -1) {
                sb.append("s-maxage=");
                sb.append(this.f5931new);
                sb.append(", ");
            }
            if (this.f5933try) {
                sb.append("private, ");
            }
            if (this.f5922case) {
                sb.append("public, ");
            }
            if (this.f5927else) {
                sb.append("must-revalidate, ");
            }
            if (this.f5929goto != -1) {
                sb.append("max-stale=");
                sb.append(this.f5929goto);
                sb.append(", ");
            }
            if (this.f5932this != -1) {
                sb.append("min-fresh=");
                sb.append(this.f5932this);
                sb.append(", ");
            }
            if (this.f5921break) {
                sb.append("only-if-cached, ");
            }
            if (this.f5923catch) {
                sb.append("no-transform, ");
            }
            if (this.f5924class) {
                sb.append("immutable, ");
            }
            if (sb.length() == 0) {
                return "";
            }
            sb.delete(sb.length() - 2, sb.length());
            String sb2 = sb.toString();
            nd0.m1872for(sb2, "StringBuilder().apply(builderAction).toString()");
            this.f5925const = sb2;
            return sb2;
        }
        return str;
    }
}
