package com.apk;

import java.util.ConcurrentModificationException;
import java.util.Map;
/* compiled from: SimpleArrayMap.java */
/* loaded from: classes7.dex */
public class iq0<K, V> {

    /* renamed from: case  reason: not valid java name */
    public static Object[] f2217case;

    /* renamed from: else  reason: not valid java name */
    public static int f2218else;

    /* renamed from: new  reason: not valid java name */
    public static Object[] f2219new;

    /* renamed from: try  reason: not valid java name */
    public static int f2220try;

    /* renamed from: do  reason: not valid java name */
    public int[] f2221do = gq0.f1627do;

    /* renamed from: if  reason: not valid java name */
    public Object[] f2223if = gq0.f1628if;

    /* renamed from: for  reason: not valid java name */
    public int f2222for = 0;

    /* renamed from: for  reason: not valid java name */
    public static void m1259for(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (fq0.class) {
                if (f2218else < 10) {
                    objArr[0] = f2217case;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f2217case = objArr;
                    f2218else++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (fq0.class) {
                if (f2220try < 10) {
                    objArr[0] = f2219new;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f2219new = objArr;
                    f2220try++;
                }
            }
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static int m1260if(int[] iArr, int i, int i2) {
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            try {
                int i6 = iArr[i5];
                if (i6 < i2) {
                    i4 = i5 + 1;
                } else if (i6 <= i2) {
                    return i5;
                } else {
                    i3 = i5 - 1;
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
        return ~i4;
    }

    /* renamed from: break  reason: not valid java name */
    public V m1261break(int i) {
        return (V) this.f2223if[(i << 1) + 1];
    }

    /* renamed from: case  reason: not valid java name */
    public int m1262case() {
        int i = this.f2222for;
        if (i == 0) {
            return -1;
        }
        int m1260if = m1260if(this.f2221do, i, 0);
        if (m1260if >= 0 && this.f2223if[m1260if << 1] != null) {
            int i2 = m1260if + 1;
            while (i2 < i && this.f2221do[i2] == 0) {
                if (this.f2223if[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = m1260if - 1; i3 >= 0 && this.f2221do[i3] == 0; i3--) {
                if (this.f2223if[i3 << 1] == null) {
                    return i3;
                }
            }
            return ~i2;
        }
        return m1260if;
    }

    public void clear() {
        int i = this.f2222for;
        if (i > 0) {
            int[] iArr = this.f2221do;
            Object[] objArr = this.f2223if;
            this.f2221do = gq0.f1627do;
            this.f2223if = gq0.f1628if;
            this.f2222for = 0;
            m1259for(iArr, objArr, i);
        }
        if (this.f2222for > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return m1268try(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m1264else(obj) >= 0;
    }

    /* renamed from: do  reason: not valid java name */
    public final void m1263do(int i) {
        if (i == 8) {
            synchronized (fq0.class) {
                if (f2217case != null) {
                    Object[] objArr = f2217case;
                    this.f2223if = objArr;
                    f2217case = (Object[]) objArr[0];
                    this.f2221do = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f2218else--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (fq0.class) {
                if (f2219new != null) {
                    Object[] objArr2 = f2219new;
                    this.f2223if = objArr2;
                    f2219new = (Object[]) objArr2[0];
                    this.f2221do = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f2220try--;
                    return;
                }
            }
        }
        this.f2221do = new int[i];
        this.f2223if = new Object[i << 1];
    }

    /* renamed from: else  reason: not valid java name */
    public int m1264else(Object obj) {
        int i = this.f2222for * 2;
        Object[] objArr = this.f2223if;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof iq0) {
            iq0 iq0Var = (iq0) obj;
            if (this.f2222for != iq0Var.f2222for) {
                return false;
            }
            for (int i = 0; i < this.f2222for; i++) {
                try {
                    K m1265goto = m1265goto(i);
                    V m1261break = m1261break(i);
                    Object obj2 = iq0Var.get(m1265goto);
                    if (m1261break == null) {
                        if (obj2 != null || !iq0Var.containsKey(m1265goto)) {
                            return false;
                        }
                    } else if (!m1261break.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.f2222for != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f2222for; i2++) {
                try {
                    K m1265goto2 = m1265goto(i2);
                    V m1261break2 = m1261break(i2);
                    Object obj3 = map.get(m1265goto2);
                    if (m1261break2 == null) {
                        if (obj3 != null || !map.containsKey(m1265goto2)) {
                            return false;
                        }
                    } else if (!m1261break2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public V get(Object obj) {
        int m1268try = m1268try(obj);
        if (m1268try >= 0) {
            return (V) this.f2223if[(m1268try << 1) + 1];
        }
        return null;
    }

    /* renamed from: goto  reason: not valid java name */
    public K m1265goto(int i) {
        return (K) this.f2223if[i << 1];
    }

    public int hashCode() {
        int[] iArr = this.f2221do;
        Object[] objArr = this.f2223if;
        int i = this.f2222for;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public boolean isEmpty() {
        return this.f2222for <= 0;
    }

    /* renamed from: new  reason: not valid java name */
    public int m1266new(Object obj, int i) {
        int i2 = this.f2222for;
        if (i2 == 0) {
            return -1;
        }
        int m1260if = m1260if(this.f2221do, i2, i);
        if (m1260if >= 0 && !obj.equals(this.f2223if[m1260if << 1])) {
            int i3 = m1260if + 1;
            while (i3 < i2 && this.f2221do[i3] == i) {
                if (obj.equals(this.f2223if[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m1260if - 1; i4 >= 0 && this.f2221do[i4] == i; i4--) {
                if (obj.equals(this.f2223if[i4 << 1])) {
                    return i4;
                }
            }
            return ~i3;
        }
        return m1260if;
    }

    public V put(K k, V v) {
        int i;
        int m1266new;
        int i2 = this.f2222for;
        if (k == null) {
            m1266new = m1262case();
            i = 0;
        } else {
            int hashCode = k.hashCode();
            i = hashCode;
            m1266new = m1266new(k, hashCode);
        }
        if (m1266new >= 0) {
            int i3 = (m1266new << 1) + 1;
            Object[] objArr = this.f2223if;
            V v2 = (V) objArr[i3];
            objArr[i3] = v;
            return v2;
        }
        int i4 = ~m1266new;
        if (i2 >= this.f2221do.length) {
            int i5 = 4;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.f2221do;
            Object[] objArr2 = this.f2223if;
            m1263do(i5);
            if (i2 == this.f2222for) {
                int[] iArr2 = this.f2221do;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr2, 0, this.f2223if, 0, objArr2.length);
                }
                m1259for(iArr, objArr2, i2);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i4 < i2) {
            int[] iArr3 = this.f2221do;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.f2223if;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.f2222for - i4) << 1);
        }
        int i7 = this.f2222for;
        if (i2 == i7) {
            int[] iArr4 = this.f2221do;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.f2223if;
                int i8 = i4 << 1;
                objArr4[i8] = k;
                objArr4[i8 + 1] = v;
                this.f2222for = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V remove(Object obj) {
        int m1268try = m1268try(obj);
        if (m1268try >= 0) {
            return m1267this(m1268try);
        }
        return null;
    }

    public int size() {
        return this.f2222for;
    }

    /* renamed from: this  reason: not valid java name */
    public V m1267this(int i) {
        Object[] objArr = this.f2223if;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.f2222for;
        int i4 = 0;
        if (i3 <= 1) {
            m1259for(this.f2221do, objArr, i3);
            this.f2221do = gq0.f1627do;
            this.f2223if = gq0.f1628if;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.f2221do;
            if (iArr.length > 8 && i3 < iArr.length / 3) {
                int i6 = i3 > 8 ? i3 + (i3 >> 1) : 8;
                int[] iArr2 = this.f2221do;
                Object[] objArr2 = this.f2223if;
                m1263do(i6);
                if (i3 != this.f2222for) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr2, 0, this.f2221do, 0, i);
                    System.arraycopy(objArr2, 0, this.f2223if, 0, i2);
                }
                if (i < i5) {
                    int i7 = i + 1;
                    int i8 = i5 - i;
                    System.arraycopy(iArr2, i7, this.f2221do, i, i8);
                    System.arraycopy(objArr2, i7 << 1, this.f2223if, i2, i8 << 1);
                }
            } else {
                if (i < i5) {
                    int[] iArr3 = this.f2221do;
                    int i9 = i + 1;
                    int i10 = i5 - i;
                    System.arraycopy(iArr3, i9, iArr3, i, i10);
                    Object[] objArr3 = this.f2223if;
                    System.arraycopy(objArr3, i9 << 1, objArr3, i2, i10 << 1);
                }
                Object[] objArr4 = this.f2223if;
                int i11 = i5 << 1;
                objArr4[i11] = null;
                objArr4[i11 + 1] = null;
            }
            i4 = i5;
        }
        if (i3 == this.f2222for) {
            this.f2222for = i4;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2222for * 28);
        sb.append('{');
        for (int i = 0; i < this.f2222for; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K m1265goto = m1265goto(i);
            if (m1265goto != this) {
                sb.append(m1265goto);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V m1261break = m1261break(i);
            if (m1261break != this) {
                sb.append(m1261break);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: try  reason: not valid java name */
    public int m1268try(Object obj) {
        return obj == null ? m1262case() : m1266new(obj, obj.hashCode());
    }
}
