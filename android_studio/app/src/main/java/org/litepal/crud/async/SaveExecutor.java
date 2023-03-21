package org.litepal.crud.async;

import org.litepal.crud.callback.SaveCallback;

/* loaded from: classes7.dex */
public class SaveExecutor extends AsyncExecutor {
    public SaveCallback cb;

    public SaveCallback getListener() {
        return this.cb;
    }

    public void listen(SaveCallback saveCallback) {
        this.cb = saveCallback;
        execute();
    }
}
