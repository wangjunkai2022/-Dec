package com.apk;

import android.text.TextUtils;
import com.apk.st;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.manhua.data.bean.ComicImageConifg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.json.JSONArray;
/* compiled from: CacheHelper.java */
/* loaded from: classes8.dex */
public class p0 {

    /* renamed from: break  reason: not valid java name */
    public static String f3542break;

    /* renamed from: case  reason: not valid java name */
    public static List<String> f3543case;

    /* renamed from: catch  reason: not valid java name */
    public static String f3544catch;

    /* renamed from: class  reason: not valid java name */
    public static String f3545class;

    /* renamed from: const  reason: not valid java name */
    public static String f3546const;

    /* renamed from: do  reason: not valid java name */
    public static List<String> f3547do;

    /* renamed from: else  reason: not valid java name */
    public static List<String> f3548else;

    /* renamed from: final  reason: not valid java name */
    public static String f3549final;

    /* renamed from: for  reason: not valid java name */
    public static List<String> f3550for;

    /* renamed from: goto  reason: not valid java name */
    public static List<String> f3551goto;

    /* renamed from: if  reason: not valid java name */
    public static List<String> f3552if;

    /* renamed from: new  reason: not valid java name */
    public static List<String> f3553new;

    /* renamed from: super  reason: not valid java name */
    public static String f3554super;

    /* renamed from: this  reason: not valid java name */
    public static ComicImageConifg f3555this;

    /* renamed from: throw  reason: not valid java name */
    public static String f3556throw;

    /* renamed from: try  reason: not valid java name */
    public static List<String> f3557try;

