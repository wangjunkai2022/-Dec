package okhttp3.internal.publicsuffix;

import com.apk.Cgoto;
import com.apk.bl0;
import com.apk.fl0;
import com.apk.ie0;
import com.apk.jh0;
import com.apk.md0;
import com.apk.nd0;
import com.apk.sb0;
import com.apk.tk0;
import com.apk.uc0;
import com.apk.xc0;
import com.apk.yk0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;

/* compiled from: PublicSuffixDatabase.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001c:\u0001\u001cB\u0007¢\u0006\u0004\b\u001b\u0010\u000bJ#\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u000f\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000f\u0010\u0017R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", "", "domainLabels", "findMatchingRule", "(Ljava/util/List;)Ljava/util/List;", "domain", "getEffectiveTldPlusOne", "(Ljava/lang/String;)Ljava/lang/String;", "", "readTheList", "()V", "readTheListUninterruptibly", "", "publicSuffixListBytes", "publicSuffixExceptionListBytes", "setListBytes", "([B[B)V", "splitDomain", "(Ljava/lang/String;)Ljava/util/List;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "listRead", "Ljava/util/concurrent/atomic/AtomicBoolean;", "[B", "Ljava/util/concurrent/CountDownLatch;", "readCompleteLatch", "Ljava/util/concurrent/CountDownLatch;", "<init>", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes7.dex */
public final class PublicSuffixDatabase {

    /* renamed from: for  reason: not valid java name */
    public byte[] f10570for;

    /* renamed from: new  reason: not valid java name */
    public byte[] f10572new;

    /* renamed from: goto  reason: not valid java name */
    public static final Cdo f10567goto = new Cdo(null);

    /* renamed from: try  reason: not valid java name */
    public static final byte[] f10568try = {(byte) 42};

    /* renamed from: case  reason: not valid java name */
    public static final List<String> f10565case = sb0.m2406continue("*");

    /* renamed from: else  reason: not valid java name */
    public static final PublicSuffixDatabase f10566else = new PublicSuffixDatabase();

    /* renamed from: do  reason: not valid java name */
    public final AtomicBoolean f10569do = new AtomicBoolean(false);

    /* renamed from: if  reason: not valid java name */
    public final CountDownLatch f10571if = new CountDownLatch(1);

