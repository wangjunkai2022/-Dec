package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122;

import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import java.util.List;
import java.util.Map;
/* compiled from: PreLoadRequestCoreV2.java */
/* loaded from: classes8.dex */
public class d extends c {
    public int g0;
    public int h0;

    public d(Context context, String str) {
        super(context, str);
        this.g0 = 0;
        this.h0 = -1;
    }

    private void k(int i) {
        Integer num;
        Map<Integer, List<i>> map;
        List<i> list;
        if (i > this.h0) {
            this.h0 = i;
            List<Integer> list2 = this.n;
            if (list2 == null || i >= list2.size() || (num = this.n.get(i)) == null || (map = this.e) == null || !map.containsKey(num) || (list = this.e.get(num)) == null) {
                return;
            }
            this.g0 = list.size() + this.g0;
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.f, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.c
    public void a(int i, boolean z) {
        try {
            k(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        super.a(i, z);
    }

    public int d0() {
        int i = this.g0;
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        break;
                    default:
                        c2 = '[';
                }
            }
        }
        return i;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.c
    public int h() {
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 21:
                            return 2;
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        return 2;
                    default:
                        c2 = '[';
                }
            }
        }
    }
}
