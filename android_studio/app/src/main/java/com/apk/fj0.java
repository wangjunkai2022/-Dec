package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.exifinterface.media.ExifInterface;
import com.apk.vi0;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jetbrains.annotations.NotNull;

/* compiled from: Http2Reader.kt */
/* loaded from: classes7.dex */
public final class fj0 implements Closeable {

    /* renamed from: case  reason: not valid java name */
    public static final fj0 f1381case = null;
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public static final Logger f1382try;

    /* renamed from: do  reason: not valid java name */
    public final Cdo f1383do;

    /* renamed from: for  reason: not valid java name */
    public final tk0 f1384for;

    /* renamed from: if  reason: not valid java name */
    public final vi0.Cdo f1385if;

    /* renamed from: new  reason: not valid java name */
    public final boolean f1386new;

    /* compiled from: Http2Reader.kt */
    /* renamed from: com.apk.fj0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo implements ll0 {

        /* renamed from: case  reason: not valid java name */
        public final tk0 f1387case;

        /* renamed from: do  reason: not valid java name */
        public int f1388do;

        /* renamed from: for  reason: not valid java name */
        public int f1389for;

        /* renamed from: if  reason: not valid java name */
        public int f1390if;

        /* renamed from: new  reason: not valid java name */
        public int f1391new;

        /* renamed from: try  reason: not valid java name */
        public int f1392try;

        public Cdo(@NotNull tk0 tk0Var) {
            nd0.m1875new(tk0Var, "source");
            this.f1387case = tk0Var;
        }

        @Override // com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // com.apk.ll0
        @NotNull
        /* renamed from: if */
        public ml0 mo71if() {
            return this.f1387case.mo71if();
        }

        @Override // com.apk.ll0
        /* renamed from: import */
        public long mo72import(@NotNull rk0 rk0Var, long j) throws IOException {
            int i;
            int readInt;
            nd0.m1875new(rk0Var, "sink");
            do {
                int i2 = this.f1391new;
                if (i2 == 0) {
                    this.f1387case.skip(this.f1392try);
                    this.f1392try = 0;
                    if ((this.f1390if & 4) != 0) {
                        return -1L;
                    }
                    i = this.f1389for;
                    int m1324extends = jh0.m1324extends(this.f1387case);
                    this.f1391new = m1324extends;
                    this.f1388do = m1324extends;
                    int readByte = this.f1387case.readByte() & ExifInterface.MARKER;
                    this.f1390if = this.f1387case.readByte() & ExifInterface.MARKER;
                    fj0 fj0Var = fj0.f1381case;
                    if (fj0.f1382try.isLoggable(Level.FINE)) {
                        fj0 fj0Var2 = fj0.f1381case;
                        fj0.f1382try.fine(wi0.f5312try.m2914if(true, this.f1389for, this.f1388do, readByte, this.f1390if));
                    }
                    readInt = this.f1387case.readInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                    this.f1389for = readInt;
                    if (readByte != 9) {
                        throw new IOException(readByte + " != TYPE_CONTINUATION");
                    }
                } else {
                    long mo72import = this.f1387case.mo72import(rk0Var, Math.min(j, i2));
                    if (mo72import == -1) {
                        return -1L;
                    }
                    this.f1391new -= (int) mo72import;
                    return mo72import;
                }
            } while (readInt == i);
            throw new IOException("TYPE_CONTINUATION streamId changed");
        }
    }

    /* compiled from: Http2Reader.kt */
    /* renamed from: com.apk.fj0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cif {
        /* renamed from: break  reason: not valid java name */
        void mo835break(int i, int i2, @NotNull List<ui0> list) throws IOException;

        /* renamed from: case  reason: not valid java name */
        void mo836case(boolean z, int i, @NotNull tk0 tk0Var, int i2) throws IOException;

        /* renamed from: catch  reason: not valid java name */
        void mo837catch(int i, @NotNull ti0 ti0Var, @NotNull uk0 uk0Var);

        /* renamed from: else  reason: not valid java name */
        void mo838else(boolean z, int i, int i2);

        /* renamed from: for  reason: not valid java name */
        void mo839for(boolean z, @NotNull lj0 lj0Var);

        /* renamed from: goto  reason: not valid java name */
        void mo840goto(int i, int i2, int i3, boolean z);

        /* renamed from: if  reason: not valid java name */
        void mo841if();

        /* renamed from: new  reason: not valid java name */
        void mo842new(boolean z, int i, int i2, @NotNull List<ui0> list);

        /* renamed from: this  reason: not valid java name */
        void mo843this(int i, @NotNull ti0 ti0Var);

        /* renamed from: try  reason: not valid java name */
        void mo844try(int i, long j);
    }

    static {
        Logger logger = Logger.getLogger(wi0.class.getName());
        nd0.m1872for(logger, "Logger.getLogger(Http2::class.java.name)");
        f1382try = logger;
    }

    public fj0(@NotNull tk0 tk0Var, boolean z) {
        nd0.m1875new(tk0Var, "source");
        this.f1384for = tk0Var;
        this.f1386new = z;
        Cdo cdo = new Cdo(tk0Var);
        this.f1383do = cdo;
        this.f1385if = new vi0.Cdo(cdo, 4096, 0, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x004e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0042 A[SYNTHETIC] */
    /* renamed from: break  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.apk.ui0> m831break(int r2, int r3, int r4, int r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 326
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.fj0.m831break(int, int, int, int):java.util.List");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f1384for.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x01d4, code lost:
        throw new java.io.IOException(com.apk.Cgoto.m1003implements("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: ", r11));
     */
    /* renamed from: for  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean m832for(boolean r17, @org.jetbrains.annotations.NotNull com.apk.fj0.Cif r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 810
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.fj0.m832for(boolean, com.apk.fj0$if):boolean");
    }

    /* renamed from: throw  reason: not valid java name */
    public final void m833throw(Cif cif, int i) throws IOException {
        int readInt = this.f1384for.readInt();
        cif.mo840goto(i, readInt & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, jh0.m1322do(this.f1384for.readByte(), 255) + 1, (readInt & ((int) 2147483648L)) != 0);
    }

    /* renamed from: try  reason: not valid java name */
    public final void m834try(@NotNull Cif cif) throws IOException {
        nd0.m1875new(cif, "handler");
        if (this.f1386new) {
            if (!m832for(true, cif)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        uk0 mo857new = this.f1384for.mo857new(wi0.f5308do.mo1239for());
        if (f1382try.isLoggable(Level.FINE)) {
            Logger logger = f1382try;
            StringBuilder m1016super = Cgoto.m1016super("<< CONNECTION ");
            m1016super.append(mo857new.mo1242new());
            logger.fine(jh0.m1318class(m1016super.toString(), new Object[0]));
        }
        if (!nd0.m1870do(wi0.f5308do, mo857new)) {
            StringBuilder m1016super2 = Cgoto.m1016super("Expected a connection header but was ");
            m1016super2.append(mo857new.m2714break());
            throw new IOException(m1016super2.toString());
        }
    }
}
