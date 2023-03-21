package a.e.a;

import android.database.ContentObserver;
/* loaded from: classes8.dex */
public class c extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public String f10603a;
    public int b;
    public b c;

    public c(b bVar, int i, String str) {
        super(null);
        this.c = bVar;
        this.b = i;
        this.f10603a = str;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.b(this.b, this.f10603a);
        }
    }
}
