package com.apk;

import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;

/* compiled from: MacBasedPRF.java */
/* loaded from: classes7.dex */
public class ue0 {

    /* renamed from: do  reason: not valid java name */
    public Mac f4874do;

    /* renamed from: for  reason: not valid java name */
    public String f4875for;

    /* renamed from: if  reason: not valid java name */
    public int f4876if;

    public ue0(String str) {
        this.f4875for = str;
        try {
            Mac mac = Mac.getInstance(str);
            this.f4874do = mac;
            this.f4876if = mac.getMacLength();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public void update(byte[] bArr) {
        try {
            this.f4874do.update(bArr);
        } catch (IllegalStateException e) {
            throw new RuntimeException(e);
        }
    }

    public void update(byte[] bArr, int i, int i2) {
        try {
            this.f4874do.update(bArr, i, i2);
        } catch (IllegalStateException e) {
            throw new RuntimeException(e);
        }
    }
}
