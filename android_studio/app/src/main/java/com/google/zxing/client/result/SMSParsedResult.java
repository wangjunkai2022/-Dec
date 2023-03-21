package com.google.zxing.client.result;

import com.apk.Cgoto;

/* loaded from: classes8.dex */
public final class SMSParsedResult extends ParsedResult {
    public final String body;
    public final String[] numbers;
    public final String subject;
    public final String[] vias;

    public SMSParsedResult(String str, String str2, String str3, String str4) {
        super(ParsedResultType.SMS);
        this.numbers = new String[]{str};
        this.vias = new String[]{str2};
        this.subject = str3;
        this.body = str4;
    }

    public String getBody() {
        return this.body;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.numbers, sb);
        ParsedResult.maybeAppend(this.subject, sb);
        ParsedResult.maybeAppend(this.body, sb);
        return sb.toString();
    }

    public String[] getNumbers() {
        return this.numbers;
    }

    public String getSMSURI() {
        StringBuilder m1016super = Cgoto.m1016super("sms:");
        boolean z = true;
        for (int i = 0; i < this.numbers.length; i++) {
            if (z) {
                z = false;
            } else {
                m1016super.append(',');
            }
            m1016super.append(this.numbers[i]);
            String[] strArr = this.vias;
            if (strArr != null && strArr[i] != null) {
                m1016super.append(";via=");
                m1016super.append(this.vias[i]);
            }
        }
        boolean z2 = this.body != null;
        boolean z3 = this.subject != null;
        if (z2 || z3) {
            m1016super.append('?');
            if (z2) {
                m1016super.append("body=");
                m1016super.append(this.body);
            }
            if (z3) {
                if (z2) {
                    m1016super.append('&');
                }
                m1016super.append("subject=");
                m1016super.append(this.subject);
            }
        }
        return m1016super.toString();
    }

    public String getSubject() {
        return this.subject;
    }

    public String[] getVias() {
        return this.vias;
    }

    public SMSParsedResult(String[] strArr, String[] strArr2, String str, String str2) {
        super(ParsedResultType.SMS);
        this.numbers = strArr;
        this.vias = strArr2;
        this.subject = str;
        this.body = str2;
    }
}
