package org.litepal.crud.async;

import org.litepal.crud.callback.CountCallback;

/* loaded from: classes7.dex */
public class CountExecutor extends AsyncExecutor {
    public CountCallback cb;

    public CountCallback getListener() {
        return this.cb;
    }

    public void listen(CountCallback countCallback) {
        this.cb = countCallback;
        execute();
    }
}
