package com.apk;

import java.util.ArrayList;
import java.util.List;
/* compiled from: TableEntity.java */
/* loaded from: classes8.dex */
public class yx {

    /* renamed from: do  reason: not valid java name */
    public String f6079do;

    /* renamed from: if  reason: not valid java name */
    public List<vx> f6080if = new ArrayList();

    public yx(String str) {
        this.f6079do = str;
    }

    /* renamed from: do  reason: not valid java name */
    public String m3122do() {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
        sb.append(this.f6079do);
        sb.append('(');
        for (vx vxVar : this.f6080if) {
            if (vxVar.f5205for != null) {
                sb.append("PRIMARY KEY (");
                for (String str : vxVar.f5205for) {
                    sb.append(str);
                    sb.append(",");
                }
                sb.deleteCharAt(sb.length() - 1);
                sb.append(")");
            } else {
                sb.append(vxVar.f5204do);
                sb.append(" ");
                sb.append(vxVar.f5206if);
                if (vxVar.f5208try) {
                    sb.append(" NOT NULL");
                }
                if (vxVar.f5207new) {
                    sb.append(" PRIMARY KEY");
                }
                if (vxVar.f5203case) {
                    sb.append(" AUTOINCREMENT");
                }
                sb.append(",");
            }
        }
        if (sb.toString().endsWith(",")) {
            sb.deleteCharAt(sb.length() - 1);
        }
        sb.append(')');
        return sb.toString();
    }
}
