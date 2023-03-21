package com.bytedance.msdk.api;

import com.bytedance.msdk.api.v2.GMConfigUserInfoForSegment;
import java.util.HashMap;
import java.util.Map;

@Deprecated
/* loaded from: classes8.dex */
public class UserInfoForSegment {
    public static final String GENDER_FEMALE = "female";
    public static final String GENDER_MALE = "male";
    public static final String GENDER_UNKNOWN = "unknown";

    /* renamed from: else  reason: not valid java name */
    public Map<String, String> f8963else;
    public final String TAG = "TTMediationSDK";

    /* renamed from: do  reason: not valid java name */
    public String f8962do = "";

    /* renamed from: if  reason: not valid java name */
    public String f8965if = "";

    /* renamed from: for  reason: not valid java name */
    public String f8964for = "";

    /* renamed from: new  reason: not valid java name */
    public int f8966new = 0;

    /* renamed from: try  reason: not valid java name */
    public String f8967try = "";

    /* renamed from: case  reason: not valid java name */
    public String f8961case = "";

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b1, code lost:
        if (r7 == null) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r6 != r7) goto L4
            return r0
        L4:
            r1 = 0
            if (r7 == 0) goto Lbd
            java.lang.Class r2 = r7.getClass()
            java.lang.Class<com.bytedance.msdk.api.UserInfoForSegment> r3 = com.bytedance.msdk.api.UserInfoForSegment.class
            if (r3 == r2) goto L11
            goto Lbd
        L11:
            com.bytedance.msdk.api.UserInfoForSegment r7 = (com.bytedance.msdk.api.UserInfoForSegment) r7
            int r2 = r6.getAge()
            int r3 = r7.getAge()
            if (r2 != r3) goto L65
            java.lang.String r2 = r6.getUserValueGroup()
            java.lang.String r3 = r7.getUserValueGroup()
            boolean r2 = android.text.TextUtils.equals(r2, r3)
            if (r2 == 0) goto L65
            java.lang.String r2 = r6.getUserId()
            java.lang.String r3 = r7.getUserId()
            boolean r2 = android.text.TextUtils.equals(r2, r3)
            if (r2 == 0) goto L65
            java.lang.String r2 = r6.getChannel()
            java.lang.String r3 = r7.getChannel()
            boolean r2 = android.text.TextUtils.equals(r2, r3)
            if (r2 == 0) goto L65
            java.lang.String r2 = r6.getSubChannel()
            java.lang.String r3 = r7.getSubChannel()
            boolean r2 = android.text.TextUtils.equals(r2, r3)
            if (r2 == 0) goto L65
            java.lang.String r2 = r6.getGender()
            java.lang.String r3 = r7.getGender()
            boolean r2 = android.text.TextUtils.equals(r2, r3)
            if (r2 == 0) goto L65
            r2 = 1
            goto L66
        L65:
            r2 = 0
        L66:
            java.util.Map r7 = r7.getCustomInfos()
            java.util.Map<java.lang.String, java.lang.String> r3 = r6.f8963else
            if (r3 == 0) goto Lad
            if (r7 == 0) goto Lad
            int r3 = r3.size()
            int r4 = r7.size()
            if (r3 == r4) goto L7b
            goto Lb5
        L7b:
            java.util.Map<java.lang.String, java.lang.String> r3 = r6.f8963else
            java.util.Set r3 = r3.keySet()
            java.util.Iterator r3 = r3.iterator()
        L85:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto Lb3
            java.lang.Object r4 = r3.next()
            java.lang.String r4 = (java.lang.String) r4
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 == 0) goto L98
            goto L85
        L98:
            java.util.Map<java.lang.String, java.lang.String> r5 = r6.f8963else
            java.lang.Object r5 = r5.get(r4)
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5
            java.lang.Object r4 = r7.get(r4)
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4
            boolean r4 = android.text.TextUtils.equals(r5, r4)
            if (r4 != 0) goto L85
            goto Lb5
        Lad:
            java.util.Map<java.lang.String, java.lang.String> r3 = r6.f8963else
            if (r3 != 0) goto Lb5
            if (r7 != 0) goto Lb5
        Lb3:
            r7 = 1
            goto Lb6
        Lb5:
            r7 = 0
        Lb6:
            if (r2 == 0) goto Lbb
            if (r7 == 0) goto Lbb
            goto Lbc
        Lbb:
            r0 = 0
        Lbc:
            return r0
        Lbd:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.api.UserInfoForSegment.equals(java.lang.Object):boolean");
    }

    public int getAge() {
        return this.f8966new;
    }

    public String getChannel() {
        return this.f8965if;
    }

    public Map<String, String> getCustomInfos() {
        return this.f8963else;
    }

    public String getGender() {
        return this.f8967try;
    }

    public String getSubChannel() {
        return this.f8964for;
    }

    public String getUserId() {
        return this.f8962do;
    }

    public String getUserValueGroup() {
        return this.f8961case;
    }

    public void setAge(int i) {
        this.f8966new = i;
    }

    public void setChannel(String str) {
        if (GMConfigUserInfoForSegment.checkValid(str)) {
            this.f8965if = str;
        }
    }

    public void setCustomInfos(Map<String, String> map) {
        this.f8963else = new HashMap();
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry != null) {
                if (!GMConfigUserInfoForSegment.checkValid(entry.getKey())) {
                    entry.getKey();
                } else if (!GMConfigUserInfoForSegment.checkValid(entry.getValue())) {
                    entry.getKey();
                    entry.getValue();
                } else {
                    this.f8963else.put(entry.getKey(), entry.getValue());
                }
            }
        }
    }

    public void setGender(String str) {
        if (GMConfigUserInfoForSegment.checkValid(str)) {
            this.f8967try = str;
        }
    }

    public void setSubChannel(String str) {
        if (GMConfigUserInfoForSegment.checkValid(str)) {
            this.f8964for = str;
        }
    }

    public void setUserId(String str) {
        if (GMConfigUserInfoForSegment.checkValid(str)) {
            this.f8962do = str;
        }
    }

    public void setUserValueGroup(String str) {
        if (GMConfigUserInfoForSegment.checkValid(str)) {
            this.f8961case = str;
        }
    }
}
