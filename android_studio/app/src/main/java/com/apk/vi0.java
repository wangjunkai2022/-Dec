package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.exifinterface.media.ExifInterface;
import com.apk.ij0;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.loopj.HttpGet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

/* compiled from: Hpack.kt */
/* loaded from: classes7.dex */
public final class vi0 {
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public static final Map<uk0, Integer> f5113if;

    /* renamed from: for  reason: not valid java name */
    public static final vi0 f5112for = new vi0();
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public static final ui0[] f5111do = {new ui0(ui0.f4901this, ""), new ui0(ui0.f4897case, HttpGet.METHOD_NAME), new ui0(ui0.f4897case, "POST"), new ui0(ui0.f4898else, "/"), new ui0(ui0.f4898else, "/index.html"), new ui0(ui0.f4899goto, SpeechSynthesizer.REQUEST_PROTOCOL_HTTP), new ui0(ui0.f4899goto, SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS), new ui0(ui0.f4902try, "200"), new ui0(ui0.f4902try, "204"), new ui0(ui0.f4902try, "206"), new ui0(ui0.f4902try, "304"), new ui0(ui0.f4902try, "400"), new ui0(ui0.f4902try, "404"), new ui0(ui0.f4902try, "500"), new ui0("accept-charset", ""), new ui0("accept-encoding", "gzip, deflate"), new ui0("accept-language", ""), new ui0("accept-ranges", ""), new ui0("accept", ""), new ui0("access-control-allow-origin", ""), new ui0("age", ""), new ui0("allow", ""), new ui0("authorization", ""), new ui0("cache-control", ""), new ui0("content-disposition", ""), new ui0("content-encoding", ""), new ui0("content-language", ""), new ui0("content-length", ""), new ui0("content-location", ""), new ui0("content-range", ""), new ui0("content-type", ""), new ui0("cookie", ""), new ui0("date", ""), new ui0("etag", ""), new ui0("expect", ""), new ui0("expires", ""), new ui0("from", ""), new ui0("host", ""), new ui0("if-match", ""), new ui0("if-modified-since", ""), new ui0("if-none-match", ""), new ui0("if-range", ""), new ui0("if-unmodified-since", ""), new ui0("last-modified", ""), new ui0("link", ""), new ui0("location", ""), new ui0("max-forwards", ""), new ui0("proxy-authenticate", ""), new ui0("proxy-authorization", ""), new ui0("range", ""), new ui0("referer", ""), new ui0("refresh", ""), new ui0("retry-after", ""), new ui0("server", ""), new ui0("set-cookie", ""), new ui0("strict-transport-security", ""), new ui0("transfer-encoding", ""), new ui0("user-agent", ""), new ui0("vary", ""), new ui0("via", ""), new ui0("www-authenticate", "")};

    /* compiled from: Hpack.kt */
    /* renamed from: com.apk.vi0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        @JvmField

        /* renamed from: case  reason: not valid java name */
        public int f5114case;

        /* renamed from: do  reason: not valid java name */
        public final List<ui0> f5115do;

        /* renamed from: else  reason: not valid java name */
        public final int f5116else;
        @JvmField
        @NotNull

        /* renamed from: for  reason: not valid java name */
        public ui0[] f5117for;

        /* renamed from: goto  reason: not valid java name */
        public int f5118goto;

        /* renamed from: if  reason: not valid java name */
        public final tk0 f5119if;

        /* renamed from: new  reason: not valid java name */
        public int f5120new;
        @JvmField

        /* renamed from: try  reason: not valid java name */
        public int f5121try;

        public Cdo(ll0 ll0Var, int i, int i2, int i3) {
            i2 = (i3 & 4) != 0 ? i : i2;
            nd0.m1875new(ll0Var, "source");
            this.f5116else = i;
            this.f5118goto = i2;
            this.f5115do = new ArrayList();
            this.f5119if = sb0.m2404class(ll0Var);
            this.f5117for = new ui0[8];
            this.f5120new = 7;
        }

