package org.litepal.crud.async;

import org.litepal.crud.callback.AverageCallback;
/* loaded from: classes7.dex */
public class AverageExecutor extends AsyncExecutor {
    public AverageCallback cb;

    public AverageCallback getListener() {
        return this.cb;
    }

    public void listen(AverageCallback averageCallback) {
        this.cb = averageCallback;
        execute();
    }
}
