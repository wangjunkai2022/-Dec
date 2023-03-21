package com.apk;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: GlideException.java */
/* loaded from: classes8.dex */
public final class bl extends Exception {

    /* renamed from: case  reason: not valid java name */
    public static final StackTraceElement[] f349case = new StackTraceElement[0];

    /* renamed from: do  reason: not valid java name */
    public final List<Throwable> f350do;

    /* renamed from: for  reason: not valid java name */
    public dj f351for;

    /* renamed from: if  reason: not valid java name */
    public kj f352if;

    /* renamed from: new  reason: not valid java name */
    public Class<?> f353new;

    /* renamed from: try  reason: not valid java name */
    public String f354try;

    public bl(String str) {
        List<Throwable> emptyList = Collections.emptyList();
        this.f354try = str;
        setStackTrace(f349case);
        this.f350do = emptyList;
    }

    /* renamed from: for  reason: not valid java name */
    public static void m200for(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            appendable.append("Cause (").append(String.valueOf(i2)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i);
            if (th instanceof bl) {
                ((bl) th).m204try(appendable);
            } else {
                m202new(th, appendable);
            }
            i = i2;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static void m201if(List<Throwable> list, Appendable appendable) {
        try {
            m200for(list, appendable);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: new  reason: not valid java name */
    public static void m202new(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final void m203do(Throwable th, List<Throwable> list) {
        if (th instanceof bl) {
            for (Throwable th2 : ((bl) th).f350do) {
                m203do(th2, list);
            }
            return;
        }
        list.add(th);
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f354try);
        String str3 = "";
        if (this.f353new != null) {
            StringBuilder m1016super = Cgoto.m1016super(", ");
            m1016super.append(this.f353new);
            str = m1016super.toString();
        } else {
            str = "";
        }
        sb.append(str);
        if (this.f351for != null) {
            StringBuilder m1016super2 = Cgoto.m1016super(", ");
            m1016super2.append(this.f351for);
            str2 = m1016super2.toString();
        } else {
            str2 = "";
        }
        sb.append(str2);
        if (this.f352if != null) {
            StringBuilder m1016super3 = Cgoto.m1016super(", ");
            m1016super3.append(this.f352if);
            str3 = m1016super3.toString();
        }
        sb.append(str3);
        ArrayList arrayList = new ArrayList();
        m203do(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" causes:");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Throwable th = (Throwable) it.next();
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        m204try(System.err);
    }

    /* renamed from: try  reason: not valid java name */
    public final void m204try(Appendable appendable) {
        m202new(this, appendable);
        m201if(this.f350do, new Cdo(appendable));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        m204try(printStream);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        m204try(printWriter);
    }

    /* compiled from: GlideException.java */
    /* renamed from: com.apk.bl$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements Appendable {

        /* renamed from: do  reason: not valid java name */
        public final Appendable f355do;

        /* renamed from: if  reason: not valid java name */
        public boolean f356if = true;

        public Cdo(Appendable appendable) {
            this.f355do = appendable;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c) throws IOException {
            if (this.f356if) {
                this.f356if = false;
                this.f355do.append("  ");
            }
            this.f356if = c == '\n';
            this.f355do.append(c);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence) throws IOException {
            if (charSequence == null) {
                charSequence = "";
            }
            append(charSequence, 0, charSequence.length());
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence, int i, int i2) throws IOException {
            if (charSequence == null) {
                charSequence = "";
            }
            boolean z = false;
            if (this.f356if) {
                this.f356if = false;
                this.f355do.append("  ");
            }
            if (charSequence.length() > 0 && charSequence.charAt(i2 - 1) == '\n') {
                z = true;
            }
            this.f356if = z;
            this.f355do.append(charSequence, i, i2);
            return this;
        }
    }

    public bl(String str, Throwable th) {
        List<Throwable> singletonList = Collections.singletonList(th);
        this.f354try = str;
        setStackTrace(f349case);
        this.f350do = singletonList;
    }

    public bl(String str, List<Throwable> list) {
        this.f354try = str;
        setStackTrace(f349case);
        this.f350do = list;
    }
}