        @NotNull
        /* renamed from: case  reason: not valid java name */
        public final uk0 m2803case() throws IOException {
            int m1322do = jh0.m1322do(this.f5119if.readByte(), 255);
            int i = 0;
            boolean z = (m1322do & 128) == 128;
            long m2805else = m2805else(m1322do, 127);
            if (z) {
                rk0 rk0Var = new rk0();
                ij0 ij0Var = ij0.f2135new;
                tk0 tk0Var = this.f5119if;
                nd0.m1875new(tk0Var, "source");
                nd0.m1875new(rk0Var, "sink");
                ij0.Cdo cdo = ij0.f2133for;
                int i2 = 0;
                for (long j = 0; j < m2805else; j++) {
                    i = (i << 8) | (tk0Var.readByte() & ExifInterface.MARKER);
                    i2 += 8;
                    while (i2 >= 8) {
                        int i3 = i2 - 8;
                        ij0.Cdo[] cdoArr = cdo.f2136do;
                        nd0.m1874if(cdoArr);
                        cdo = cdoArr[(i >>> i3) & 255];
                        nd0.m1874if(cdo);
                        if (cdo.f2136do == null) {
                            rk0Var.m2299synchronized(cdo.f2138if);
                            i2 -= cdo.f2137for;
                            cdo = ij0.f2133for;
                        } else {
                            i2 = i3;
                        }
                    }
                }
                while (i2 > 0) {
                    ij0.Cdo[] cdoArr2 = cdo.f2136do;
                    nd0.m1874if(cdoArr2);
                    ij0.Cdo cdo2 = cdoArr2[(i << (8 - i2)) & 255];
                    nd0.m1874if(cdo2);
                    if (cdo2.f2136do != null || cdo2.f2137for > i2) {
                        break;
                    }
                    rk0Var.m2299synchronized(cdo2.f2138if);
                    i2 -= cdo2.f2137for;
                    cdo = ij0.f2133for;
                }
                return rk0Var.m2296private();
            }
            return this.f5119if.mo857new(m2805else);
        }

        /* renamed from: do  reason: not valid java name */
        public final void m2804do() {
            ui0[] ui0VarArr = this.f5117for;
            int length = ui0VarArr.length;
            nd0.m1875new(ui0VarArr, "$this$fill");
            Arrays.fill(ui0VarArr, 0, length, (Object) null);
            this.f5120new = this.f5117for.length - 1;
            this.f5121try = 0;
            this.f5114case = 0;
        }

