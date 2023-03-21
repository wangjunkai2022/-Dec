package com.apk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.baidu.tts.loopj.PersistentCookieStore;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: SPCookieStore.java */
/* loaded from: classes8.dex */
public class sx implements rx {

    /* renamed from: do  reason: not valid java name */
    public final Map<String, ConcurrentHashMap<String, ig0>> f4611do = new HashMap();

    /* renamed from: if  reason: not valid java name */
    public final SharedPreferences f4612if;

    public sx(Context context) {
        String[] split;
        ig0 ig0Var;
        this.f4612if = context.getSharedPreferences("okgo_cookie", 0);
        for (Map.Entry<String, ?> entry : this.f4612if.getAll().entrySet()) {
            if (entry.getValue() != null && !entry.getKey().startsWith(PersistentCookieStore.COOKIE_NAME_PREFIX)) {
                for (String str : TextUtils.split((String) entry.getValue(), ",")) {
                    String string = this.f4612if.getString(PersistentCookieStore.COOKIE_NAME_PREFIX + str, null);
                    if (string != null) {
                        int length = string.length();
                        byte[] bArr = new byte[length / 2];
                        for (int i = 0; i < length; i += 2) {
                            bArr[i / 2] = (byte) (Character.digit(string.charAt(i + 1), 16) + (Character.digit(string.charAt(i), 16) << 4));
                        }
                        try {
                            ig0Var = ((qx) new ObjectInputStream(new ByteArrayInputStream(bArr)).readObject()).f3955new;
                        } catch (Exception e) {
                            e.printStackTrace();
                            ig0Var = null;
                        }
                        if (ig0Var != null) {
                            if (!this.f4611do.containsKey(entry.getKey())) {
                                this.f4611do.put(entry.getKey(), new ConcurrentHashMap<>());
                            }
                            this.f4611do.get(entry.getKey()).put(str, ig0Var);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final String m2562do(ig0 ig0Var) {
        return ig0Var.f2101do + "@" + ig0Var.f2106new;
    }

    /* renamed from: for  reason: not valid java name */
    public synchronized boolean m2563for(tg0 tg0Var, ig0 ig0Var) {
        if (this.f4611do.containsKey(tg0Var.f4689try)) {
            String m2562do = m2562do(ig0Var);
            if (this.f4611do.get(tg0Var.f4689try).containsKey(m2562do)) {
                this.f4611do.get(tg0Var.f4689try).remove(m2562do);
                SharedPreferences.Editor edit = this.f4612if.edit();
                SharedPreferences sharedPreferences = this.f4612if;
                if (sharedPreferences.contains(PersistentCookieStore.COOKIE_NAME_PREFIX + m2562do)) {
                    edit.remove(PersistentCookieStore.COOKIE_NAME_PREFIX + m2562do);
                }
                edit.putString(tg0Var.f4689try, TextUtils.join(",", this.f4611do.get(tg0Var.f4689try).keySet()));
                edit.apply();
                return true;
            }
            return false;
        }
        return false;
    }

    /* renamed from: if  reason: not valid java name */
    public synchronized List<ig0> m2564if(tg0 tg0Var) {
        ArrayList arrayList = new ArrayList();
        if (this.f4611do.containsKey(tg0Var.f4689try)) {
            for (ig0 ig0Var : this.f4611do.get(tg0Var.f4689try).values()) {
                if (ig0Var.f2103for < System.currentTimeMillis()) {
                    m2563for(tg0Var, ig0Var);
                } else {
                    arrayList.add(ig0Var);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: new  reason: not valid java name */
    public synchronized void m2565new(tg0 tg0Var, ig0 ig0Var) {
        if (!this.f4611do.containsKey(tg0Var.f4689try)) {
            this.f4611do.put(tg0Var.f4689try, new ConcurrentHashMap<>());
        }
        if (ig0Var.f2103for < System.currentTimeMillis()) {
            m2563for(tg0Var, ig0Var);
        } else {
            m2566try(tg0Var, ig0Var, m2562do(ig0Var));
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final void m2566try(tg0 tg0Var, ig0 ig0Var, String str) {
        byte[] bArr;
        this.f4611do.get(tg0Var.f4689try).put(str, ig0Var);
        SharedPreferences.Editor edit = this.f4612if.edit();
        String str2 = tg0Var.f4689try;
        edit.putString(str2, TextUtils.join(",", this.f4611do.get(str2).keySet()));
        String str3 = PersistentCookieStore.COOKIE_NAME_PREFIX + str;
        qx qxVar = new qx(tg0Var.f4689try, ig0Var);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new ObjectOutputStream(byteArrayOutputStream).writeObject(qxVar);
            bArr = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            e.printStackTrace();
            bArr = null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            int i = b & ExifInterface.MARKER;
            if (i < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i));
        }
        edit.putString(str3, sb.toString().toUpperCase(Locale.US));
        edit.apply();
    }
}
