package com.biquge.ebook.app.helper.req.convert;

import android.text.TextUtils;
import com.apk.ch0;
import com.apk.iy;
import com.apk.mx;
import com.apk.qy;
import com.apk.v;
import com.apk.x4;
/* loaded from: classes8.dex */
public class BaseCallback<T> extends mx<T> {
    public String reqType;
    public String reqUrl;
    public long startTime;

    @Override // com.apk.nx
    public T convertResponse(ch0 ch0Var) throws Throwable {
        return null;
    }

    @Override // com.apk.mx
    public void onError(iy<T> iyVar) {
        super.onError(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1292do() == 200) {
                    return;
                }
                iyVar.m1292do();
                if (!TextUtils.isEmpty(iyVar.m1294new())) {
                    iyVar.m1294new();
                } else if (iyVar.f2264if != null) {
                    iyVar.f2264if.getMessage();
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (!TextUtils.isEmpty(this.reqType) && x4.m2950const(iyVar)) {
            x4.m2947break(this.reqType);
            if (v.m2734do() == null) {
                throw null;
            }
        }
        v m2734do = v.m2734do();
        System.currentTimeMillis();
        if (m2734do == null) {
            throw null;
        }
    }

    @Override // com.apk.mx
    public void onStart(qy<T, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.startTime = System.currentTimeMillis();
        String str = qyVar.f3961do;
        this.reqUrl = str;
        qyVar.m2190catch(x4.m2954final(str));
    }

    @Override // com.apk.mx
    public void onSuccess(iy<T> iyVar) {
    }

    public void setReqType(String str) {
        this.reqType = str;
    }
}
