package com.apk;

import com.apk.ho0;
import java.io.IOException;
/* compiled from: DocumentType.java */
/* loaded from: classes7.dex */
public class io0 extends mo0 {
    public io0(String str, String str2, String str3) {
        sb0.m2418instanceof(str);
        sb0.m2418instanceof(str2);
        sb0.m2418instanceof(str3);
        m1739abstract("name", str);
        m1739abstract("publicId", str2);
        m1739abstract("systemId", str3);
        if (!bo0.m256try(mo1742new("publicId"))) {
            m1739abstract("pubSysKey", "PUBLIC");
        } else if (!bo0.m256try(mo1742new("systemId"))) {
            m1739abstract("pubSysKey", "SYSTEM");
        }
    }

    @Override // com.apk.no0
    /* renamed from: return */
    public String mo669return() {
        return "#doctype";
    }

    @Override // com.apk.no0
    /* renamed from: switch */
    public void mo670switch(Appendable appendable, int i, ho0.Cdo cdo) throws IOException {
        if (cdo.f1915goto == ho0.Cdo.EnumC0066do.html && !(!bo0.m256try(mo1742new("publicId"))) && !(!bo0.m256try(mo1742new("systemId")))) {
            appendable.append("<!doctype");
        } else {
            appendable.append("<!DOCTYPE");
        }
        if (!bo0.m256try(mo1742new("name"))) {
            appendable.append(" ").append(mo1742new("name"));
        }
        if (!bo0.m256try(mo1742new("pubSysKey"))) {
            appendable.append(" ").append(mo1742new("pubSysKey"));
        }
        if (!bo0.m256try(mo1742new("publicId"))) {
            appendable.append(" \"").append(mo1742new("publicId")).append('\"');
        }
        if (!bo0.m256try(mo1742new("systemId"))) {
            appendable.append(" \"").append(mo1742new("systemId")).append('\"');
        }
        appendable.append('>');
    }

    @Override // com.apk.no0
    /* renamed from: throws */
    public void mo671throws(Appendable appendable, int i, ho0.Cdo cdo) {
    }
}
