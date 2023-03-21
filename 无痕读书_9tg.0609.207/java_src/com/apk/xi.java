package com.apk;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.exifinterface.media.ExifInterface;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
/* compiled from: GifHeaderParser.java */
/* loaded from: classes8.dex */
public class xi {

    /* renamed from: for  reason: not valid java name */
    public wi f5626for;

    /* renamed from: if  reason: not valid java name */
    public ByteBuffer f5627if;

    /* renamed from: do  reason: not valid java name */
    public final byte[] f5625do = new byte[256];

    /* renamed from: new  reason: not valid java name */
    public int f5628new = 0;

    /* renamed from: case  reason: not valid java name */
    public final int m3010case() {
        return this.f5627if.getShort();
    }

    /* renamed from: do  reason: not valid java name */
    public final boolean m3011do() {
        return this.f5626for.f5304if != 0;
    }

    /* renamed from: else  reason: not valid java name */
    public final void m3012else() {
        int m3013for;
        do {
            m3013for = m3013for();
            this.f5627if.position(Math.min(this.f5627if.position() + m3013for, this.f5627if.limit()));
        } while (m3013for > 0);
    }

    /* renamed from: for  reason: not valid java name */
    public final int m3013for() {
        try {
            return this.f5627if.get() & ExifInterface.MARKER;
        } catch (Exception unused) {
            this.f5626for.f5304if = 1;
            return 0;
        }
    }

    @NonNull
    /* renamed from: if  reason: not valid java name */
    public wi m3014if() {
        int m3013for;
        if (this.f5627if != null) {
            if (m3011do()) {
                return this.f5626for;
            }
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 6; i++) {
                sb.append((char) m3013for());
            }
            if (!sb.toString().startsWith("GIF")) {
                this.f5626for.f5304if = 1;
            } else {
                this.f5626for.f5296case = m3010case();
                this.f5626for.f5301else = m3010case();
                this.f5626for.f5303goto = (m3013for() & 128) != 0;
                this.f5626for.f5306this = (int) Math.pow(2.0d, (m3013for & 7) + 1);
                this.f5626for.f5295break = m3013for();
                this.f5626for.f5297catch = m3013for();
                if (this.f5626for.f5303goto && !m3011do()) {
                    wi wiVar = this.f5626for;
                    wiVar.f5300do = m3016try(wiVar.f5306this);
                    wi wiVar2 = this.f5626for;
                    wiVar2.f5298class = wiVar2.f5300do[wiVar2.f5295break];
                }
            }
            if (!m3011do()) {
                boolean z = false;
                while (!z && !m3011do() && this.f5626for.f5302for <= Integer.MAX_VALUE) {
                    int m3013for2 = m3013for();
                    if (m3013for2 == 33) {
                        int m3013for3 = m3013for();
                        if (m3013for3 == 1) {
                            m3012else();
                        } else if (m3013for3 == 249) {
                            this.f5626for.f5305new = new vi();
                            m3013for();
                            int m3013for4 = m3013for();
                            vi viVar = this.f5626for.f5305new;
                            int i2 = (m3013for4 & 28) >> 2;
                            viVar.f5104else = i2;
                            if (i2 == 0) {
                                viVar.f5104else = 1;
                            }
                            this.f5626for.f5305new.f5101case = (m3013for4 & 1) != 0;
                            int m3010case = m3010case();
                            if (m3010case < 2) {
                                m3010case = 10;
                            }
                            vi viVar2 = this.f5626for.f5305new;
                            viVar2.f5109this = m3010case * 10;
                            viVar2.f5106goto = m3013for();
                            m3013for();
                        } else if (m3013for3 == 254) {
                            m3012else();
                        } else if (m3013for3 != 255) {
                            m3012else();
                        } else {
                            m3015new();
                            StringBuilder sb2 = new StringBuilder();
                            for (int i3 = 0; i3 < 11; i3++) {
                                sb2.append((char) this.f5625do[i3]);
                            }
                            if (sb2.toString().equals("NETSCAPE2.0")) {
                                do {
                                    m3015new();
                                    byte[] bArr = this.f5625do;
                                    if (bArr[0] == 1) {
                                        this.f5626for.f5299const = ((bArr[2] & ExifInterface.MARKER) << 8) | (bArr[1] & ExifInterface.MARKER);
                                    }
                                    if (this.f5628new > 0) {
                                    }
                                } while (!m3011do());
                            } else {
                                m3012else();
                            }
                        }
                    } else if (m3013for2 == 44) {
                        wi wiVar3 = this.f5626for;
                        if (wiVar3.f5305new == null) {
                            wiVar3.f5305new = new vi();
                        }
                        this.f5626for.f5305new.f5103do = m3010case();
                        this.f5626for.f5305new.f5107if = m3010case();
                        this.f5626for.f5305new.f5105for = m3010case();
                        this.f5626for.f5305new.f5108new = m3010case();
                        int m3013for5 = m3013for();
                        boolean z2 = (m3013for5 & 128) != 0;
                        int pow = (int) Math.pow(2.0d, (m3013for5 & 7) + 1);
                        this.f5626for.f5305new.f5110try = (m3013for5 & 64) != 0;
                        if (z2) {
                            this.f5626for.f5305new.f5102catch = m3016try(pow);
                        } else {
                            this.f5626for.f5305new.f5102catch = null;
                        }
                        this.f5626for.f5305new.f5100break = this.f5627if.position();
                        m3013for();
                        m3012else();
                        if (!m3011do()) {
                            wi wiVar4 = this.f5626for;
                            wiVar4.f5302for++;
                            wiVar4.f5307try.add(wiVar4.f5305new);
                        }
                    } else if (m3013for2 != 59) {
                        this.f5626for.f5304if = 1;
                    } else {
                        z = true;
                    }
                }
                wi wiVar5 = this.f5626for;
                if (wiVar5.f5302for < 0) {
                    wiVar5.f5304if = 1;
                }
            }
            return this.f5626for;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3015new() {
        int m3013for = m3013for();
        this.f5628new = m3013for;
        if (m3013for > 0) {
            int i = 0;
            while (i < this.f5628new) {
                try {
                    int i2 = this.f5628new - i;
                    this.f5627if.get(this.f5625do, i, i2);
                    i += i2;
                } catch (Exception unused) {
                    Log.isLoggable("GifHeaderParser", 3);
                    this.f5626for.f5304if = 1;
                    return;
                }
            }
        }
    }

    @Nullable
    /* renamed from: try  reason: not valid java name */
    public final int[] m3016try(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f5627if.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                int i5 = bArr[i3] & ExifInterface.MARKER;
                int i6 = i4 + 1;
                int i7 = bArr[i4] & ExifInterface.MARKER;
                int i8 = i6 + 1;
                int i9 = i2 + 1;
                iArr[i2] = (i5 << 16) | ViewCompat.MEASURED_STATE_MASK | (i7 << 8) | (bArr[i6] & ExifInterface.MARKER);
                i3 = i8;
                i2 = i9;
            }
        } catch (BufferUnderflowException unused) {
            Log.isLoggable("GifHeaderParser", 3);
            this.f5626for.f5304if = 1;
        }
        return iArr;
    }
}
