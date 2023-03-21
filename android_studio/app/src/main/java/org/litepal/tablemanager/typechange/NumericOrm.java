package org.litepal.tablemanager.typechange;

/* loaded from: classes7.dex */
public class NumericOrm extends OrmChange {
    @Override // org.litepal.tablemanager.typechange.OrmChange
    public String object2Relation(String str) {
        if (str != null) {
            if (str.equals("int") || str.equals("java.lang.Integer") || str.equals("long") || str.equals("java.lang.Long") || str.equals("short") || str.equals("java.lang.Short")) {
                return "integer";
            }
            return null;
        }
        return null;
    }
}