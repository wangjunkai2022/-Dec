package com.apk;

import androidx.core.app.Person;
import com.apk.vg0;
import com.baidu.tts.loopj.AsyncHttpClient;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.litepal.parser.LitePalParser;

/* compiled from: MultipartBody.kt */
/* loaded from: classes7.dex */
public final class wg0 extends bh0 {

    /* renamed from: break  reason: not valid java name */
    public static final byte[] f5269break;

    /* renamed from: catch  reason: not valid java name */
    public static final byte[] f5270catch;

    /* renamed from: class  reason: not valid java name */
    public static final Cdo f5271class = new Cdo(null);
    @JvmField
    @NotNull

    /* renamed from: else  reason: not valid java name */
    public static final vg0 f5272else;
    @JvmField
    @NotNull

    /* renamed from: goto  reason: not valid java name */
    public static final vg0 f5273goto;

    /* renamed from: this  reason: not valid java name */
    public static final byte[] f5274this;
    @NotNull

    /* renamed from: case  reason: not valid java name */
    public final List<Cif> f5275case;

    /* renamed from: for  reason: not valid java name */
    public long f5276for;

    /* renamed from: if  reason: not valid java name */
    public final vg0 f5277if;

    /* renamed from: new  reason: not valid java name */
    public final uk0 f5278new;
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public final vg0 f5279try;

