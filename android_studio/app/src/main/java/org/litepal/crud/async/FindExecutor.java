package org.litepal.crud.async;

import org.litepal.crud.callback.FindCallback;

/* loaded from: classes7.dex */
public class FindExecutor<T> extends AsyncExecutor {
    public FindCallback<T> cb;

    public FindCallback<T> getListener() {
        return this.cb;
    }

    public void listen(FindCallback<T> findCallback) {
        this.cb = findCallback;
        execute();
    }
}
