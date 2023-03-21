package com.qq.e.comm.adevent;

import com.apk.Cgoto;
import com.qq.e.comm.util.GDTLogger;
/* loaded from: classes8.dex */
public class ADEvent {

    /* renamed from: a  reason: collision with root package name */
    public final int f11525a;
    public final Object[] b;

    public ADEvent(int i, Object... objArr) {
        this.f11525a = i;
        this.b = objArr;
        if (i < 100) {
            a(Cgoto.m1003implements("EventId 错误", i));
        }
    }

    private void a(String str) {
        GDTLogger.e(str);
    }

    public <T> T getParam(int i, Class<T> cls) {
        Object[] objArr;
        if (cls == null || (objArr = this.b) == null || objArr.length <= i) {
            return null;
        }
        T t = (T) objArr[i];
        if (t == null) {
            StringBuilder m1016super = Cgoto.m1016super("ADEvent 参数为空,type:");
            m1016super.append(this.f11525a);
            GDTLogger.e(m1016super.toString());
            return null;
        } else if (cls.isInstance(objArr[i])) {
            return t;
        } else {
            StringBuilder m1016super2 = Cgoto.m1016super("ADEvent");
            m1016super2.append(this.f11525a);
            m1016super2.append(" 参数类型错误,期望类型");
            m1016super2.append(cls.getName());
            m1016super2.append("实际类型 ");
            m1016super2.append(t.getClass().getName());
            GDTLogger.e(m1016super2.toString());
            return null;
        }
    }

    public <T> T getParam(Class<T> cls) {
        return (T) getParam(0, cls);
    }

    public int getType() {
        return this.f11525a;
    }
}
