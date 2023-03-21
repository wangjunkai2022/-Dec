package org.litepal.tablemanager.typechange;

/* loaded from: classes7.dex */
public class DateOrm extends OrmChange {
    @Override // org.litepal.tablemanager.typechange.OrmChange
    public String object2Relation(String str) {
        if (str == null || !str.equals("java.util.Date")) {
            return null;
        }
        return "integer";
    }
}
