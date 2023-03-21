package com.apk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* compiled from: TagNode.java */
/* loaded from: classes7.dex */
public class kn0 extends mn0 implements km0 {

    /* renamed from: break  reason: not valid java name */
    public boolean f2600break;

    /* renamed from: case  reason: not valid java name */
    public Map<String, String> f2601case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f2602catch;

    /* renamed from: class  reason: not valid java name */
    public boolean f2603class;

    /* renamed from: const  reason: not valid java name */
    public final boolean f2604const;

    /* renamed from: else  reason: not valid java name */
    public transient boolean f2605else;

    /* renamed from: for  reason: not valid java name */
    public final LinkedHashMap<String, String> f2606for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f2607goto;

    /* renamed from: new  reason: not valid java name */
    public final List<km0> f2608new;

    /* renamed from: this  reason: not valid java name */
    public boolean f2609this;

    /* renamed from: try  reason: not valid java name */
    public List<km0> f2610try;

    public kn0(String str, boolean z) {
        super(str);
        this.f2606for = new LinkedHashMap<>();
        this.f2608new = new ArrayList();
        this.f2600break = false;
        this.f2602catch = true;
        this.f2604const = z;
    }

    /* renamed from: break  reason: not valid java name */
    public final List<kn0> m1517break(tn0 tn0Var, boolean z) {
        List<kn0> m1517break;
        LinkedList linkedList = new LinkedList();
        if (tn0Var == null) {
            return linkedList;
        }
        for (km0 km0Var : this.f2608new) {
            if (km0Var instanceof kn0) {
                kn0 kn0Var = (kn0) km0Var;
                if (tn0Var.mo2609do(kn0Var)) {
                    linkedList.add(kn0Var);
                }
                if (z && (m1517break = kn0Var.m1517break(tn0Var, z)) != null && m1517break.size() > 0) {
                    linkedList.addAll(m1517break);
                }
            }
        }
        return linkedList;
    }

    /* renamed from: case  reason: not valid java name */
    public void m1518case(Object obj) {
        if (obj == null) {
            return;
        }
        if (obj instanceof List) {
            m1522else((List) obj);
        } else if (obj instanceof gn0) {
            List<km0> list = this.f2608new;
            gn0 gn0Var = (gn0) obj;
            km0 km0Var = gn0Var.f1613final;
            if (km0Var == null) {
                km0Var = gn0Var.f1614super;
            }
            list.add(km0Var);
        } else if (obj instanceof km0) {
            this.f2608new.add((km0) obj);
            if (obj instanceof kn0) {
                ((kn0) obj).f2368do = this;
            }
        } else {
            StringBuilder m1016super = Cgoto.m1016super("Attempted to add invalid child object to TagNode; class=");
            m1016super.append(obj.getClass());
            throw new RuntimeException(m1016super.toString());
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public String m1519catch(String str) {
        if (str == null) {
            return null;
        }
        return (String) ((LinkedHashMap) m1521const()).get(str.toLowerCase());
    }

    /* renamed from: class  reason: not valid java name */
    public Map<String, String> m1520class() {
        return new LinkedHashMap(this.f2606for);
    }

    /* renamed from: const  reason: not valid java name */
    public Map<String, String> m1521const() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : this.f2606for.entrySet()) {
            String key = entry.getKey();
            if (!linkedHashMap.containsKey(key.toLowerCase())) {
                linkedHashMap.put(key.toLowerCase(), this.f2606for.get(key));
            }
        }
        return linkedHashMap;
    }

    /* renamed from: else  reason: not valid java name */
    public void m1522else(List list) {
        if (list != null) {
            for (Object obj : list) {
                m1518case(obj);
            }
        }
    }

    /* renamed from: final  reason: not valid java name */
    public List<kn0> m1523final() {
        ArrayList arrayList = new ArrayList();
        for (km0 km0Var : this.f2608new) {
            if (km0Var instanceof kn0) {
                arrayList.add((kn0) km0Var);
            }
        }
        return arrayList;
    }

    /* renamed from: goto  reason: not valid java name */
    public void m1524goto(String str, String str2) {
        if (this.f2601case == null) {
            this.f2601case = new TreeMap();
        }
        this.f2601case.put(str, str2);
    }

