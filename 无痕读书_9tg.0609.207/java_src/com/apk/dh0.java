package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ResponseBody.kt */
/* loaded from: classes7.dex */
public abstract class dh0 implements Closeable {

    /* renamed from: if  reason: not valid java name */
    public static final Cif f861if = new Cif(null);

    /* renamed from: do  reason: not valid java name */
    public Reader f862do;

    /* compiled from: ResponseBody.kt */
    /* renamed from: com.apk.dh0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends Reader {

        /* renamed from: do  reason: not valid java name */
        public boolean f863do;

        /* renamed from: for  reason: not valid java name */
        public final tk0 f864for;

        /* renamed from: if  reason: not valid java name */
        public Reader f865if;

        /* renamed from: new  reason: not valid java name */
        public final Charset f866new;

        public Cdo(@NotNull tk0 tk0Var, @NotNull Charset charset) {
            nd0.m1875new(tk0Var, "source");
            nd0.m1875new(charset, "charset");
            this.f864for = tk0Var;
            this.f866new = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f863do = true;
            Reader reader = this.f865if;
            if (reader != null) {
                reader.close();
            } else {
                this.f864for.close();
            }
        }

        @Override // java.io.Reader
        public int read(@NotNull char[] cArr, int i, int i2) throws IOException {
            nd0.m1875new(cArr, "cbuf");
            if (!this.f863do) {
                Reader reader = this.f865if;
                if (reader == null) {
                    reader = new InputStreamReader(this.f864for.mo859static(), jh0.m1321default(this.f864for, this.f866new));
                    this.f865if = reader;
                }
                return reader.read(cArr, i, i2);
            }
            throw new IOException("Stream closed");
        }
    }

    /* compiled from: ResponseBody.kt */
    /* renamed from: com.apk.dh0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {
        public Cif(md0 md0Var) {
        }
    }

    @Deprecated(level = hc0.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
    @JvmStatic
    @NotNull
    /* renamed from: default  reason: not valid java name */
    public static final dh0 m452default(@Nullable vg0 vg0Var, @NotNull byte[] bArr) {
        nd0.m1875new(bArr, "content");
        nd0.m1875new(bArr, "$this$toResponseBody");
        rk0 rk0Var = new rk0();
        rk0Var.m2292implements(bArr);
        nd0.m1875new(rk0Var, "$this$asResponseBody");
        return new eh0(rk0Var, vg0Var, bArr.length);
    }

    @NotNull
    /* renamed from: break  reason: not valid java name */
    public final Reader m453break() {
        Charset charset;
        Reader reader = this.f862do;
        if (reader == null) {
            tk0 mo454extends = mo454extends();
            vg0 mo458throws = mo458throws();
            if (mo458throws == null || (charset = mo458throws.m2792do(ee0.f1037do)) == null) {
                charset = ee0.f1037do;
            }
            reader = new Cdo(mo454extends, charset);
            this.f862do = reader;
        }
        return reader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        jh0.m1316case(mo454extends());
    }

    @NotNull
    /* renamed from: extends  reason: not valid java name */
    public abstract tk0 mo454extends();

    @NotNull
    /* renamed from: finally  reason: not valid java name */
    public final String m455finally() throws IOException {
        Charset charset;
        tk0 mo454extends = mo454extends();
        try {
            vg0 mo458throws = mo458throws();
            if (mo458throws == null || (charset = mo458throws.m2792do(ee0.f1037do)) == null) {
                charset = ee0.f1037do;
            }
            String mo851catch = mo454extends.mo851catch(jh0.m1321default(mo454extends, charset));
            sb0.m2417import(mo454extends, null);
            return mo851catch;
        } finally {
        }
    }

    @NotNull
    /* renamed from: for  reason: not valid java name */
    public final InputStream m456for() {
        return mo454extends().mo859static();
    }

    /* renamed from: throw  reason: not valid java name */
    public abstract long mo457throw();

    @Nullable
    /* renamed from: throws  reason: not valid java name */
    public abstract vg0 mo458throws();

    @NotNull
    /* renamed from: try  reason: not valid java name */
    public final byte[] m459try() throws IOException {
        long mo457throw = mo457throw();
        if (mo457throw <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
            tk0 mo454extends = mo454extends();
            try {
                byte[] mo850case = mo454extends.mo850case();
                sb0.m2417import(mo454extends, null);
                int length = mo850case.length;
                if (mo457throw == -1 || mo457throw == length) {
                    return mo850case;
                }
                throw new IOException("Content-Length (" + mo457throw + ") and stream length (" + length + ") disagree");
            } finally {
            }
        } else {
            throw new IOException(Cgoto.m1000for("Cannot buffer entire body for content length: ", mo457throw));
        }
    }
}
