package org.litepal.crud.async;

import org.litepal.crud.callback.UpdateOrDeleteCallback;
/* loaded from: classes7.dex */
public class UpdateOrDeleteExecutor extends AsyncExecutor {
    public UpdateOrDeleteCallback cb;

    public UpdateOrDeleteCallback getListener() {
        return this.cb;
    }

    public void listen(UpdateOrDeleteCallback updateOrDeleteCallback) {
        this.cb = updateOrDeleteCallback;
        execute();
    }
}
