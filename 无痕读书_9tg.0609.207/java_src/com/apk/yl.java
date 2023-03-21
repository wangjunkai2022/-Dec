package com.apk;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* compiled from: SizeConfigStrategy.java */
@RequiresApi(19)
/* loaded from: classes8.dex */
public class yl implements wl {

    /* renamed from: case  reason: not valid java name */
    public static final Bitmap.Config[] f5987case;

    /* renamed from: else  reason: not valid java name */
    public static final Bitmap.Config[] f5988else;

    /* renamed from: goto  reason: not valid java name */
    public static final Bitmap.Config[] f5989goto;

    /* renamed from: new  reason: not valid java name */
    public static final Bitmap.Config[] f5990new;

    /* renamed from: try  reason: not valid java name */
    public static final Bitmap.Config[] f5991try;

    /* renamed from: do  reason: not valid java name */
    public final Cfor f5992do = new Cfor();

    /* renamed from: if  reason: not valid java name */
    public final sl<Cif, Bitmap> f5994if = new sl<>();

    /* renamed from: for  reason: not valid java name */
    public final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f5993for = new HashMap();

    /* compiled from: SizeConfigStrategy.java */
    /* renamed from: com.apk.yl$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class Cdo {

        /* renamed from: do  reason: not valid java name */
        public static final /* synthetic */ int[] f5995do;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f5995do = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5995do[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5995do[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5995do[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: SizeConfigStrategy.java */
    @VisibleForTesting
    /* renamed from: com.apk.yl$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor extends ol<Cif> {
        @Override // com.apk.ol
        /* renamed from: do */
        public Cif mo1970do() {
            return new Cif(this);
        }

        /* renamed from: new  reason: not valid java name */
        public Cif m3083new(int i, Bitmap.Config config) {
            Cif m1972if = m1972if();
            m1972if.f5998if = i;
            m1972if.f5997for = config;
            return m1972if;
        }
    }

    /* compiled from: SizeConfigStrategy.java */
    @VisibleForTesting
    /* renamed from: com.apk.yl$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif implements xl {

        /* renamed from: do  reason: not valid java name */
        public final Cfor f5996do;

        /* renamed from: for  reason: not valid java name */
        public Bitmap.Config f5997for;

        /* renamed from: if  reason: not valid java name */
        public int f5998if;

        public Cif(Cfor cfor) {
            this.f5996do = cfor;
        }

        @Override // com.apk.xl
        /* renamed from: do */
        public void mo2723do() {
            this.f5996do.m1971for(this);
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cif) {
                Cif cif = (Cif) obj;
                return this.f5998if == cif.f5998if && gs.m1038for(this.f5997for, cif.f5997for);
            }
            return false;
        }

        public int hashCode() {
            int i = this.f5998if * 31;
            Bitmap.Config config = this.f5997for;
            return i + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return yl.m3080goto(this.f5998if, this.f5997for);
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f5990new = configArr;
        f5991try = configArr;
        f5987case = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f5988else = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f5989goto = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    /* renamed from: goto  reason: not valid java name */
    public static String m3080goto(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    @Override // com.apk.wl
    /* renamed from: case */
    public String mo2923case(Bitmap bitmap) {
        return m3080goto(gs.m1031case(bitmap), bitmap.getConfig());
    }

    @Override // com.apk.wl
    /* renamed from: do */
    public void mo2924do(Bitmap bitmap) {
        Cif m3083new = this.f5992do.m3083new(gs.m1031case(bitmap), bitmap.getConfig());
        this.f5994if.m2510if(m3083new, bitmap);
        NavigableMap<Integer, Integer> m3082this = m3082this(bitmap.getConfig());
        Integer num = (Integer) m3082this.get(Integer.valueOf(m3083new.f5998if));
        m3082this.put(Integer.valueOf(m3083new.f5998if), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    /* renamed from: else  reason: not valid java name */
    public final void m3081else(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> m3082this = m3082this(bitmap.getConfig());
        Integer num2 = (Integer) m3082this.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                m3082this.remove(num);
                return;
            } else {
                m3082this.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + mo2923case(bitmap) + ", this: " + this);
    }

    @Override // com.apk.wl
    @Nullable
    /* renamed from: for */
    public Bitmap mo2925for() {
        Bitmap m2509for = this.f5994if.m2509for();
        if (m2509for != null) {
            m3081else(Integer.valueOf(gs.m1031case(m2509for)), m2509for);
        }
        return m2509for;
    }

    @Override // com.apk.wl
    @Nullable
    /* renamed from: if */
    public Bitmap mo2926if(int i, int i2, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int m1043try = gs.m1043try(i, i2, config);
        Cif m1972if = this.f5992do.m1972if();
        m1972if.f5998if = m1043try;
        m1972if.f5997for = config;
        int i3 = 0;
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(config)) {
            configArr = f5991try;
        } else {
            int i4 = Cdo.f5995do[config.ordinal()];
            if (i4 == 1) {
                configArr = f5990new;
            } else if (i4 == 2) {
                configArr = f5987case;
            } else if (i4 != 3) {
                configArr = i4 != 4 ? new Bitmap.Config[]{config} : f5989goto;
            } else {
                configArr = f5988else;
            }
        }
        int length = configArr.length;
        while (true) {
            if (i3 >= length) {
                break;
            }
            Bitmap.Config config2 = configArr[i3];
            Integer ceilingKey = m3082this(config2).ceilingKey(Integer.valueOf(m1043try));
            if (ceilingKey == null || ceilingKey.intValue() > m1043try * 8) {
                i3++;
            } else if (ceilingKey.intValue() != m1043try || (config2 != null ? !config2.equals(config) : config != null)) {
                this.f5992do.m1971for(m1972if);
                m1972if = this.f5992do.m3083new(ceilingKey.intValue(), config2);
            }
        }
        Bitmap m2508do = this.f5994if.m2508do(m1972if);
        if (m2508do != null) {
            m3081else(Integer.valueOf(m1972if.f5998if), m2508do);
            m2508do.reconfigure(i, i2, config);
        }
        return m2508do;
    }

    @Override // com.apk.wl
    /* renamed from: new */
    public String mo2927new(int i, int i2, Bitmap.Config config) {
        return m3080goto(gs.m1043try(i, i2, config), config);
    }

    /* renamed from: this  reason: not valid java name */
    public final NavigableMap<Integer, Integer> m3082this(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f5993for.get(config);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            this.f5993for.put(config, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("SizeConfigStrategy{groupedMap=");
        m1016super.append(this.f5994if);
        m1016super.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f5993for.entrySet()) {
            m1016super.append(entry.getKey());
            m1016super.append('[');
            m1016super.append(entry.getValue());
            m1016super.append("], ");
        }
        if (!this.f5993for.isEmpty()) {
            m1016super.replace(m1016super.length() - 2, m1016super.length(), "");
        }
        m1016super.append(")}");
        return m1016super.toString();
    }

    @Override // com.apk.wl
    /* renamed from: try */
    public int mo2928try(Bitmap bitmap) {
        return gs.m1031case(bitmap);
    }
}
