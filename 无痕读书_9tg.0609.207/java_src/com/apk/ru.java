package com.apk;

import android.app.FragmentManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;
import java.util.Map;
/* compiled from: RequestManagerRetriever.java */
/* loaded from: classes8.dex */
public class ru implements Handler.Callback {

    /* renamed from: do  reason: not valid java name */
    public String f4204do = iu.class.getName();

    /* renamed from: for  reason: not valid java name */
    public final Map<FragmentManager, qu> f4205for = new HashMap();

    /* renamed from: new  reason: not valid java name */
    public final Map<androidx.fragment.app.FragmentManager, tu> f4207new = new HashMap();

    /* renamed from: if  reason: not valid java name */
    public Handler f4206if = new Handler(Looper.getMainLooper(), this);

    /* compiled from: RequestManagerRetriever.java */
    /* renamed from: com.apk.ru$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public static final ru f4208do = new ru(null);
    }

    public ru(Cdo cdo) {
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.f4205for.remove((FragmentManager) message.obj);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            this.f4207new.remove((androidx.fragment.app.FragmentManager) message.obj);
            return true;
        }
    }
}
