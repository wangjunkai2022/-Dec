package com.biquge.ebook.app.helper.req.convert;

import java.io.Serializable;

/* loaded from: classes8.dex */
public class SimpleResponse implements Serializable {
    public static final long serialVersionUID = -1477609349345966116L;
    public int code;
    public String msg;

    public LzyResponse toLzyResponse() {
        LzyResponse lzyResponse = new LzyResponse();
        lzyResponse.code = this.code;
        lzyResponse.msg = this.msg;
        return lzyResponse;
    }
}
