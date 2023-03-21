package org.litepal.crud.async;

import org.litepal.crud.callback.FindMultiCallback;

/* loaded from: classes7.dex */
public class FindMultiExecutor<T> extends AsyncExecutor {
    public FindMultiCallback<T> cb;

    public FindMultiCallback<T> getListener() {
        return this.cb;
    }

    public void listen(FindMultiCallback<T> findMultiCallback) {
        this.cb = findMultiCallback;
        execute();
    }
}
