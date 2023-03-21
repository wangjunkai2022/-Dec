package com.apk;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;
import java.util.Queue;
/* compiled from: ByteBufferGifDecoder.java */
/* loaded from: classes8.dex */
public class fp implements oj<ByteBuffer, hp> {

    /* renamed from: case  reason: not valid java name */
    public static final Cdo f1412case = new Cdo();

    /* renamed from: else  reason: not valid java name */
    public static final Cif f1413else = new Cif();

    /* renamed from: do  reason: not valid java name */
    public final Context f1414do;

    /* renamed from: for  reason: not valid java name */
    public final Cif f1415for;

    /* renamed from: if  reason: not valid java name */
    public final List<ImageHeaderParser> f1416if;

    /* renamed from: new  reason: not valid java name */
    public final Cdo f1417new;

    /* renamed from: try  reason: not valid java name */
    public final gp f1418try;

    /* compiled from: ByteBufferGifDecoder.java */
    @VisibleForTesting
    /* renamed from: com.apk.fp$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo {
    }

    /* compiled from: ByteBufferGifDecoder.java */
    @VisibleForTesting
    /* renamed from: com.apk.fp$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public final Queue<xi> f1419do = gs.m1041new(0);

        /* renamed from: do  reason: not valid java name */
        public synchronized void m870do(xi xiVar) {
            xiVar.f5627if = null;
            xiVar.f5626for = null;
            this.f1419do.offer(xiVar);
        }
    }

    public fp(Context context, List<ImageHeaderParser> list, pl plVar, nl nlVar) {
        Cif cif = f1413else;
        Cdo cdo = f1412case;
        this.f1414do = context.getApplicationContext();
        this.f1416if = list;
        this.f1417new = cdo;
        this.f1418try = new gp(plVar, nlVar);
        this.f1415for = cif;
    }

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull ByteBuffer byteBuffer, @NonNull mj mjVar) throws IOException {
        return !((Boolean) mjVar.m1724for(np.f3286if)).booleanValue() && ij.getType(this.f1416if, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    @Nullable
    /* renamed from: for  reason: not valid java name */
    public final jp m869for(ByteBuffer byteBuffer, int i, int i2, xi xiVar, mj mjVar) {
        Bitmap.Config config;
        long m396if = cs.m396if();
        try {
            wi m3014if = xiVar.m3014if();
            if (m3014if.f5302for > 0 && m3014if.f5304if == 0) {
                if (mjVar.m1724for(np.f3285do) == ej.PREFER_RGB_565) {
                    config = Bitmap.Config.RGB_565;
                } else {
                    config = Bitmap.Config.ARGB_8888;
                }
                int min = Math.min(m3014if.f5301else / i2, m3014if.f5296case / i);
                int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
                Cdo cdo = this.f1417new;
                gp gpVar = this.f1418try;
                if (cdo != null) {
                    yi yiVar = new yi(gpVar, m3014if, byteBuffer, max);
                    yiVar.m3076this(config);
                    yiVar.f5952catch = (yiVar.f5952catch + 1) % yiVar.f5953class.f5302for;
                    Bitmap mo3070do = yiVar.mo3070do();
                    if (mo3070do == null) {
                        return null;
                    }
                    jp jpVar = new jp(new hp(this.f1414do, yiVar, (qn) qn.f3896if, i, i2, mo3070do));
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        cs.m395do(m396if);
                    }
                    return jpVar;
                }
                throw null;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                cs.m395do(m396if);
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                cs.m395do(m396if);
            }
        }
    }

    @Override // com.apk.oj
    /* renamed from: if */
    public gl<hp> mo259if(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull mj mjVar) throws IOException {
        xi xiVar;
        ByteBuffer byteBuffer2 = byteBuffer;
        Cif cif = this.f1415for;
        synchronized (cif) {
            xi poll = cif.f1419do.poll();
            if (poll == null) {
                poll = new xi();
            }
            xiVar = poll;
            xiVar.f5627if = null;
            Arrays.fill(xiVar.f5625do, (byte) 0);
            xiVar.f5626for = new wi();
            xiVar.f5628new = 0;
            ByteBuffer asReadOnlyBuffer = byteBuffer2.asReadOnlyBuffer();
            xiVar.f5627if = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            xiVar.f5627if.order(ByteOrder.LITTLE_ENDIAN);
        }
        try {
            return m869for(byteBuffer2, i, i2, xiVar, mjVar);
        } finally {
            this.f1415for.m870do(xiVar);
        }
    }
}
