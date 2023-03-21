package org.litepal.tablemanager.model;

/* loaded from: classes7.dex */
public class AssociationsModel {
    public String associatedTableName;
    public int associationType;
    public String tableHoldsForeignKey;
    public String tableName;

    public boolean equals(Object obj) {
        if (obj instanceof AssociationsModel) {
            AssociationsModel associationsModel = (AssociationsModel) obj;
            if (associationsModel.getTableName() == null || associationsModel.getAssociatedTableName() == null || associationsModel.getAssociationType() != this.associationType || !associationsModel.getTableHoldsForeignKey().equals(this.tableHoldsForeignKey)) {
                return false;
            }
            if (associationsModel.getTableName().equals(this.tableName) && associationsModel.getAssociatedTableName().equals(this.associatedTableName) && associationsModel.getTableHoldsForeignKey().equals(this.tableHoldsForeignKey)) {
                return true;
            }
            return associationsModel.getTableName().equals(this.associatedTableName) && associationsModel.getAssociatedTableName().equals(this.tableName) && associationsModel.getTableHoldsForeignKey().equals(this.tableHoldsForeignKey);
        }
        return false;
    }

    public String getAssociatedTableName() {
        return this.associatedTableName;
    }

    public int getAssociationType() {
        return this.associationType;
    }

    public String getTableHoldsForeignKey() {
        return this.tableHoldsForeignKey;
    }

    public String getTableName() {
        return this.tableName;
    }

    public void setAssociatedTableName(String str) {
        this.associatedTableName = str;
    }

    public void setAssociationType(int i) {
        this.associationType = i;
    }

    public void setTableHoldsForeignKey(String str) {
        this.tableHoldsForeignKey = str;
    }

    public void setTableName(String str) {
        this.tableName = str;
    }
}
