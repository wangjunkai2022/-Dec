package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.exifinterface.media.ExifInterface;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s;
import com.apk.Cgoto;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.loopj.HttpGet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Hpack.java */
/* loaded from: classes8.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final c[] f10738a = {new c(c.i, ""), new c(c.f, HttpGet.METHOD_NAME), new c(c.f, "POST"), new c(c.g, "/"), new c(c.g, "/index.html"), new c(c.h, SpeechSynthesizer.REQUEST_PROTOCOL_HTTP), new c(c.h, SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS), new c(c.e, "200"), new c(c.e, "204"), new c(c.e, "206"), new c(c.e, "304"), new c(c.e, "400"), new c(c.e, "404"), new c(c.e, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};
    public static final Map<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f, Integer> b = a();

    /* compiled from: Hpack.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final List<c> f10739a;
        public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e b;
        public final int c;
        public int d;
        public c[] e;
        public int f;
        public int g;
        public int h;

        public a(int i, s sVar) {
            this(i, i, sVar);
        }

        private int b(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.e.length;
                while (true) {
                    length--;
                    if (length < this.f || i <= 0) {
                        break;
                    }
                    c[] cVarArr = this.e;
                    i -= cVarArr[length].c;
                    this.h -= cVarArr[length].c;
                    this.g--;
                    i2++;
                }
                c[] cVarArr2 = this.e;
                int i3 = this.f + 1;
                System.arraycopy(cVarArr2, i3, cVarArr2, i3 + i2, this.g);
                this.f += i2;
            }
            return i2;
        }

        private void d() {
            int i = this.d;
            int i2 = this.h;
            if (i < i2) {
                if (i == 0) {
                    e();
                } else {
                    b(i2 - i);
                }
            }
        }

        private void e() {
            Arrays.fill(this.e, (Object) null);
            this.f = this.e.length - 1;
            this.g = 0;
            this.h = 0;
        }

        private void f(int i) throws IOException {
            a(-1, new c(c(i), b()));
        }

        private void g(int i) throws IOException {
            this.f10739a.add(new c(c(i), b()));
        }

        private void h() throws IOException {
            this.f10739a.add(new c(d.a(b()), b()));
        }

        public List<c> a() {
            ArrayList arrayList = new ArrayList(this.f10739a);
            this.f10739a.clear();
            return arrayList;
        }

        public void c() throws IOException {
            while (!this.b.f()) {
                int readByte = this.b.readByte() & ExifInterface.MARKER;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                }
                if ((readByte & 128) == 128) {
                    e(a(readByte, 127) - 1);
                } else if (readByte == 64) {
                    g();
                } else if ((readByte & 64) == 64) {
                    f(a(readByte, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    int a2 = a(readByte, 31);
                    this.d = a2;
                    if (a2 >= 0 && a2 <= this.c) {
                        d();
                    } else {
                        StringBuilder m1016super = Cgoto.m1016super("Invalid dynamic table size update ");
                        m1016super.append(this.d);
                        throw new IOException(m1016super.toString());
                    }
                } else if (readByte != 16 && readByte != 0) {
                    g(a(readByte, 15) - 1);
                } else {
                    h();
                }
            }
        }

        public a(int i, int i2, s sVar) {
            this.f10739a = new ArrayList();
            c[] cVarArr = new c[8];
            this.e = cVarArr;
            this.f = cVarArr.length - 1;
            this.g = 0;
            this.h = 0;
            this.c = i;
            this.d = i2;
            this.b = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.l.a(sVar);
        }

        private int a(int i) {
            return this.f + 1 + i;
        }

        private void a(int i, c cVar) {
            this.f10739a.add(cVar);
            int i2 = cVar.c;
            if (i != -1) {
                i2 -= this.e[a(i)].c;
            }
            int i3 = this.d;
            if (i2 > i3) {
                e();
                return;
            }
            int b = b((this.h + i2) - i3);
            if (i == -1) {
                int i4 = this.g + 1;
                c[] cVarArr = this.e;
                if (i4 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f = this.e.length - 1;
                    this.e = cVarArr2;
                }
                int i5 = this.f;
                this.f = i5 - 1;
                this.e[i5] = cVar;
                this.g++;
            } else {
                this.e[a(i) + b + i] = cVar;
            }
            this.h += i2;
        }

        private boolean d(int i) {
            return i >= 0 && i <= d.f10738a.length - 1;
        }

        private int f() throws IOException {
            return this.b.readByte() & ExifInterface.MARKER;
        }

        private void g() throws IOException {
            a(-1, new c(d.a(b()), b()));
        }

        private void e(int i) throws IOException {
            if (d(i)) {
                this.f10739a.add(d.f10738a[i]);
                return;
            }
            int a2 = a(i - d.f10738a.length);
            if (a2 >= 0) {
                c[] cVarArr = this.e;
                if (a2 <= cVarArr.length - 1) {
                    this.f10739a.add(cVarArr[a2]);
                    return;
                }
            }
            StringBuilder m1016super = Cgoto.m1016super("Header index too large ");
            m1016super.append(i + 1);
            throw new IOException(m1016super.toString());
        }

        public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f b() throws IOException {
            int f = f();
            boolean z = (f & 128) == 128;
            int a2 = a(f, 127);
            if (z) {
                return bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f.a(k.b().a(this.b.d(a2)));
            }
            return this.b.b(a2);
        }

        private bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f c(int i) {
            if (d(i)) {
                return d.f10738a[i].f10737a;
            }
            return this.e[a(i - d.f10738a.length)].f10737a;
        }

        public int a(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int f = f();
                if ((f & 128) == 0) {
                    return i2 + (f << i4);
                }
                i2 += (f & 127) << i4;
                i4 += 7;
            }
        }
    }

    /* compiled from: Hpack.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c f10740a;
        public final boolean b;
        public int c;
        public boolean d;
        public int e;
        public c[] f;
        public int g;
        public int h;
        public int i;

        public b(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar) {
            this(4096, true, cVar);
        }

        private void a(c cVar) {
            int i = cVar.c;
            int i2 = this.e;
            if (i > i2) {
                b();
                return;
            }
            b((this.i + i) - i2);
            int i3 = this.h + 1;
            c[] cVarArr = this.f;
            if (i3 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.g = this.f.length - 1;
                this.f = cVarArr2;
            }
            int i4 = this.g;
            this.g = i4 - 1;
            this.f[i4] = cVar;
            this.h++;
            this.i += i;
        }

        private void b() {
            Arrays.fill(this.f, (Object) null);
            this.g = this.f.length - 1;
            this.h = 0;
            this.i = 0;
        }

        public b(int i, boolean z, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar) {
            this.c = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            c[] cVarArr = new c[8];
            this.f = cVarArr;
            this.g = cVarArr.length - 1;
            this.h = 0;
            this.i = 0;
            this.e = i;
            this.b = z;
            this.f10740a = cVar;
        }

        private int b(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.f.length;
                while (true) {
                    length--;
                    if (length < this.g || i <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f;
                    i -= cVarArr[length].c;
                    this.i -= cVarArr[length].c;
                    this.h--;
                    i2++;
                }
                c[] cVarArr2 = this.f;
                int i3 = this.g + 1;
                System.arraycopy(cVarArr2, i3, cVarArr2, i3 + i2, this.h);
                c[] cVarArr3 = this.f;
                int i4 = this.g + 1;
                Arrays.fill(cVarArr3, i4, i4 + i2, (Object) null);
                this.g += i2;
            }
            return i2;
        }

        public void a(List<c> list) throws IOException {
            int i;
            int i2;
            if (this.d) {
                int i3 = this.c;
                if (i3 < this.e) {
                    a(i3, 31, 32);
                }
                this.d = false;
                this.c = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                a(this.e, 31, 32);
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                c cVar = list.get(i4);
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f f = cVar.f10737a.f();
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f fVar = cVar.b;
                Integer num = d.b.get(f);
                if (num != null) {
                    i = num.intValue() + 1;
                    if (i > 1 && i < 8) {
                        if (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(d.f10738a[i - 1].b, fVar)) {
                            i2 = i;
                        } else if (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(d.f10738a[i].b, fVar)) {
                            i2 = i;
                            i++;
                        }
                    }
                    i2 = i;
                    i = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                if (i == -1) {
                    int i5 = this.g + 1;
                    int length = this.f.length;
                    while (true) {
                        if (i5 >= length) {
                            break;
                        }
                        if (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this.f[i5].f10737a, f)) {
                            if (bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this.f[i5].b, fVar)) {
                                i = d.f10738a.length + (i5 - this.g);
                                break;
                            } else if (i2 == -1) {
                                i2 = (i5 - this.g) + d.f10738a.length;
                            }
                        }
                        i5++;
                    }
                }
                if (i != -1) {
                    a(i, 127, 128);
                } else if (i2 == -1) {
                    this.f10740a.writeByte(64);
                    a(f);
                    a(fVar);
                    a(cVar);
                } else if (f.b(c.d) && !c.i.equals(f)) {
                    a(i2, 15, 0);
                    a(fVar);
                } else {
                    a(i2, 63, 64);
                    a(fVar);
                    a(cVar);
                }
            }
        }

        public void a(int i, int i2, int i3) {
            if (i < i2) {
                this.f10740a.writeByte(i | i3);
                return;
            }
            this.f10740a.writeByte(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.f10740a.writeByte(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.f10740a.writeByte(i4);
        }

        public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f fVar) throws IOException {
            if (this.b && k.b().a(fVar) < fVar.e()) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c();
                k.b().a(fVar, cVar);
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f m = cVar.m();
                a(m.e(), 127, 128);
                this.f10740a.a(m);
                return;
            }
            a(fVar.e(), 127, 0);
            this.f10740a.a(fVar);
        }

        public void a(int i) {
            int min = Math.min(i, 16384);
            int i2 = this.e;
            if (i2 == min) {
                return;
            }
            if (min < i2) {
                this.c = Math.min(this.c, min);
            }
            this.d = true;
            this.e = min;
            a();
        }

        private void a() {
            int i = this.e;
            int i2 = this.i;
            if (i < i2) {
                if (i == 0) {
                    b();
                } else {
                    b(i2 - i);
                }
            }
        }
    }

    public static Map<bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f, Integer> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f10738a.length);
        int i = 0;
        while (true) {
            c[] cVarArr = f10738a;
            if (i < cVarArr.length) {
                if (!linkedHashMap.containsKey(cVarArr[i].f10737a)) {
                    linkedHashMap.put(f10738a[i].f10737a, Integer.valueOf(i));
                }
                i++;
            } else {
                return Collections.unmodifiableMap(linkedHashMap);
            }
        }
    }

    public static bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f fVar) throws IOException {
        int e = fVar.e();
        for (int i = 0; i < e; i++) {
            byte a2 = fVar.a(i);
            if (a2 >= 65 && a2 <= 90) {
                StringBuilder m1016super = Cgoto.m1016super("PROTOCOL_ERROR response malformed: mixed case name: ");
                m1016super.append(fVar.h());
                throw new IOException(m1016super.toString());
            }
        }
        return fVar;
    }
}
