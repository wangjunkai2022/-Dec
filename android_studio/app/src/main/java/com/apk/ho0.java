package com.apk;

import androidx.core.app.NotificationCompatJellybean;
import com.apk.hp0;
import com.apk.ko0;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import javax.annotation.Nullable;

/* compiled from: Document.java */
/* loaded from: classes7.dex */
public class ho0 extends jo0 {

    /* renamed from: const  reason: not valid java name */
    public static final hp0 f1907const = new hp0.Ctransient(NotificationCompatJellybean.KEY_TITLE);

    /* renamed from: break  reason: not valid java name */
    public Cdo f1908break;

    /* renamed from: catch  reason: not valid java name */
    public wo0 f1909catch;

    /* renamed from: class  reason: not valid java name */
    public Cif f1910class;

    /* compiled from: Document.java */
    /* renamed from: com.apk.ho0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo implements Cloneable {
        @Nullable

        /* renamed from: new  reason: not valid java name */
        public ko0.Cdo f1917new;

        /* renamed from: do  reason: not valid java name */
        public ko0.Cif f1912do = ko0.Cif.base;

        /* renamed from: if  reason: not valid java name */
        public Charset f1916if = ao0.f128do;

        /* renamed from: for  reason: not valid java name */
        public final ThreadLocal<CharsetEncoder> f1914for = new ThreadLocal<>();

        /* renamed from: try  reason: not valid java name */
        public boolean f1918try = true;

        /* renamed from: case  reason: not valid java name */
        public boolean f1911case = false;

        /* renamed from: else  reason: not valid java name */
        public int f1913else = 1;

        /* renamed from: goto  reason: not valid java name */
        public EnumC0066do f1915goto = EnumC0066do.html;

        /* compiled from: Document.java */
        /* renamed from: com.apk.ho0$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes7.dex */
        public enum EnumC0066do {
            html,
            xml
        }

        /* renamed from: do  reason: not valid java name */
        public Cdo clone() {
            try {
                Cdo cdo = (Cdo) super.clone();
                String name = this.f1916if.name();
                if (cdo != null) {
                    cdo.f1916if = Charset.forName(name);
                    cdo.f1912do = ko0.Cif.valueOf(this.f1912do.name());
                    return cdo;
                }
                throw null;
            } catch (CloneNotSupportedException e) {
                throw new RuntimeException(e);
            }
        }

        /* renamed from: if  reason: not valid java name */
        public CharsetEncoder m1149if() {
            ko0.Cdo cdo;
            CharsetEncoder newEncoder = this.f1916if.newEncoder();
            this.f1914for.set(newEncoder);
            String name = newEncoder.charset().name();
            if (name.equals("US-ASCII")) {
                cdo = ko0.Cdo.ascii;
            } else if (name.startsWith("UTF-")) {
                cdo = ko0.Cdo.utf;
            } else {
                cdo = ko0.Cdo.fallback;
            }
            this.f1917new = cdo;
            return newEncoder;
        }
    }

    /* compiled from: Document.java */
    /* renamed from: com.apk.ho0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public enum Cif {
        noQuirks,
        quirks,
        limitedQuirks
    }

    public ho0(String str) {
        super(xo0.m3028do("#root", vo0.f5183for), str, null);
        this.f1908break = new Cdo();
        this.f1910class = Cif.noQuirks;
        this.f1909catch = new wo0(new ro0());
    }

    @Override // com.apk.jo0
    /* renamed from: f */
    public ho0 mo1146interface() {
        ho0 ho0Var = (ho0) super.clone();
        ho0Var.f1908break = this.f1908break.clone();
        return ho0Var;
    }

    @Override // com.apk.jo0, com.apk.no0
    /* renamed from: return */
    public String mo669return() {
        return "#document";
    }

    @Override // com.apk.no0
    /* renamed from: static  reason: not valid java name */
    public String mo1147static() {
        return super.m1380implements();
    }
}