    /* renamed from: import  reason: not valid java name */
    public kn0 m1525import() {
        kn0 kn0Var = new kn0(this.f3073if, true);
        kn0Var.f2606for.putAll(this.f2606for);
        return kn0Var;
    }

    /* renamed from: native  reason: not valid java name */
    public void m1526native(String str) {
        if ("".equals(str.trim())) {
            return;
        }
        this.f2606for.remove(str.toLowerCase());
    }

    @Override // com.apk.mn0
    /* renamed from: new  reason: not valid java name */
    public void mo1527new(String str, String str2) {
        if (str != null) {
            String trim = str.trim();
            if (!this.f2609this && this.f2600break) {
                trim = trim.toLowerCase();
            }
            if (str2 == null) {
                str2 = "";
            }
            if (this.f2602catch) {
                str2 = str2.trim().replaceAll("\\p{Cntrl}", " ");
            }
            if (trim.length() == 0 || this.f2606for.containsKey(trim)) {
                return;
            }
            this.f2606for.put(trim, str2);
        }
    }

    /* renamed from: public  reason: not valid java name */
    public boolean m1528public(Object obj) {
        return this.f2608new.remove(obj);
    }

    /* renamed from: return */
    public boolean mo986return() {
        kn0 kn0Var = this.f2368do;
        if (kn0Var != null) {
            return kn0Var.f2608new.remove(this);
        }
        return false;
    }

    /* renamed from: static  reason: not valid java name */
    public void m1529static(Map<String, String> map) {
        if (this.f2600break) {
            this.f2606for.clear();
            this.f2606for.putAll(map);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            String str = map.get(key);
            if (!this.f2600break) {
                String str2 = key;
                for (String str3 : this.f2606for.keySet()) {
                    if (str3.equalsIgnoreCase(key)) {
                        str2 = str3;
                    }
                }
                key = str2;
            }
            if (!linkedHashMap.containsKey(key)) {
                linkedHashMap.put(key, str);
            }
        }
        this.f2606for.clear();
        this.f2606for.putAll(linkedHashMap);
    }

    /* renamed from: super  reason: not valid java name */
    public CharSequence m1530super() {
        StringBuilder sb = new StringBuilder();
        for (km0 km0Var : this.f2608new) {
            if (km0Var instanceof tm0) {
                sb.append(((tm0) km0Var).mo1737new());
            } else if (km0Var instanceof kn0) {
                CharSequence m1530super = ((kn0) km0Var).m1530super();
                if (TextUtils.isEmpty(m1530super)) {
                    m1530super = km0Var.toString();
                }
                sb.append(m1530super);
            }
        }
        return sb;
    }

    /* renamed from: switch  reason: not valid java name */
    public void m1531switch(boolean z) {
        this.f2600break = true;
        this.f2609this = z;
        if (z) {
            return;
        }
        Map<String, String> m1521const = m1521const();
        this.f2606for.clear();
        this.f2606for.putAll(m1521const);
    }

    /* renamed from: this  reason: not valid java name */
    public Object[] m1532this(String str) throws qn0 {
        pn0 pn0Var = new pn0(str);
        Collection<Object> m2062do = pn0Var.m2062do(pn0Var.m2061case(this), 0, pn0Var.f3719do.length - 1, false, 1, 0, false, null);
        Object[] objArr = new Object[m2062do.size()];
        int i = 0;
        for (Object obj : m2062do) {
            objArr[i] = obj;
            i++;
        }
        return objArr;
    }

    /* renamed from: throw  reason: not valid java name */
    public boolean m1533throw(String str) {
        for (String str2 : this.f2606for.keySet()) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.apk.mn0
    /* renamed from: try  reason: not valid java name */
    public String mo1534try() {
        if (this.f2609this) {
            return this.f3073if;
        }
        String str = this.f3073if;
        if (str == null) {
            return null;
        }
        return str.toLowerCase();
    }

    /* renamed from: while  reason: not valid java name */
    public boolean m1535while() {
        if (this.f2603class) {
            return true;
        }
        for (km0 km0Var : this.f2608new) {
            if (km0Var instanceof kn0) {
                if (!((kn0) km0Var).f2603class) {
                    return false;
                }
            } else if (km0Var instanceof tm0) {
                if (!((tm0) km0Var).f4734for) {
                    return false;
                }
            } else {
                boolean z = km0Var instanceof sm0;
                return false;
            }
        }
        return true;
    }
}
