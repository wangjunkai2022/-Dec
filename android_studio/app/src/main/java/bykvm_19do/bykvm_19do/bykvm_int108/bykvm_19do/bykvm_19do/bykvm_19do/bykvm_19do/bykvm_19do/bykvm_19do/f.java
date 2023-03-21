package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
import com.apk.Cgoto;
import org.litepal.parser.LitePalParser;

/* compiled from: StatsBatchLogEventRepoImpl.java */
/* loaded from: classes8.dex */
public class f extends g {
    public f(Context context, bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_if122.a aVar) {
        super(context, aVar);
    }

    public static String g() {
        StringBuilder m1016super = Cgoto.m1016super("CREATE TABLE IF NOT EXISTS ");
        m1016super.append(j.l().e().b());
        m1016super.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT,");
        m1016super.append("id");
        m1016super.append(" TEXT UNIQUE,");
        m1016super.append(LitePalParser.ATTR_VALUE);
        Cgoto.m993continue(m1016super, " TEXT ,", "gen_time", " TEXT , ", "retry");
        m1016super.append(" INTEGER default 0 , ");
        m1016super.append("encrypt");
        m1016super.append(" INTEGER default 0");
        m1016super.append(")");
        return m1016super.toString();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.g
    public byte b() {
        return (byte) 1;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.g
    public byte c() {
        return (byte) 3;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.g
    public String d() {
        return j.l().e().b();
    }
}
