package com.apk;

import android.app.Activity;
import com.hjq.toast.ToastUtils;
import java.util.HashMap;
import java.util.Map;
/* compiled from: FullVideoAdHelper.java */
/* loaded from: classes8.dex */
public class c extends f {

    /* renamed from: this  reason: not valid java name */
    public static c f471this;

    /* renamed from: else  reason: not valid java name */
    public c60 f472else;

    /* renamed from: goto  reason: not valid java name */
    public Map<String, v60> f473goto;

    /* compiled from: FullVideoAdHelper.java */
    /* renamed from: com.apk.c$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements v60 {
        public Cdo() {
        }

        @Override // com.apk.b70
        /* renamed from: case */
        public void mo157case() {
            c cVar = c.this;
            if (cVar != null) {
                Map<String, v60> map = cVar.f473goto;
                if (map != null) {
                    for (Map.Entry<String, v60> entry : map.entrySet()) {
                        if (entry != null && entry.getValue() != null) {
                            entry.getValue().mo157case();
                        }
                    }
                    return;
                }
                return;
            }
            throw null;
        }

        @Override // com.apk.b70
        /* renamed from: else */
        public void mo158else() {
            c cVar = c.this;
            if (cVar != null) {
                Map<String, v60> map = cVar.f473goto;
                if (map != null) {
                    for (Map.Entry<String, v60> entry : map.entrySet()) {
                        if (entry != null && entry.getValue() != null) {
                            entry.getValue().mo158else();
                        }
                    }
                    return;
                }
                return;
            }
            throw null;
        }

        @Override // com.apk.b70
        /* renamed from: if */
        public void mo159if(int i, String str) {
            c.this.m685do(i);
            Map<String, v60> map = c.this.f473goto;
            if (map != null) {
                for (Map.Entry<String, v60> entry : map.entrySet()) {
                    if (entry != null && entry.getValue() != null) {
                        entry.getValue().mo159if(i, str);
                    }
                }
            }
        }

        @Override // com.apk.v60
        public void onAdClick() {
            if (c.this != null) {
                if (v.m2734do() != null) {
                    Map<String, v60> map = c.this.f473goto;
                    if (map != null) {
                        for (Map.Entry<String, v60> entry : map.entrySet()) {
                            if (entry != null && entry.getValue() != null) {
                                entry.getValue().onAdClick();
                            }
                        }
                        return;
                    }
                    return;
                }
                throw null;
            }
            throw null;
        }

        @Override // com.apk.v60
        public void onAdClose() {
            if (c.this != null) {
                if (v.m2734do() != null) {
                    Map<String, v60> map = c.this.f473goto;
                    if (map != null) {
                        for (Map.Entry<String, v60> entry : map.entrySet()) {
                            if (entry != null && entry.getValue() != null) {
                                entry.getValue().onAdClose();
                            }
                        }
                        return;
                    }
                    return;
                }
                throw null;
            }
            throw null;
        }

        @Override // com.apk.v60
        public void onAdLoaded() {
            Map<String, v60> map = c.this.f473goto;
            if (map != null) {
                for (Map.Entry<String, v60> entry : map.entrySet()) {
                    if (entry != null && entry.getValue() != null) {
                        entry.getValue().onAdLoaded();
                    }
                }
            }
            if (c.this != null) {
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            }
            throw null;
        }

        @Override // com.apk.v60
        public void onAdShow() {
            c.this.m688if();
            c cVar = c.this;
            if (cVar != null) {
                Map<String, v60> map = cVar.f473goto;
                if (map != null) {
                    for (Map.Entry<String, v60> entry : map.entrySet()) {
                        if (entry != null && entry.getValue() != null) {
                            entry.getValue().onAdShow();
                        }
                    }
                    return;
                }
                return;
            }
            throw null;
        }

        @Override // com.apk.v60
        public void onVideoCached() {
            Map<String, v60> map = c.this.f473goto;
            if (map != null) {
                for (Map.Entry<String, v60> entry : map.entrySet()) {
                    if (entry != null && entry.getValue() != null) {
                        entry.getValue().onVideoCached();
                    }
                }
            }
            c.this.m686for();
        }
    }

    public c() {
        this.f1160try = "full";
    }

    /* renamed from: while  reason: not valid java name */
    public static c m286while() {
        if (f471this == null) {
            synchronized (c.class) {
                if (f471this == null) {
                    f471this = new c();
                }
            }
        }
        return f471this;
    }

    @Override // com.apk.f
    /* renamed from: case  reason: not valid java name */
    public boolean mo287case() {
        return this.f472else != null;
    }

    @Override // com.apk.f
    /* renamed from: const  reason: not valid java name */
    public boolean mo288const() {
        m687goto();
        c60 c60Var = this.f472else;
        if (c60Var != null) {
            p50 p50Var = c60Var.f517new;
            r1 = p50Var != null ? p50Var.m2022goto(c60Var.f516if) : false;
            if (this.f472else != null) {
                this.f472else = null;
            }
        }
        return r1;
    }

    @Override // com.apk.f
    /* renamed from: else  reason: not valid java name */
    public void mo289else(String str, String str2) {
        if (this.f472else == null) {
            this.f472else = new c60(this.f1158if, new Cdo(), "");
        }
        this.f472else.m311case(str, str2, 0, 0);
    }

    @Override // com.apk.f
    /* renamed from: final  reason: not valid java name */
    public boolean mo290final(Activity activity) {
        m687goto();
        c60 c60Var = this.f472else;
        if (c60Var != null) {
            boolean m313goto = c60Var.m313goto(activity);
            if (this.f472else != null) {
                this.f472else = null;
            }
            return m313goto;
        }
        return false;
    }

    /* renamed from: import  reason: not valid java name */
    public void m291import(Activity activity, String str, String str2, v60 v60Var, String str3) {
        if (this.f1158if == null) {
            ToastUtils.show((CharSequence) "没有绑定主页面Activity");
            return;
        }
        if (this.f473goto == null) {
            this.f473goto = new HashMap();
        }
        this.f473goto.put(str3, v60Var);
        super.m689new(activity, str, str2, str3);
    }

    /* renamed from: native  reason: not valid java name */
    public void m292native(String str, String str2, String str3) {
        if (this.f1158if == null) {
            ToastUtils.show((CharSequence) "没有绑定主页面Activity");
        } else if (eg.m600implements()) {
            super.m691try(str, str2, str3);
        }
    }

    @Override // com.apk.f
    /* renamed from: super  reason: not valid java name */
    public void mo293super(String str) {
    }

    /* renamed from: throw  reason: not valid java name */
    public void m294throw(String str) {
        this.f1156do = true;
        Map<String, v60> map = this.f473goto;
        if (map != null) {
            map.remove(str);
        }
    }
}
