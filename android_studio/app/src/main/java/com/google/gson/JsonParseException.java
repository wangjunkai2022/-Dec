package com.google.gson;

/* loaded from: classes8.dex */
public class JsonParseException extends RuntimeException {
    public static final long serialVersionUID = -4086729973971783390L;

    public JsonParseException(String str) {
        super(str);
    }

    public JsonParseException(String str, Throwable th) {
        super(str, th);
    }

    public JsonParseException(Throwable th) {
        super(th);
    }
}
