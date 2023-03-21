package com.biquge.ebook.app.helper.req.convert;

import com.apk.ch0;
import com.apk.dh0;
import com.apk.nx;
import com.google.gson.stream.JsonReader;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class JsonConvert<T> implements nx<T> {
    public Class<T> clazz;
    public Type type;

    public JsonConvert() {
    }

    private T parseClass(ch0 ch0Var, Class<?> cls) throws Exception {
        dh0 dh0Var;
        if (cls == null || (dh0Var = ch0Var.f614goto) == null) {
            return null;
        }
        JsonReader jsonReader = new JsonReader(dh0Var.m453break());
        if (cls == String.class) {
            return (T) dh0Var.m455finally();
        }
        if (cls == JSONObject.class) {
            return (T) new JSONObject(dh0Var.m455finally());
        }
        if (cls == JSONArray.class) {
            return (T) new JSONArray(dh0Var.m455finally());
        }
        T t = (T) Convert.fromJson(jsonReader, cls);
        ch0Var.close();
        return t;
    }

    private T parseParameterizedType(ch0 ch0Var, ParameterizedType parameterizedType) throws Exception {
        dh0 dh0Var;
        if (parameterizedType == null || (dh0Var = ch0Var.f614goto) == null) {
            return null;
        }
        JsonReader jsonReader = new JsonReader(dh0Var.m453break());
        Type rawType = parameterizedType.getRawType();
        Type type = parameterizedType.getActualTypeArguments()[0];
        if (rawType != LzyResponse.class) {
            T t = (T) Convert.fromJson(jsonReader, parameterizedType);
            ch0Var.close();
            return t;
        } else if (type == Void.class) {
            ch0Var.close();
            return (T) ((SimpleResponse) Convert.fromJson(jsonReader, SimpleResponse.class)).toLzyResponse();
        } else {
            T t2 = (T) ((LzyResponse) Convert.fromJson(jsonReader, parameterizedType));
            ch0Var.close();
            return t2;
        }
    }

    private T parseType(ch0 ch0Var, Type type) throws Exception {
        dh0 dh0Var;
        if (type == null || (dh0Var = ch0Var.f614goto) == null) {
            return null;
        }
        T t = (T) Convert.fromJson(new JsonReader(dh0Var.m453break()), type);
        ch0Var.close();
        return t;
    }

    @Override // com.apk.nx
    public T convertResponse(ch0 ch0Var) throws Throwable {
        if (this.type == null) {
            Class<T> cls = this.clazz;
            if (cls == null) {
                this.type = ((ParameterizedType) JsonConvert.class.getGenericSuperclass()).getActualTypeArguments()[0];
            } else {
                return parseClass(ch0Var, cls);
            }
        }
        Type type = this.type;
        if (type instanceof ParameterizedType) {
            return parseParameterizedType(ch0Var, (ParameterizedType) type);
        }
        if (type instanceof Class) {
            return parseClass(ch0Var, (Class) type);
        }
        return parseType(ch0Var, type);
    }

    public JsonConvert(Type type) {
        this.type = type;
    }

    public JsonConvert(Class<T> cls) {
        this.clazz = cls;
    }
}
