package com.biquge.ebook.app.helper.req.convert;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import java.io.Reader;
import java.lang.reflect.Type;

/* loaded from: classes8.dex */
public class Convert {

    /* loaded from: classes8.dex */
    public static class GsonHolder {
        public static final Gson gson = new Gson();
    }

    public static Gson create() {
        return GsonHolder.gson;
    }

    public static <T> T fromJson(String str, Class<T> cls) throws JsonIOException, JsonSyntaxException {
        return (T) create().fromJson(str, (Class<Object>) cls);
    }

    public static String toJson(Object obj) {
        return create().toJson(obj);
    }

    public static <T> T fromJson(String str, Type type) {
        return (T) create().fromJson(str, type);
    }

    public static String toJson(Object obj, Type type) {
        return create().toJson(obj, type);
    }

    public static <T> T fromJson(JsonReader jsonReader, Type type) throws JsonIOException, JsonSyntaxException {
        return (T) create().fromJson(jsonReader, type);
    }

    public static <T> T fromJson(Reader reader, Class<T> cls) throws JsonSyntaxException, JsonIOException {
        return (T) create().fromJson(reader, (Class<Object>) cls);
    }

    public static <T> T fromJson(Reader reader, Type type) throws JsonIOException, JsonSyntaxException {
        return (T) create().fromJson(reader, type);
    }
}
