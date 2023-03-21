package com.biquge.ebook.app.helper.req.convert;

import android.text.TextUtils;
import com.apk.ch0;
import com.apk.iy;
import com.apk.qy;
import com.apk.ze;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* loaded from: classes8.dex */
public abstract class JsonCallback<T> extends BaseCallback<T> {
    public Class<T> clazz;
    public String mKeyUrl;
    public Type type;

    public JsonCallback() {
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.nx
    public T convertResponse(ch0 ch0Var) throws Throwable {
        if (this.type == null) {
            Class<T> cls = this.clazz;
            if (cls == null) {
                this.type = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
            } else {
                return (T) new JsonConvert((Class) cls).convertResponse(ch0Var);
            }
        }
        return (T) new JsonConvert(this.type).convertResponse(ch0Var);
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<T, ? extends qy> qyVar) {
        super.onStart(qyVar);
        try {
            String n = ze.n(qyVar.f3961do);
            if (TextUtils.isEmpty(n)) {
                return;
            }
            this.mKeyUrl = qyVar.f3961do;
            Object fromJson = Convert.fromJson(n, ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0]);
            if (fromJson != null) {
                onCacheSuccess(iy.m1291try(true, fromJson, null, null));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<T> iyVar) {
        super.onSuccess(iyVar);
        if (TextUtils.isEmpty(this.mKeyUrl)) {
            return;
        }
        ze.W(this.mKeyUrl);
    }

    public JsonCallback(String str) {
        setReqType(str);
    }

    public JsonCallback(Type type) {
        this.type = type;
    }

    public JsonCallback(Class<T> cls) {
        this.clazz = cls;
    }
}