        /* renamed from: else  reason: not valid java name */
        public final int m2805else(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int m1322do = jh0.m1322do(this.f5119if.readByte(), 255);
                if ((m1322do & 128) == 0) {
                    return i2 + (m1322do << i4);
                }
                i2 += (m1322do & 127) << i4;
                i4 += 7;
            }
        }

        /* renamed from: for  reason: not valid java name */
        public final int m2806for(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.f5117for.length;
                while (true) {
                    length--;
                    if (length < this.f5120new || i <= 0) {
                        break;
                    }
                    ui0 ui0Var = this.f5117for[length];
                    nd0.m1874if(ui0Var);
                    int i3 = ui0Var.f4903do;
                    i -= i3;
                    this.f5114case -= i3;
                    this.f5121try--;
                    i2++;
                }
                ui0[] ui0VarArr = this.f5117for;
                int i4 = this.f5120new;
                System.arraycopy(ui0VarArr, i4 + 1, ui0VarArr, i4 + 1 + i2, this.f5121try);
                this.f5120new += i2;
            }
            return i2;
        }

        /* renamed from: if  reason: not valid java name */
        public final int m2807if(int i) {
            return this.f5120new + 1 + i;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0010  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0019  */
        /* renamed from: new  reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final com.apk.uk0 m2808new(int r4) throws java.io.IOException {
            /*
                r3 = this;
                if (r4 < 0) goto Ld
                com.apk.vi0 r0 = com.apk.vi0.f5112for
                com.apk.ui0[] r0 = com.apk.vi0.f5111do
                int r0 = r0.length
                int r0 = r0 + (-1)
                if (r4 > r0) goto Ld
                r0 = 1
                goto Le
            Ld:
                r0 = 0
            Le:
                if (r0 == 0) goto L19
                com.apk.vi0 r0 = com.apk.vi0.f5112for
                com.apk.ui0[] r0 = com.apk.vi0.f5111do
                r4 = r0[r4]
                com.apk.uk0 r4 = r4.f4905if
                goto L32
            L19:
                com.apk.vi0 r0 = com.apk.vi0.f5112for
                com.apk.ui0[] r0 = com.apk.vi0.f5111do
                int r0 = r0.length
                int r0 = r4 - r0
                int r0 = r3.m2807if(r0)
                if (r0 < 0) goto L33
                com.apk.ui0[] r1 = r3.f5117for
                int r2 = r1.length
                if (r0 >= r2) goto L33
                r4 = r1[r0]
                com.apk.nd0.m1874if(r4)
                com.apk.uk0 r4 = r4.f4905if
            L32:
                return r4
            L33:
                java.io.IOException r0 = new java.io.IOException
                java.lang.String r1 = "Header index too large "
                java.lang.StringBuilder r1 = com.apk.Cgoto.m1016super(r1)
                int r4 = r4 + 1
                r1.append(r4)
                java.lang.String r4 = r1.toString()
                r0.<init>(r4)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.vi0.Cdo.m2808new(int):com.apk.uk0");
        }

        /* renamed from: try  reason: not valid java name */
        public final void m2809try(int i, ui0 ui0Var) {
            this.f5115do.add(ui0Var);
            int i2 = ui0Var.f4903do;
            if (i != -1) {
                ui0 ui0Var2 = this.f5117for[this.f5120new + 1 + i];
                nd0.m1874if(ui0Var2);
                i2 -= ui0Var2.f4903do;
            }
            int i3 = this.f5118goto;
            if (i2 > i3) {
                m2804do();
                return;
            }
            int m2806for = m2806for((this.f5114case + i2) - i3);
            if (i == -1) {
                int i4 = this.f5121try + 1;
                ui0[] ui0VarArr = this.f5117for;
                if (i4 > ui0VarArr.length) {
                    ui0[] ui0VarArr2 = new ui0[ui0VarArr.length * 2];
                    System.arraycopy(ui0VarArr, 0, ui0VarArr2, ui0VarArr.length, ui0VarArr.length);
                    this.f5120new = this.f5117for.length - 1;
                    this.f5117for = ui0VarArr2;
                }
                int i5 = this.f5120new;
                this.f5120new = i5 - 1;
                this.f5117for[i5] = ui0Var;
                this.f5121try++;
            } else {
                this.f5117for[this.f5120new + 1 + i + m2806for + i] = ui0Var;
            }
            this.f5114case += i2;
        }
    }

    /* compiled from: Hpack.kt */
    /* renamed from: com.apk.vi0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {

        /* renamed from: break  reason: not valid java name */
        public final rk0 f5122break;
        @JvmField

        /* renamed from: case  reason: not valid java name */
        public int f5123case;

        /* renamed from: do  reason: not valid java name */
        public int f5124do;
        @JvmField

        /* renamed from: else  reason: not valid java name */
        public int f5125else;
        @JvmField

        /* renamed from: for  reason: not valid java name */
        public int f5126for;
        @JvmField

        /* renamed from: goto  reason: not valid java name */
        public int f5127goto;

        /* renamed from: if  reason: not valid java name */
        public boolean f5128if;
        @JvmField
        @NotNull

        /* renamed from: new  reason: not valid java name */
        public ui0[] f5129new;

        /* renamed from: this  reason: not valid java name */
        public final boolean f5130this;

        /* renamed from: try  reason: not valid java name */
        public int f5131try;

        public Cif(int i, boolean z, rk0 rk0Var, int i2) {
            i = (i2 & 1) != 0 ? 4096 : i;
            z = (i2 & 2) != 0 ? true : z;
            nd0.m1875new(rk0Var, "out");
            this.f5127goto = i;
            this.f5130this = z;
            this.f5122break = rk0Var;
            this.f5124do = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            this.f5126for = i;
            this.f5129new = new ui0[8];
            this.f5131try = 7;
        }

        /* renamed from: case  reason: not valid java name */
        public final void m2810case(int i, int i2, int i3) {
            if (i < i2) {
                this.f5122break.m2299synchronized(i | i3);
                return;
            }
            this.f5122break.m2299synchronized(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.f5122break.m2299synchronized(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.f5122break.m2299synchronized(i4);
        }

        /* renamed from: do  reason: not valid java name */
        public final void m2811do() {
            ui0[] ui0VarArr = this.f5129new;
            int length = ui0VarArr.length;
            nd0.m1875new(ui0VarArr, "$this$fill");
            Arrays.fill(ui0VarArr, 0, length, (Object) null);
            this.f5131try = this.f5129new.length - 1;
            this.f5123case = 0;
            this.f5125else = 0;
        }

        /* renamed from: for  reason: not valid java name */
        public final void m2812for(ui0 ui0Var) {
            int i = ui0Var.f4903do;
            int i2 = this.f5126for;
            if (i > i2) {
                m2811do();
                return;
            }
            m2813if((this.f5125else + i) - i2);
            int i3 = this.f5123case + 1;
            ui0[] ui0VarArr = this.f5129new;
            if (i3 > ui0VarArr.length) {
                ui0[] ui0VarArr2 = new ui0[ui0VarArr.length * 2];
                System.arraycopy(ui0VarArr, 0, ui0VarArr2, ui0VarArr.length, ui0VarArr.length);
                this.f5131try = this.f5129new.length - 1;
                this.f5129new = ui0VarArr2;
            }
            int i4 = this.f5131try;
            this.f5131try = i4 - 1;
            this.f5129new[i4] = ui0Var;
            this.f5123case++;
            this.f5125else += i;
        }

        /* renamed from: if  reason: not valid java name */
        public final int m2813if(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.f5129new.length;
                while (true) {
                    length--;
                    if (length < this.f5131try || i <= 0) {
                        break;
                    }
                    ui0 ui0Var = this.f5129new[length];
                    nd0.m1874if(ui0Var);
                    i -= ui0Var.f4903do;
                    int i3 = this.f5125else;
                    ui0 ui0Var2 = this.f5129new[length];
                    nd0.m1874if(ui0Var2);
                    this.f5125else = i3 - ui0Var2.f4903do;
                    this.f5123case--;
                    i2++;
                }
                ui0[] ui0VarArr = this.f5129new;
                int i4 = this.f5131try;
                System.arraycopy(ui0VarArr, i4 + 1, ui0VarArr, i4 + 1 + i2, this.f5123case);
                ui0[] ui0VarArr2 = this.f5129new;
                int i5 = this.f5131try;
                Arrays.fill(ui0VarArr2, i5 + 1, i5 + 1 + i2, (Object) null);
                this.f5131try += i2;
            }
            return i2;
        }

        /* renamed from: new  reason: not valid java name */
        public final void m2814new(@NotNull uk0 uk0Var) throws IOException {
            nd0.m1875new(uk0Var, "data");
            if (this.f5130this) {
                ij0 ij0Var = ij0.f2135new;
                nd0.m1875new(uk0Var, "bytes");
                long j = 0;
                for (int i = 0; i < uk0Var.mo1239for(); i++) {
                    j += ij0.f2134if[jh0.m1322do(uk0Var.mo1233case(i), 255)];
                }
                if (((int) ((j + 7) >> 3)) < uk0Var.mo1239for()) {
                    rk0 rk0Var = new rk0();
                    ij0 ij0Var2 = ij0.f2135new;
                    nd0.m1875new(uk0Var, "source");
                    nd0.m1875new(rk0Var, "sink");
                    int mo1239for = uk0Var.mo1239for();
                    long j2 = 0;
                    int i2 = 0;
                    for (int i3 = 0; i3 < mo1239for; i3++) {
                        int m1322do = jh0.m1322do(uk0Var.mo1233case(i3), 255);
                        int i4 = ij0.f2132do[m1322do];
                        byte b = ij0.f2134if[m1322do];
                        j2 = (j2 << b) | i4;
                        i2 += b;
                        while (i2 >= 8) {
                            i2 = (i2 == true ? 1 : 0) - 8;
                            rk0Var.writeByte((int) (j2 >> i2));
                        }
                    }
                    if (i2 > 0) {
                        rk0Var.writeByte((int) ((255 >>> i2) | (j2 << (8 - i2))));
                    }
                    uk0 m2296private = rk0Var.m2296private();
                    m2810case(m2296private.mo1239for(), 127, 128);
                    this.f5122break.m2301transient(m2296private);
                    return;
                }
            }
            m2810case(uk0Var.mo1239for(), 127, 0);
            this.f5122break.m2301transient(uk0Var);
        }

        /* renamed from: try  reason: not valid java name */
        public final void m2815try(@NotNull List<ui0> list) throws IOException {
            int i;
            int i2;
            nd0.m1875new(list, "headerBlock");
            if (this.f5128if) {
                int i3 = this.f5124do;
                if (i3 < this.f5126for) {
                    m2810case(i3, 31, 32);
                }
                this.f5128if = false;
                this.f5124do = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                m2810case(this.f5126for, 31, 32);
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                ui0 ui0Var = list.get(i4);
                uk0 mo1243this = ui0Var.f4905if.mo1243this();
                uk0 uk0Var = ui0Var.f4904for;
                vi0 vi0Var = vi0.f5112for;
                Integer num = vi0.f5113if.get(mo1243this);
                if (num != null) {
                    i = num.intValue() + 1;
                    if (2 <= i && 7 >= i) {
                        vi0 vi0Var2 = vi0.f5112for;
                        if (nd0.m1870do(vi0.f5111do[i - 1].f4904for, uk0Var)) {
                            i2 = i;
                        } else {
                            vi0 vi0Var3 = vi0.f5112for;
                            if (nd0.m1870do(vi0.f5111do[i].f4904for, uk0Var)) {
                                i2 = i;
                                i++;
                            }
                        }
                    }
                    i2 = i;
                    i = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                if (i == -1) {
                    int i5 = this.f5131try + 1;
                    int length = this.f5129new.length;
                    while (true) {
                        if (i5 >= length) {
                            break;
                        }
                        ui0 ui0Var2 = this.f5129new[i5];
                        nd0.m1874if(ui0Var2);
                        if (nd0.m1870do(ui0Var2.f4905if, mo1243this)) {
                            ui0 ui0Var3 = this.f5129new[i5];
                            nd0.m1874if(ui0Var3);
                            if (nd0.m1870do(ui0Var3.f4904for, uk0Var)) {
                                int i6 = i5 - this.f5131try;
                                vi0 vi0Var4 = vi0.f5112for;
                                i = vi0.f5111do.length + i6;
                                break;
                            } else if (i2 == -1) {
                                vi0 vi0Var5 = vi0.f5112for;
                                i2 = (i5 - this.f5131try) + vi0.f5111do.length;
                            }
                        }
                        i5++;
                    }
                }
                if (i != -1) {
                    m2810case(i, 127, 128);
                } else if (i2 == -1) {
                    this.f5122break.m2299synchronized(64);
                    m2814new(mo1243this);
                    m2814new(uk0Var);
                    m2812for(ui0Var);
                } else {
                    uk0 uk0Var2 = ui0.f4900new;
                    if (mo1243this != null) {
                        nd0.m1875new(uk0Var2, "prefix");
                        if (mo1243this.mo1238else(0, uk0Var2, 0, uk0Var2.mo1239for()) && (!nd0.m1870do(ui0.f4901this, mo1243this))) {
                            m2810case(i2, 15, 0);
                            m2814new(uk0Var);
                        } else {
                            m2810case(i2, 63, 64);
                            m2814new(uk0Var);
                            m2812for(ui0Var);
                        }
                    } else {
                        throw null;
                    }
                }
            }
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f5111do.length);
        int length = f5111do.length;
        for (int i = 0; i < length; i++) {
            if (!linkedHashMap.containsKey(f5111do[i].f4905if)) {
                linkedHashMap.put(f5111do[i].f4905if, Integer.valueOf(i));
            }
        }
        Map<uk0, Integer> unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        nd0.m1872for(unmodifiableMap, "Collections.unmodifiableMap(result)");
        f5113if = unmodifiableMap;
    }

    @NotNull
    /* renamed from: do  reason: not valid java name */
    public final uk0 m2802do(@NotNull uk0 uk0Var) throws IOException {
        nd0.m1875new(uk0Var, "name");
        int mo1239for = uk0Var.mo1239for();
        for (int i = 0; i < mo1239for; i++) {
            byte b = (byte) 65;
            byte b2 = (byte) 90;
            byte mo1233case = uk0Var.mo1233case(i);
            if (b <= mo1233case && b2 >= mo1233case) {
                StringBuilder m1016super = Cgoto.m1016super("PROTOCOL_ERROR response malformed: mixed case name: ");
                m1016super.append(uk0Var.m2714break());
                throw new IOException(m1016super.toString());
            }
        }
        return uk0Var;
    }
}
