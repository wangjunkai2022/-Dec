package com.baidu.tts.loopj;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;

/* loaded from: classes8.dex */
public class PersistentCookieStore implements CookieStore {
    public static final String COOKIE_NAME_PREFIX = "cookie_";
    public static final String COOKIE_NAME_STORE = "names";
    public static final String COOKIE_PREFS = "CookiePrefsFile";
    public static final String LOG_TAG = "PersistentCookieStore";
    public final SharedPreferences cookiePrefs;
    public boolean omitNonPersistentCookies = false;
    public final ConcurrentHashMap<String, Cookie> cookies = new ConcurrentHashMap<>();

    public PersistentCookieStore(Context context) {
        String[] split;
        Cookie decodeCookie;
        this.cookiePrefs = context.getSharedPreferences(COOKIE_PREFS, 0);
        String string = this.cookiePrefs.getString(COOKIE_NAME_STORE, null);
        if (string != null) {
            for (String str : TextUtils.split(string, ",")) {
                String string2 = this.cookiePrefs.getString(COOKIE_NAME_PREFIX + str, null);
                if (string2 != null && (decodeCookie = decodeCookie(string2)) != null) {
                    this.cookies.put(str, decodeCookie);
                }
            }
            clearExpired(new Date());
        }
    }

    public void addCookie(Cookie cookie) {
        if (!this.omitNonPersistentCookies || cookie.isPersistent()) {
            String str = cookie.getName() + cookie.getDomain();
            if (!cookie.isExpired(new Date())) {
                this.cookies.put(str, cookie);
            } else {
                this.cookies.remove(str);
            }
            SharedPreferences.Editor edit = this.cookiePrefs.edit();
            edit.putString(COOKIE_NAME_STORE, TextUtils.join(",", this.cookies.keySet()));
            edit.putString(COOKIE_NAME_PREFIX + str, encodeCookie(new SerializableCookie(cookie)));
            edit.commit();
        }
    }

    public String byteArrayToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            int i = b & ExifInterface.MARKER;
            if (i < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i));
        }
        return sb.toString().toUpperCase(Locale.US);
    }

    public void clear() {
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        Iterator<String> it = this.cookies.keySet().iterator();
        while (it.hasNext()) {
            edit.remove(COOKIE_NAME_PREFIX + it.next());
        }
        edit.remove(COOKIE_NAME_STORE);
        edit.commit();
        this.cookies.clear();
    }

    public boolean clearExpired(Date date) {
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        boolean z = false;
        for (Map.Entry<String, Cookie> entry : this.cookies.entrySet()) {
            String key = entry.getKey();
            if (entry.getValue().isExpired(date)) {
                this.cookies.remove(key);
                edit.remove(COOKIE_NAME_PREFIX + key);
                z = true;
            }
        }
        if (z) {
            edit.putString(COOKIE_NAME_STORE, TextUtils.join(",", this.cookies.keySet()));
        }
        edit.commit();
        return z;
    }

    public Cookie decodeCookie(String str) {
        try {
            return ((SerializableCookie) new ObjectInputStream(new ByteArrayInputStream(hexStringToByteArray(str))).readObject()).getCookie();
        } catch (IOException e) {
            AsyncHttpClient.log.d(LOG_TAG, "IOException in decodeCookie", e);
            return null;
        } catch (ClassNotFoundException e2) {
            AsyncHttpClient.log.d(LOG_TAG, "ClassNotFoundException in decodeCookie", e2);
            return null;
        }
    }

    public void deleteCookie(Cookie cookie) {
        String str = cookie.getName() + cookie.getDomain();
        this.cookies.remove(str);
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        edit.remove(COOKIE_NAME_PREFIX + str);
        edit.commit();
    }

    public String encodeCookie(SerializableCookie serializableCookie) {
        if (serializableCookie == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new ObjectOutputStream(byteArrayOutputStream).writeObject(serializableCookie);
            return byteArrayToHexString(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            AsyncHttpClient.log.d(LOG_TAG, "IOException in encodeCookie", e);
            return null;
        }
    }

    public List<Cookie> getCookies() {
        return new ArrayList(this.cookies.values());
    }

    public byte[] hexStringToByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) (Character.digit(str.charAt(i + 1), 16) + (Character.digit(str.charAt(i), 16) << 4));
        }
        return bArr;
    }

    public void setOmitNonPersistentCookies(boolean z) {
        this.omitNonPersistentCookies = z;
    }
}
