package com.baidu.tts.loopj;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashSet;
import java.util.Iterator;
import javax.net.ssl.SSLException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes8.dex */
public class RetryHandler implements HttpRequestRetryHandler {
    public final int maxRetries;
    public final int retrySleepTimeMS;
    public static final HashSet<Class<?>> exceptionWhitelist = new HashSet<>();
    public static final HashSet<Class<?>> exceptionBlacklist = new HashSet<>();

    static {
        exceptionWhitelist.add(NoHttpResponseException.class);
        exceptionWhitelist.add(UnknownHostException.class);
        exceptionWhitelist.add(SocketException.class);
        exceptionWhitelist.add(ConnectTimeoutException.class);
        exceptionWhitelist.add(SocketTimeoutException.class);
        exceptionBlacklist.add(InterruptedIOException.class);
        exceptionBlacklist.add(SSLException.class);
    }

    public RetryHandler(int i, int i2) {
        this.maxRetries = i;
        this.retrySleepTimeMS = i2;
    }

    public static void addClassToBlacklist(Class<?> cls) {
        exceptionBlacklist.add(cls);
    }

    public static void addClassToWhitelist(Class<?> cls) {
        exceptionWhitelist.add(cls);
    }

    public boolean isInList(HashSet<Class<?>> hashSet, Throwable th) {
        Iterator<Class<?>> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().isInstance(th)) {
                return true;
            }
        }
        return false;
    }

    public boolean retryRequest(IOException iOException, int i, HttpContext httpContext) {
        Boolean bool = (Boolean) httpContext.getAttribute("http.request_sent");
        boolean z = false;
        if (bool == null || !bool.booleanValue()) {
        }
        if (i <= this.maxRetries && (isInList(exceptionWhitelist, iOException) || !isInList(exceptionBlacklist, iOException))) {
            z = true;
        }
        if (z) {
            SystemClock.sleep(this.retrySleepTimeMS);
        } else {
            iOException.printStackTrace();
        }
        return z;
    }
}
