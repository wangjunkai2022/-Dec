package org.litepal.tablemanager;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.litepal.crud.model.AssociationsInfo;
import org.litepal.tablemanager.model.ColumnModel;
import org.litepal.tablemanager.model.TableModel;
import org.litepal.util.DBUtility;
import org.litepal.util.LitePalLog;

/* loaded from: classes7.dex */
public class Upgrader extends AssociationUpdater {
    public boolean hasConstraintChanged;
    public TableModel mTableModel;
    public TableModel mTableModelDB;

    private void addColumns(List<ColumnModel> list) {
        LitePalLog.d(AssociationUpdater.TAG, "do addColumn");
        execute(getAddColumnSQLs(list), this.mDb);
        for (ColumnModel columnModel : list) {
            this.mTableModelDB.addColumnModel(columnModel);
        }
    }

    private void changeColumnsConstraints() {
        if (this.hasConstraintChanged) {
            LitePalLog.d(AssociationUpdater.TAG, "do changeColumnsConstraints");
            execute(getChangeColumnsConstraintsSQL(), this.mDb);
        }
    }

    private void changeColumnsType(List<ColumnModel> list) {
        LitePalLog.d(AssociationUpdater.TAG, "do changeColumnsType");
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (ColumnModel columnModel : list) {
                arrayList.add(columnModel.getColumnName());
            }
        }
        removeColumns(arrayList);
        addColumns(list);
    }

    private List<ColumnModel> findColumnTypesToChange() {
        ArrayList arrayList = new ArrayList();
        for (ColumnModel columnModel : this.mTableModelDB.getColumnModels()) {
            for (ColumnModel columnModel2 : this.mTableModel.getColumnModels()) {
                if (columnModel.getColumnName().equalsIgnoreCase(columnModel2.getColumnName())) {
                    if (!columnModel.getColumnType().equalsIgnoreCase(columnModel2.getColumnType()) && (!columnModel2.getColumnType().equalsIgnoreCase("blob") || !TextUtils.isEmpty(columnModel.getColumnType()))) {
                        arrayList.add(columnModel2);
                    }
                    if (!this.hasConstraintChanged) {
                        StringBuilder m1016super = Cgoto.m1016super("default value db is:");
                        m1016super.append(columnModel.getDefaultValue());
                        m1016super.append(", default value is:");
                        m1016super.append(columnModel2.getDefaultValue());
                        LitePalLog.d(AssociationUpdater.TAG, m1016super.toString());
                        if (columnModel.isNullable() != columnModel2.isNullable() || !columnModel.getDefaultValue().equalsIgnoreCase(columnModel2.getDefaultValue()) || columnModel.hasIndex() != columnModel2.hasIndex() || (columnModel.isUnique() && !columnModel2.isUnique())) {
                            this.hasConstraintChanged = true;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private List<ColumnModel> findColumnsToAdd() {
        ArrayList arrayList = new ArrayList();
        for (ColumnModel columnModel : this.mTableModel.getColumnModels()) {
            if (!this.mTableModelDB.containsColumn(columnModel.getColumnName())) {
                arrayList.add(columnModel);
            }
        }
        return arrayList;
    }

    private List<String> findColumnsToRemove() {
        String tableName = this.mTableModel.getTableName();
        ArrayList arrayList = new ArrayList();
        for (ColumnModel columnModel : this.mTableModelDB.getColumnModels()) {
            String columnName = columnModel.getColumnName();
            if (isNeedToRemove(columnName)) {
                arrayList.add(columnName);
            }
        }
        LitePalLog.d(AssociationUpdater.TAG, "remove columns from " + tableName + " >> " + arrayList);
        return arrayList;
    }

    private List<String> generateAddColumnSQLs(ColumnModel columnModel) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(generateAddColumnSQL(this.mTableModel.getTableName(), columnModel));
        if (columnModel.hasIndex()) {
            arrayList.add(generateCreateIndexSQL(this.mTableModel.getTableName(), columnModel));
        }
        return arrayList;
    }

    private List<String> generateAddForeignKeySQL() {
        ArrayList arrayList = new ArrayList();
        for (String str : getForeignKeyColumns(this.mTableModel)) {
            if (!this.mTableModel.containsColumn(str)) {
                ColumnModel columnModel = new ColumnModel();
                columnModel.setColumnName(str);
                columnModel.setColumnType("integer");
                arrayList.add(generateAddColumnSQL(this.mTableModel.getTableName(), columnModel));
            }
        }
        return arrayList;
    }

    private List<String> getAddColumnSQLs(List<ColumnModel> list) {
        ArrayList arrayList = new ArrayList();
        for (ColumnModel columnModel : list) {
            arrayList.addAll(generateAddColumnSQLs(columnModel));
        }
        return arrayList;
    }

    private List<String> getChangeColumnsConstraintsSQL() {
        String generateAlterToTempTableSQL = generateAlterToTempTableSQL(this.mTableModel.getTableName());
        String generateCreateTableSQL = generateCreateTableSQL(this.mTableModel);
        List<String> generateAddForeignKeySQL = generateAddForeignKeySQL();
        String generateDataMigrationSQL = generateDataMigrationSQL(this.mTableModelDB);
        String generateDropTempTableSQL = generateDropTempTableSQL(this.mTableModel.getTableName());
        List<String> generateCreateIndexSQLs = generateCreateIndexSQLs(this.mTableModel);
        ArrayList arrayList = new ArrayList();
        arrayList.add(generateAlterToTempTableSQL);
        arrayList.add(generateCreateTableSQL);
        arrayList.addAll(generateAddForeignKeySQL);
        arrayList.add(generateDataMigrationSQL);
        arrayList.add(generateDropTempTableSQL);
        arrayList.addAll(generateCreateIndexSQLs);
        LitePalLog.d(AssociationUpdater.TAG, "generateChangeConstraintSQL >> ");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            LitePalLog.d(AssociationUpdater.TAG, (String) it.next());
        }
        LitePalLog.d(AssociationUpdater.TAG, "<< generateChangeConstraintSQL");
        return arrayList;
    }

    private boolean hasNewUniqueOrNotNullColumn() {
        for (ColumnModel columnModel : this.mTableModel.getColumnModels()) {
            if (!columnModel.isIdColumn()) {
                ColumnModel columnModelByName = this.mTableModelDB.getColumnModelByName(columnModel.getColumnName());
                if (columnModel.isUnique() && (columnModelByName == null || !columnModelByName.isUnique())) {
                    return true;
                }
                if (columnModelByName != null && !columnModel.isNullable() && columnModelByName.isNullable()) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isNeedToRemove(String str) {
        return (!isRemovedFromClass(str) || isIdColumn(str) || isForeignKeyColumn(this.mTableModel, str)) ? false : true;
    }

    private boolean isRemovedFromClass(String str) {
        return !this.mTableModel.containsColumn(str);
    }

    private void removeColumns(List<String> list) {
        LitePalLog.d(AssociationUpdater.TAG, "do removeColumns " + list);
        removeColumns(list, this.mTableModel.getTableName());
        for (String str : list) {
            this.mTableModelDB.removeColumnModelByName(str);
        }
    }

    private void upgradeTable() {
        if (hasNewUniqueOrNotNullColumn()) {
            createOrUpgradeTable(this.mTableModel, this.mDb, true);
            for (AssociationsInfo associationsInfo : getAssociationInfo(this.mTableModel.getClassName())) {
                if (associationsInfo.getAssociationType() == 2 || associationsInfo.getAssociationType() == 1) {
                    if (associationsInfo.getClassHoldsForeignKey().equalsIgnoreCase(this.mTableModel.getClassName())) {
                        addForeignKeyColumn(this.mTableModel.getTableName(), DBUtility.getTableNameByClassName(associationsInfo.getAssociatedClassName()), this.mTableModel.getTableName(), this.mDb);
                    }
                }
            }
            return;
        }
        this.hasConstraintChanged = false;
        removeColumns(findColumnsToRemove());
        addColumns(findColumnsToAdd());
        changeColumnsType(findColumnTypesToChange());
        changeColumnsConstraints();
    }

    @Override // org.litepal.tablemanager.AssociationUpdater, org.litepal.tablemanager.Creator, org.litepal.tablemanager.AssociationCreator, org.litepal.tablemanager.Generator
    public void createOrUpgradeTable(SQLiteDatabase sQLiteDatabase, boolean z) {
        this.mDb = sQLiteDatabase;
        for (TableModel tableModel : getAllTableModels()) {
            this.mTableModel = tableModel;
            this.mTableModelDB = getTableModelFromDB(tableModel.getTableName());
            StringBuilder m1016super = Cgoto.m1016super("createOrUpgradeTable: model is ");
            m1016super.append(this.mTableModel.getTableName());
            LitePalLog.d(AssociationUpdater.TAG, m1016super.toString());
            upgradeTable();
        }
    }
}
