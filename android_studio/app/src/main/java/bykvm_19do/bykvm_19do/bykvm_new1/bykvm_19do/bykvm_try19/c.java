package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_try19;

import android.content.Context;
import android.os.Handler;
import androidx.appcompat.widget.TooltipCompatHandler;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ScheduleTaskManager.java */
/* loaded from: classes8.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public List<a> f11092a;

    public c(Handler handler, Context context) {
        ArrayList arrayList = new ArrayList(3);
        this.f11092a = arrayList;
        arrayList.add(new b(handler, 0L, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_MS));
    }

    public static c a(Handler handler, Context context) {
        return new c(handler, context);
    }

    public void a() {
        StringBuilder m1016super = Cgoto.m1016super("[ScheduleTaskManager] execute, task size=");
        m1016super.append(this.f11092a.size());
        j.a(m1016super.toString());
        for (a aVar : this.f11092a) {
            try {
                aVar.a();
            } catch (Throwable unused) {
            }
        }
    }
}