    /* renamed from: break  reason: not valid java name */
    public static List<String> m1996break(String str) {
        List list;
        ArrayList arrayList = null;
        try {
            String m2620do = tt.m2620do("SP_NOVEL_CLOUDLIST_KEY_" + str, "");
            if (TextUtils.isEmpty(m2620do)) {
                return null;
            }
            try {
                list = (List) Convert.fromJson(new JSONArray(m2620do).toString(), new qf().getType());
            } catch (Exception unused) {
                list = null;
            }
            if (list == null || list.size() <= 0) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String m2620do2 = tt.m2620do("SP_NOVEL_CLOUD_HOST_KEY" + ((String) it.next()), "");
                    if (!TextUtils.isEmpty(m2620do2)) {
                        arrayList2.add(m2620do2);
                    }
                }
                return arrayList2;
            } catch (Exception e) {
                e = e;
                arrayList = arrayList2;
                e.printStackTrace();
                return arrayList;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* renamed from: case  reason: not valid java name */
    public static int m1997case(String str) {
        return ze.m3174instanceof(str + "_INDEX", 0);
    }

    /* renamed from: catch  reason: not valid java name */
    public static String m1998catch() {
        try {
            if (f3551goto == null) {
                ArrayList arrayList = new ArrayList();
                f3551goto = arrayList;
                arrayList.add("https://scmanhua.apptuxing.com");
                f3551goto.addAll(m2012this(ze.n("SP_HOST_SHUC_MH_KEY")));
            }
            return f3551goto.get(m1997case("SP_HOST_SHUC_MH_KEY") % f3551goto.size());
        } catch (Exception e) {
            e.printStackTrace();
            return "https://scmanhua.apptuxing.com";
        }
    }

    /* renamed from: class  reason: not valid java name */
    public static String m1999class() {
        try {
            if (f3557try == null) {
                ArrayList arrayList = new ArrayList();
                f3557try = arrayList;
                arrayList.add("https://scxs.apptuxing.com");
                f3557try.addAll(m2012this(ze.n("SP_HOST_SHUC_XS_KEY")));
            }
            return f3557try.get(m1997case("SP_HOST_SHUC_XS_KEY") % f3557try.size());
        } catch (Exception e) {
            e.printStackTrace();
            return "https://scxs.apptuxing.com";
        }
    }

    /* renamed from: const  reason: not valid java name */
    public static String m2000const() {
        if (TextUtils.isEmpty(f3554super)) {
            String n = ze.n("URL_HOST_LIEBIAN_KEY");
            f3554super = n;
            if (TextUtils.isEmpty(n)) {
                f3554super = "https://user.pigqq.com";
            }
        }
        return f3554super;
    }

    /* renamed from: do  reason: not valid java name */
    public static Object m2001do(String str) {
        if (eg.f1043do != null && eg.m598goto(str)) {
            st<String, Object> stVar = eg.f1043do;
            synchronized (stVar) {
                if (stVar.f4578if.contains(str)) {
                    ListIterator<st.Cfor<String, Object>> listIterator = stVar.f4576do.listIterator();
                    while (listIterator.hasNext()) {
                        st.Cfor<String, Object> next = listIterator.next();
                        if (next.f4581do.equals(str)) {
                            if (listIterator.previousIndex() != 0) {
                                listIterator.remove();
                                stVar.f4576do.addFirst(next);
                            }
                            if (stVar.f4577for != -1 && stVar.f4576do.size() > stVar.f4577for) {
                                stVar.m2547do(stVar.f4576do.size() - 1);
                            }
                            return next.f4582if;
                        }
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: else  reason: not valid java name */
    public static String m2002else() {
        try {
            if (f3548else == null) {
                ArrayList arrayList = new ArrayList();
                f3548else = arrayList;
                arrayList.add("https://infosmanhua.apptuxing.com");
                f3548else.addAll(m2012this(ze.n("SP_HOST_INFO_DEX_MH_KEY")));
            }
            return f3548else.get(m1997case("SP_HOST_INFO_DEX_MH_KEY") % f3548else.size());
        } catch (Exception e) {
            e.printStackTrace();
            return "https://infosmanhua.apptuxing.com";
        }
    }

    /* renamed from: final  reason: not valid java name */
    public static String m2003final(String str) {
        List list;
        try {
            if (eg.m598goto("NOVEL_CLOUD_CHANGE_XZXS_HOST_KEY") && (list = (List) m2001do("NOVEL_CLOUD_CHANGE_XZXS_HOST_KEY")) != null && list.size() > 0) {
                String str2 = (String) list.get(0);
                if (!TextUtils.isEmpty(str2)) {
                    return str2;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            List<String> m1996break = m1996break(str);
            if (m1996break != null && m1996break.size() > 0) {
                m2011super("NOVEL_CLOUD_CHANGE_XZXS_HOST_KEY", m1996break);
                String str3 = m1996break.get(0);
                if (!TextUtils.isEmpty(str3)) {
                    return str3;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            if (f3550for == null) {
                ArrayList arrayList = new ArrayList();
                f3550for = arrayList;
                arrayList.add("https://downbakxs.apptuxing.com");
                f3550for.addAll(m2012this(ze.n("SP_HOST_XZ_XS_KEY")));
            }
            return f3550for.get(m1997case("SP_HOST_XZ_XS_KEY") % f3550for.size());
        } catch (Exception e3) {
            e3.printStackTrace();
            return "https://downbakxs.apptuxing.com";
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static String m2004for(String str) {
        List list;
        try {
            if (eg.m598goto("NOVEL_CLOUD_CHANGE_HOST_KEY") && (list = (List) m2001do("NOVEL_CLOUD_CHANGE_HOST_KEY")) != null && list.size() > 0) {
                String str2 = (String) list.get(0);
                if (!TextUtils.isEmpty(str2)) {
                    return str2;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            List<String> m1996break = m1996break(str);
            if (m1996break != null && m1996break.size() > 0) {
                m2011super("NOVEL_CLOUD_CHANGE_HOST_KEY", m1996break);
                String str3 = m1996break.get(0);
                if (!TextUtils.isEmpty(str3)) {
                    return str3;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            if (f3552if == null) {
                ArrayList arrayList = new ArrayList();
                f3552if = arrayList;
                arrayList.add("https://contentxs.apptuxing.com");
                f3552if.addAll(m2012this(ze.n("SP_HOST_CHAP_XS_KEY")));
            }
            return f3552if.get(m1997case("SP_HOST_CHAP_XS_KEY") % f3552if.size());
        } catch (Exception e3) {
            e3.printStackTrace();
            return "https://contentxs.apptuxing.com";
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public static String m2005goto(String str) {
        List list;
        try {
            if (eg.m598goto("NOVEL_CLOUD_CHANGE_XS_INFO_HOST_KEY") && (list = (List) m2001do("NOVEL_CLOUD_CHANGE_XS_INFO_HOST_KEY")) != null && list.size() > 0) {
                String str2 = (String) list.get(0);
                if (!TextUtils.isEmpty(str2)) {
                    return str2;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            List<String> m1996break = m1996break(str);
            if (m1996break != null && m1996break.size() > 0) {
                m1996break.add("https://infosxs.apptuxing.com");
                m2011super("NOVEL_CLOUD_CHANGE_XS_INFO_HOST_KEY", m1996break);
                String str3 = m1996break.get(0);
                if (!TextUtils.isEmpty(str3)) {
                    return str3;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            if (f3553new == null) {
                ArrayList arrayList = new ArrayList();
                f3553new = arrayList;
                arrayList.add("https://infosxs.apptuxing.com");
                f3553new.addAll(m2012this(ze.n("SP_HOST_INFO_DEX_XS_KEY")));
            }
            return f3553new.get(m1997case("SP_HOST_INFO_DEX_XS_KEY") % f3553new.size());
        } catch (Exception e3) {
            e3.printStackTrace();
            return "https://infosxs.apptuxing.com";
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static String m2006if() {
        try {
            if (f3543case == null) {
                ArrayList arrayList = new ArrayList();
                f3543case = arrayList;
                arrayList.add("https://contentmanhua.apptuxing.com");
                f3543case.addAll(m2012this(ze.n("SP_HOST_CHAP_MH_KEY")));
            }
            return f3543case.get(m1997case("SP_HOST_CHAP_MH_KEY") % f3543case.size());
        } catch (Exception e) {
            e.printStackTrace();
            return "https://contentmanhua.apptuxing.com";
        }
    }

    /* renamed from: import  reason: not valid java name */
    public static void m2007import(String str, String str2) {
        try {
            String str3 = "SP_NOVEL_CLOUDLIST_KEY_" + str;
            if (!TextUtils.isEmpty(str2)) {
                tt.f4763do.putString(str3, str2);
            } else if (ze.D(str3)) {
                ze.W(str3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: native  reason: not valid java name */
    public static void m2008native(boolean z) {
        tt.f4763do.putBoolean("SP_SYNC_CLOUD_SHELF_KEY", z);
    }

    /* renamed from: new  reason: not valid java name */
    public static String m2009new() {
        if (TextUtils.isEmpty(f3544catch)) {
            String n = ze.n("URL_HOST_DYNIC_KEY");
            f3544catch = n;
            if (TextUtils.isEmpty(n)) {
                f3544catch = "https://userxs.apptuxing.com";
            }
        }
        return f3544catch;
    }

    /* renamed from: public  reason: not valid java name */
    public static void m2010public(String str, int i) {
        tt.f4763do.putInt(Cgoto.m989case(str, "_INDEX"), i);
    }

    /* renamed from: super  reason: not valid java name */
    public static void m2011super(String str, Object obj) {
        if (eg.f1043do == null) {
            eg.f1043do = new st<>();
        }
        st<String, Object> stVar = eg.f1043do;
        synchronized (stVar) {
            if (str == null || obj == null) {
                return;
            }
            if (stVar.f4578if.contains(str)) {
                ListIterator<st.Cfor<String, Object>> listIterator = stVar.f4576do.listIterator();
                while (true) {
                    if (!listIterator.hasNext()) {
                        break;
                    }
                    st.Cfor<String, Object> next = listIterator.next();
                    if (next.f4581do.equals(str)) {
                        next.update(obj);
                        if (!stVar.f4580try && listIterator.previousIndex() != 0) {
                            listIterator.remove();
                            stVar.f4576do.addFirst(next);
                        }
                    }
                }
            } else {
                stVar.f4578if.add(str);
                stVar.f4576do.addFirst(new st.Cfor<>(str, obj, null));
            }
            if (stVar.f4579new != -1 && stVar.f4576do.size() > stVar.f4579new) {
                stVar.m2547do(stVar.f4576do.size() - 1);
            }
        }
    }

    /* renamed from: this  reason: not valid java name */
    public static List<String> m2012this(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONArray jSONArray = new JSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    String optString = jSONArray.optString(i);
                    if (!TextUtils.isEmpty(optString)) {
                        arrayList.add(optString);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
        r1.remove();
        r0.f4578if.remove(r2.f4581do);
        com.apk.st.Cfor.m2549if(r2);
     */
    /* renamed from: throw  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2013throw(java.lang.String r4) {
        /*
            com.apk.st<java.lang.String, java.lang.Object> r0 = com.apk.eg.f1043do
            if (r0 == 0) goto L39
            monitor-enter(r0)
            java.util.HashSet<KO> r1 = r0.f4578if     // Catch: java.lang.Throwable -> L36
            boolean r1 = r1.contains(r4)     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L34
            java.util.LinkedList<com.apk.st$for<KO, VO>> r1 = r0.f4576do     // Catch: java.lang.Throwable -> L36
            java.util.ListIterator r1 = r1.listIterator()     // Catch: java.lang.Throwable -> L36
        L13:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L36
            if (r2 == 0) goto L34
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L36
            com.apk.st$for r2 = (com.apk.st.Cfor) r2     // Catch: java.lang.Throwable -> L36
            KI r3 = r2.f4581do     // Catch: java.lang.Throwable -> L36
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L36
            if (r3 == 0) goto L13
            r1.remove()     // Catch: java.lang.Throwable -> L36
            java.util.HashSet<KO> r4 = r0.f4578if     // Catch: java.lang.Throwable -> L36
            KI r1 = r2.f4581do     // Catch: java.lang.Throwable -> L36
            r4.remove(r1)     // Catch: java.lang.Throwable -> L36
            com.apk.st.Cfor.m2549if(r2)     // Catch: java.lang.Throwable -> L36
        L34:
            monitor-exit(r0)
            goto L39
        L36:
            r4 = move-exception
            monitor-exit(r0)
            throw r4
        L39:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.p0.m2013throw(java.lang.String):void");
    }

    /* renamed from: try  reason: not valid java name */
    public static String m2014try() {
        if (!TextUtils.isEmpty(f3546const)) {
            String n = ze.n("COMIC_URL_HOST_DYN_KEY");
            f3546const = n;
            if (TextUtils.isEmpty(n)) {
                f3546const = "https://usermanhua.apptuxing.com";
            }
        }
        return f3546const;
    }

    /* renamed from: while  reason: not valid java name */
    public static void m2015while(String str, JSONArray jSONArray) {
        if (jSONArray != null) {
            tt.f4763do.putString(str, jSONArray.toString());
        }
    }
}
