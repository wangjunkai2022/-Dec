package com.apk;

import com.apk.ho0;
import java.io.IOException;

/* compiled from: CDataNode.java */
/* loaded from: classes7.dex */
public class eo0 extends po0 {
    public eo0(String str) {
        super(str);
    }

    @Override // com.apk.po0
    /* renamed from: protected  reason: not valid java name */
    public eo0 mo672volatile() {
        return (eo0) super.clone();
    }

    @Override // com.apk.po0, com.apk.no0
    /* renamed from: return  reason: not valid java name */
    public String mo669return() {
        return "#cdata";
    }

    @Override // com.apk.po0, com.apk.no0
    /* renamed from: switch  reason: not valid java name */
    public void mo670switch(Appendable appendable, int i, ho0.Cdo cdo) throws IOException {
        appendable.append("<![CDATA[").append(m1740continue());
    }

    @Override // com.apk.po0, com.apk.no0
    /* renamed from: throws  reason: not valid java name */
    public void mo671throws(Appendable appendable, int i, ho0.Cdo cdo) {
        try {
            appendable.append("]]>");
        } catch (IOException e) {
            throw new yn0(e);
        }
    }
}