    /* compiled from: PublicSuffixDatabase.kt */
    /* renamed from: okhttp3.internal.publicsuffix.PublicSuffixDatabase$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }

        /* renamed from: do  reason: not valid java name */
        public static final String m3733do(Cdo cdo, byte[] bArr, byte[][] bArr2, int i) {
            int i2;
            boolean z;
            int m1322do;
            int m1322do2;
            int length = bArr.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = (i3 + length) / 2;
                while (i4 > -1 && bArr[i4] != ((byte) 10)) {
                    i4--;
                }
                int i5 = i4 + 1;
                int i6 = 1;
                while (true) {
                    i2 = i5 + i6;
                    if (bArr[i2] == ((byte) 10)) {
                        break;
                    }
                    i6++;
                }
                int i7 = i2 - i5;
                int i8 = i;
                boolean z2 = false;
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    if (z2) {
                        m1322do = 46;
                        z = false;
                    } else {
                        z = z2;
                        m1322do = jh0.m1322do(bArr2[i8][i9], 255);
                    }
                    m1322do2 = m1322do - jh0.m1322do(bArr[i5 + i10], 255);
                    if (m1322do2 != 0) {
                        break;
                    }
                    i10++;
                    i9++;
                    if (i10 == i7) {
                        break;
                    } else if (bArr2[i8].length != i9) {
                        z2 = z;
                    } else if (i8 == bArr2.length - 1) {
                        break;
                    } else {
                        i8++;
                        z2 = true;
                        i9 = -1;
                    }
                }
                if (m1322do2 >= 0) {
                    if (m1322do2 <= 0) {
                        int i11 = i7 - i10;
                        int length2 = bArr2[i8].length - i9;
                        int length3 = bArr2.length;
                        for (int i12 = i8 + 1; i12 < length3; i12++) {
                            length2 += bArr2[i12].length;
                        }
                        if (length2 >= i11) {
                            if (length2 <= i11) {
                                Charset charset = StandardCharsets.UTF_8;
                                nd0.m1872for(charset, "UTF_8");
                                return new String(bArr, i5, i7, charset);
                            }
                        }
                    }
                    i3 = i2 + 1;
                }
                length = i5 - 1;
            }
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x018c, code lost:
        if (r14 == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x018e, code lost:
        if (r0 != 0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0193, code lost:
        if ((r1 instanceof com.apk.ae0) == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0195, code lost:
        r1 = ((com.apk.ae0) r1).mo45do(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x019c, code lost:
        r1 = new com.apk.zd0(r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01a2, code lost:
        com.apk.nd0.m1875new(r1, "$this$joinToString");
        com.apk.nd0.m1875new(".", "separator");
        com.apk.nd0.m1875new("", "prefix");
        com.apk.nd0.m1875new("", "postfix");
        com.apk.nd0.m1875new("...", "truncated");
        r10 = new java.lang.StringBuilder();
        com.apk.nd0.m1875new(r1, "$this$joinTo");
        com.apk.nd0.m1875new(r10, "buffer");
        com.apk.nd0.m1875new(".", "separator");
        com.apk.nd0.m1875new("", "prefix");
        com.apk.nd0.m1875new("", "postfix");
        com.apk.nd0.m1875new("...", "truncated");
        r10.append((java.lang.CharSequence) "");
        r1 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01e7, code lost:
        if (r1.hasNext() == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01e9, code lost:
        r4 = r1.next();
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01ee, code lost:
        if (r3 <= 1) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01f0, code lost:
        r10.append((java.lang.CharSequence) ".");
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01f3, code lost:
        com.apk.sb0.m2402case(r10, r4, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01f7, code lost:
        r10.append((java.lang.CharSequence) "");
        r14 = r10.toString();
        com.apk.nd0.m1872for(r14, "joinTo(StringBuilder(), …ed, transform).toString()");
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0203, code lost:
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0215, code lost:
        throw new java.lang.IllegalArgumentException(com.apk.Cgoto.m1005instanceof("Requested element count ", r0, " is less than zero.").toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
        if (r1 == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
        java.lang.Thread.currentThread().interrupt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b0, code lost:
        if (r1 <= 1) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b2, code lost:
        r5 = (byte[][]) r4.clone();
        r9 = r5.length - 1;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bb, code lost:
        if (r10 >= r9) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bd, code lost:
        r5[r10] = okhttp3.internal.publicsuffix.PublicSuffixDatabase.f10568try;
        r11 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.f10567goto;
        r12 = r13.f10570for;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c5, code lost:
        if (r12 == null) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c7, code lost:
        r11 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.Cdo.m3733do(r11, r12, r5, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00cb, code lost:
        if (r11 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ce, code lost:
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00d1, code lost:
        com.apk.nd0.m1876this("publicSuffixListBytes");
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d4, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d5, code lost:
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d6, code lost:
        if (r11 == null) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d8, code lost:
        r1 = r1 - 1;
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00da, code lost:
        if (r5 >= r1) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00dc, code lost:
        r6 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.f10567goto;
        r9 = r13.f10572new;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00e0, code lost:
        if (r9 == null) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00e2, code lost:
        r6 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.Cdo.m3733do(r6, r9, r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e6, code lost:
        if (r6 == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00e9, code lost:
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ec, code lost:
        com.apk.nd0.m1876this("publicSuffixExceptionListBytes");
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00f1, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00f2, code lost:
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00f8, code lost:
        if (r6 == null) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00fa, code lost:
        r1 = com.apk.ie0.m1201import('!' + r6, new char[]{'.'}, false, 0, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0112, code lost:
        if (r8 != null) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0114, code lost:
        if (r11 != null) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0116, code lost:
        r1 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.f10565case;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0119, code lost:
        if (r8 == null) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x011b, code lost:
        r6 = com.apk.ie0.m1201import(r8, new char[]{'.'}, false, 0, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0124, code lost:
        r6 = com.apk.xc0.f5512do;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0126, code lost:
        if (r11 == null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0128, code lost:
        r1 = com.apk.ie0.m1201import(r11, new char[]{'.'}, false, 0, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0131, code lost:
        r1 = com.apk.xc0.f5512do;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x013b, code lost:
        if (r6.size() <= r1.size()) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x013d, code lost:
        r1 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0146, code lost:
        if (r0.size() != r1.size()) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
        if (r1 != false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0152, code lost:
        if (r1.get(0).charAt(0) == '!') goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0154, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x015f, code lost:
        if (r1.get(0).charAt(0) != '!') goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0161, code lost:
        r0 = r0.size();
        r1 = r1.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x016a, code lost:
        r0 = r0.size();
        r1 = r1.size() + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0173, code lost:
        r0 = r0 - r1;
        r14 = m3731for(r14);
        com.apk.nd0.m1875new(r14, "$this$asSequence");
        r1 = new com.apk.vc0(r14);
        com.apk.nd0.m1875new(r1, "$this$drop");
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0187, code lost:
        if (r0 < 0) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0189, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x018b, code lost:
        r14 = false;
     */
    @org.jetbrains.annotations.Nullable
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String m3730do(@org.jetbrains.annotations.NotNull java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.m3730do(java.lang.String):java.lang.String");
    }

    /* renamed from: for  reason: not valid java name */
    public final List<String> m3731for(String str) {
        int i = 0;
        List<String> m1201import = ie0.m1201import(str, new char[]{'.'}, false, 0, 6);
        nd0.m1875new(m1201import, "$this$last");
        if (!m1201import.isEmpty()) {
            nd0.m1875new(m1201import, "$this$lastIndex");
            if (nd0.m1870do(m1201import.get(m1201import.size() - 1), "")) {
                nd0.m1875new(m1201import, "$this$dropLast");
                int size = m1201import.size() - 1;
                if (size < 0) {
                    size = 0;
                }
                nd0.m1875new(m1201import, "$this$take");
                if (size >= 0) {
                    if (size == 0) {
                        return xc0.f5512do;
                    }
                    if (size >= m1201import.size()) {
                        return uc0.m2700this(m1201import);
                    }
                    if (size == 1) {
                        nd0.m1875new(m1201import, "$this$first");
                        return sb0.m2406continue(uc0.m2701try(m1201import));
                    }
                    ArrayList arrayList = new ArrayList(size);
                    for (Object obj : m1201import) {
                        arrayList.add(obj);
                        i++;
                        if (i == size) {
                            break;
                        }
                    }
                    return sb0.a(arrayList);
                }
                throw new IllegalArgumentException(Cgoto.m1005instanceof("Requested element count ", size, " is less than zero.").toString());
            }
            return m1201import;
        }
        throw new NoSuchElementException("List is empty.");
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3732if() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        tk0 m2404class = sb0.m2404class(new yk0(bl0.m208new(resourceAsStream)));
        fl0 fl0Var = (fl0) m2404class;
        try {
            byte[] m863try = fl0Var.m863try(fl0Var.readInt());
            byte[] m863try2 = fl0Var.m863try(fl0Var.readInt());
            sb0.m2417import(m2404class, null);
            synchronized (this) {
                nd0.m1874if(m863try);
                this.f10570for = m863try;
                nd0.m1874if(m863try2);
                this.f10572new = m863try2;
            }
            this.f10571if.countDown();
        } finally {
        }
    }
}
