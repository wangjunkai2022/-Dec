package com.apk;

import android.app.Activity;
import com.hjq.toast.ToastUtils;
import com.swl.gg.sdk.TrAdSdk;
import java.util.HashMap;
import java.util.Map;

/* compiled from: RewardVideoAdHelper.java */
/* loaded from: classes8.dex */
public class e extends f {

    /* renamed from: this  reason: not valid java name */
    public static e f970this;

    /* renamed from: else  reason: not valid java name */
    public g60 f971else;

    /* renamed from: goto  reason: not valid java name */
    public Map<String, z60> f972goto;

    /* compiled from: RewardVideoAdHelper.java */
    /* renamed from: com.apk.e$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements z60 {
        public Cdo() {
        }

        @Override // com.apk.b70
        /* renamed from: case */
        public void mo157case() {
            e eVar = e.this;
            if (eVar != null) {
                Map<String, z60> map = eVar.f972goto;
                if (map != null) {
                    for (Map.Entry<String, z60> entry : map.entrySet()) {
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

        @Override // com.apk.z60
        /* renamed from: do  reason: not valid java name */
        public void mo524do() {
            e eVar = e.this;
            if (eVar == null) {
                throw null;
            }
            if (eVar != null) {
                Map<String, z60> map = eVar.f972goto;
                if (map != null) {
                    for (Map.Entry<String, z60> entry : map.entrySet()) {
                        if (entry != null && entry.getValue() != null) {
                            entry.getValue().mo524do();
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
            e eVar = e.this;
            if (eVar != null) {
                Map<String, z60> map = eVar.f972goto;
                if (map != null) {
                    for (Map.Entry<String, z60> entry : map.entrySet()) {
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
            e.this.m685do(i);
            Map<String, z60> map = e.this.f972goto;
            if (map != null) {
                for (Map.Entry<String, z60> entry : map.entrySet()) {
                    if (entry != null && entry.getValue() != null) {
                        entry.getValue().mo159if(i, str);
                    }
                }
            }
        }

        @Override // com.apk.z60
        public void onAdClick() {
            if (e.this != null) {
                if (v.m2734do() != null) {
                    Map<String, z60> map = e.this.f972goto;
                    if (map != null) {
                        for (Map.Entry<String, z60> entry : map.entrySet()) {
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

        @Override // com.apk.z60
        public void onAdClose() {
            if (e.this != null) {
                if (v.m2734do() != null) {
                    Map<String, z60> map = e.this.f972goto;
                    if (map != null) {
                        for (Map.Entry<String, z60> entry : map.entrySet()) {
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

        @Override // com.apk.z60
        public void onAdLoaded() {
            Map<String, z60> map = e.this.f972goto;
            if (map != null) {
                for (Map.Entry<String, z60> entry : map.entrySet()) {
                    if (entry != null && entry.getValue() != null) {
                        entry.getValue().onAdLoaded();
                    }
                }
            }
            if (e.this != null) {
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            }
            throw null;
        }

        @Override // com.apk.z60
        public void onAdShow() {
            e.this.m688if();
            e eVar = e.this;
            if (eVar != null) {
                Map<String, z60> map = eVar.f972goto;
                if (map != null) {
                    for (Map.Entry<String, z60> entry : map.entrySet()) {
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

        @Override // com.apk.z60
        public void onVideoCached() {
            Map<String, z60> map = e.this.f972goto;
            if (map != null) {
                for (Map.Entry<String, z60> entry : map.entrySet()) {
                    if (entry != null && entry.getValue() != null) {
                        entry.getValue().onVideoCached();
                    }
                }
            }
            e.this.m686for();
        }

        @Override // com.apk.z60
        /* renamed from: try  reason: not valid java name */
        public void mo525try() {
            e eVar = e.this;
            if (eVar != null) {
                Map<String, z60> map = eVar.f972goto;
                if (map != null) {
                    for (Map.Entry<String, z60> entry : map.entrySet()) {
                        if (entry != null && entry.getValue() != null) {
                            entry.getValue().mo525try();
                        }
                    }
                    return;
                }
                return;
            }
            throw null;
        }
    }

    public e() {
        this.f1160try = "jl";
    }

    /* renamed from: while  reason: not valid java name */
    public static e m520while() {
        if (f970this == null) {
            synchronized (e.class) {
                if (f970this == null) {
                    f970this = new e();
                }
            }
        }
        return f970this;
    }

    @Override // com.apk.f
    /* renamed from: case */
    public boolean mo287case() {
        return this.f971else != null;
    }

    @Override // com.apk.f
    /* renamed from: const */
    public boolean mo288const() {
        m687goto();
        g60 g60Var = this.f971else;
        if (g60Var != null) {
            m60 m60Var = g60Var.f1520new;
            if (m60Var != null) {
                m60Var.m1688else(g60Var.f1519if);
            }
            if (this.f971else != null) {
                this.f971else = null;
            }
        }
        return false;
    }

    @Override // com.apk.f
    /* renamed from: else */
    public void mo289else(String str, String str2) {
        if (this.f971else == null) {
            this.f971else = new g60(this.f1158if, new Cdo(), "");
        }
        g60 g60Var = this.f971else;
        if (g60Var != null) {
            if (TrAdSdk.getApp() == null) {
                g60Var.m2025if(g60Var.f1518for);
                return;
            } else if (!k40.m1446extends()) {
                g60Var.m2024for(g60Var.f1518for);
                return;
            } else if (g60Var.f1519if == null) {
                g60Var.m2023do(g60Var.f1518for);
                return;
            } else if (g60Var.m2026new(0, 0, g60Var.f1518for)) {
                return;
            } else {
                if (TrAdSdk.isOpenLog()) {
                    k40.m1447final(str + "# " + str + "：开始加载");
                }
                m60 m60Var = new m60();
                g60Var.f1520new = m60Var;
                m60Var.m1687case(g60Var.f1519if, str, str2, g60Var.f1521try);
                return;
            }
        }
        throw null;
    }

    @Override // com.apk.f
    /* renamed from: final */
    public boolean mo290final(Activity activity) {
        mo288const();
        return false;
    }

    /* renamed from: import  reason: not valid java name */
    public void m521import(String str, String str2, z60 z60Var, String str3) {
        if (this.f1158if == null) {
            ToastUtils.show((CharSequence) "没有绑定主页面Activity");
            return;
        }
        if (this.f972goto == null) {
            this.f972goto = new HashMap();
        }
        this.f972goto.put(str3, z60Var);
        m689new(null, str, str2, str3);
    }

    /* renamed from: native  reason: not valid java name */
    public void m522native(String str, String str2, String str3) {
        if (this.f1158if == null) {
            ToastUtils.show((CharSequence) "没有绑定主页面Activity");
        } else if (eg.m600implements()) {
            super.m691try(str, str2, str3);
        }
    }

    @Override // com.apk.f
    /* renamed from: super */
    public void mo293super(String str) {
    }

    /* renamed from: throw  reason: not valid java name */
    public void m523throw(String str) {
        this.f1156do = true;
        Map<String, z60> map = this.f972goto;
        if (map != null) {
            map.remove(str);
        }
    }
}
