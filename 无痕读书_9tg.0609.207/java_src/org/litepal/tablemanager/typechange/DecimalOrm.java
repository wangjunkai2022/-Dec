package org.litepal.tablemanager.typechange;
/* loaded from: classes7.dex */
public class DecimalOrm extends OrmChange {
    @Override // org.litepal.tablemanager.typechange.OrmChange
    public String object2Relation(String str) {
        if (str != null) {
            if (str.equals("float") || str.equals("java.lang.Float") || str.equals("double") || str.equals("java.lang.Double")) {
                return "real";
            }
            return null;
        }
        return null;
    }
}