    /* compiled from: MultipartBody.kt */
    /* renamed from: com.apk.wg0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }

        /* renamed from: do  reason: not valid java name */
        public final void m2908do(@NotNull StringBuilder sb, @NotNull String str) {
            nd0.m1875new(sb, "$this$appendQuotedString");
            nd0.m1875new(str, Person.KEY_KEY);
            sb.append('\"');
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt == '\n') {
                    sb.append("%0A");
                } else if (charAt == '\r') {
                    sb.append("%0D");
                } else if (charAt != '\"') {
                    sb.append(charAt);
                } else {
                    sb.append("%22");
                }
            }
            sb.append('\"');
        }
    }

    /* compiled from: MultipartBody.kt */
    /* renamed from: com.apk.wg0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {
        @Nullable

        /* renamed from: do  reason: not valid java name */
        public final sg0 f5280do;
        @NotNull

        /* renamed from: if  reason: not valid java name */
        public final bh0 f5281if;

        public Cif(sg0 sg0Var, bh0 bh0Var, md0 md0Var) {
            this.f5280do = sg0Var;
            this.f5281if = bh0Var;
        }

        @JvmStatic
        @NotNull
        /* renamed from: do  reason: not valid java name */
        public static final Cif m2909do(@NotNull String str, @Nullable String str2, @NotNull bh0 bh0Var) {
            nd0.m1875new(str, "name");
            nd0.m1875new(bh0Var, "body");
            StringBuilder sb = new StringBuilder();
            sb.append("form-data; name=");
            wg0.f5271class.m2908do(sb, str);
            if (str2 != null) {
                sb.append("; filename=");
                wg0.f5271class.m2908do(sb, str2);
            }
            String sb2 = sb.toString();
            nd0.m1872for(sb2, "StringBuilder().apply(builderAction).toString()");
            ArrayList arrayList = new ArrayList(20);
            nd0.m1875new(AsyncHttpClient.HEADER_CONTENT_DISPOSITION, "name");
            nd0.m1875new(sb2, LitePalParser.ATTR_VALUE);
            for (int i = 0; i < 19; i++) {
                char charAt = AsyncHttpClient.HEADER_CONTENT_DISPOSITION.charAt(i);
                if (!('!' <= charAt && '~' >= charAt)) {
                    throw new IllegalArgumentException(jh0.m1318class("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), AsyncHttpClient.HEADER_CONTENT_DISPOSITION).toString());
                }
            }
            nd0.m1875new(AsyncHttpClient.HEADER_CONTENT_DISPOSITION, "name");
            nd0.m1875new(sb2, LitePalParser.ATTR_VALUE);
            arrayList.add(AsyncHttpClient.HEADER_CONTENT_DISPOSITION);
            arrayList.add(ie0.m1211throws(sb2).toString());
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                sg0 sg0Var = new sg0((String[]) array, null);
                nd0.m1875new(bh0Var, "body");
                if (sg0Var.m2453do(AsyncHttpClient.HEADER_CONTENT_TYPE) == null) {
                    if (sg0Var.m2453do("Content-Length") == null) {
                        return new Cif(sg0Var, bh0Var, null);
                    }
                    throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
                }
                throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
    }

    static {
        vg0.Cdo cdo = vg0.f5075else;
        f5272else = vg0.Cdo.m2793do("multipart/mixed");
        vg0.Cdo cdo2 = vg0.f5075else;
        vg0.Cdo.m2793do("multipart/alternative");
        vg0.Cdo cdo3 = vg0.f5075else;
        vg0.Cdo.m2793do("multipart/digest");
        vg0.Cdo cdo4 = vg0.f5075else;
        vg0.Cdo.m2793do("multipart/parallel");
        vg0.Cdo cdo5 = vg0.f5075else;
        f5273goto = vg0.Cdo.m2793do("multipart/form-data");
        f5274this = new byte[]{(byte) 58, (byte) 32};
        f5269break = new byte[]{(byte) 13, (byte) 10};
        byte b = (byte) 45;
        f5270catch = new byte[]{b, b};
    }

    public wg0(@NotNull uk0 uk0Var, @NotNull vg0 vg0Var, @NotNull List<Cif> list) {
        nd0.m1875new(uk0Var, "boundaryByteString");
        nd0.m1875new(vg0Var, "type");
        nd0.m1875new(list, "parts");
        this.f5278new = uk0Var;
        this.f5279try = vg0Var;
        this.f5275case = list;
        vg0.Cdo cdo = vg0.f5075else;
        this.f5277if = vg0.Cdo.m2793do(this.f5279try + "; boundary=" + this.f5278new.m2714break());
        this.f5276for = -1L;
    }

    @Override // com.apk.bh0
    /* renamed from: do */
    public long mo48do() throws IOException {
        long j = this.f5276for;
        if (j == -1) {
            long m2907new = m2907new(null, true);
            this.f5276for = m2907new;
            return m2907new;
        }
        return j;
    }

    @Override // com.apk.bh0
    /* renamed from: for */
    public void mo49for(@NotNull sk0 sk0Var) throws IOException {
        nd0.m1875new(sk0Var, "sink");
        m2907new(sk0Var, false);
    }

    @Override // com.apk.bh0
    @NotNull
    /* renamed from: if */
    public vg0 mo50if() {
        return this.f5277if;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: new  reason: not valid java name */
    public final long m2907new(sk0 sk0Var, boolean z) throws IOException {
        rk0 rk0Var;
        if (z) {
            sk0Var = new rk0();
            rk0Var = sk0Var;
        } else {
            rk0Var = 0;
        }
        int size = this.f5275case.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            Cif cif = this.f5275case.get(i);
            sg0 sg0Var = cif.f5280do;
            bh0 bh0Var = cif.f5281if;
            nd0.m1874if(sk0Var);
            sk0Var.write(f5270catch);
            sk0Var.mo644while(this.f5278new);
            sk0Var.write(f5269break);
            if (sg0Var != null) {
                int size2 = sg0Var.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    sk0Var.mo643this(sg0Var.m2455if(i2)).write(f5274this).mo643this(sg0Var.m2456new(i2)).write(f5269break);
                }
            }
            vg0 mo50if = bh0Var.mo50if();
            if (mo50if != null) {
                sk0Var.mo643this("Content-Type: ").mo643this(mo50if.f5077do).write(f5269break);
            }
            long mo48do = bh0Var.mo48do();
            if (mo48do != -1) {
                sk0Var.mo643this("Content-Length: ").mo642public(mo48do).write(f5269break);
            } else if (z) {
                nd0.m1874if(rk0Var);
                rk0Var.skip(rk0Var.f4108if);
                return -1L;
            }
            sk0Var.write(f5269break);
            if (z) {
                j += mo48do;
            } else {
                bh0Var.mo49for(sk0Var);
            }
            sk0Var.write(f5269break);
        }
        nd0.m1874if(sk0Var);
        sk0Var.write(f5270catch);
        sk0Var.mo644while(this.f5278new);
        sk0Var.write(f5270catch);
        sk0Var.write(f5269break);
        if (z) {
            nd0.m1874if(rk0Var);
            long j2 = rk0Var.f4108if;
            long j3 = j + j2;
            rk0Var.skip(j2);
            return j3;
        }
        return j;
    }
}
