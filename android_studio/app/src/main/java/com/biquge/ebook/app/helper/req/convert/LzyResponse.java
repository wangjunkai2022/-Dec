package com.biquge.ebook.app.helper.req.convert;

import com.apk.Cgoto;
import java.io.Serializable;

/* loaded from: classes8.dex */
public class LzyResponse<T> implements Serializable {
    public static final long serialVersionUID = 5213230387175987834L;
    public int code;
    public T data;
    public String msg;

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("LzyResponse{\n\tcode=");
        m1016super.append(this.code);
        m1016super.append("\n\tmsg='");
        m1016super.append(this.msg);
        m1016super.append("'\n\tdata=");
        m1016super.append(this.data);
        m1016super.append("\n");
        m1016super.append('}');
        return m1016super.toString();
    }
}
