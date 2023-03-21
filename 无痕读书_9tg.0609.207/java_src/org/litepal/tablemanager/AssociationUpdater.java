package org.litepal.tablemanager;

import android.database.sqlite.SQLiteDatabase;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.litepal.parser.LitePalAttr;
import org.litepal.tablemanager.model.AssociationsModel;
import org.litepal.tablemanager.model.ColumnModel;
import org.litepal.tablemanager.model.GenericModel;
import org.litepal.tablemanager.model.TableModel;
import org.litepal.util.BaseUtility;
import org.litepal.util.Const;
import org.litepal.util.DBUtility;
import org.litepal.util.LitePalLog;
/* loaded from: classes7.dex */
public abstract class AssociationUpdater extends Creator {
    public static final String TAG = "AssociationUpdater";
    public Collection<AssociationsModel> mAssociationModels;
    public SQLiteDatabase mDb;

    private List<String> findForeignKeyToRemove(TableModel tableModel) {
        ArrayList arrayList = new ArrayList();
        List<String> foreignKeyColumns = getForeignKeyColumns(tableModel);
        String tableName = tableModel.getTableName();
        for (String str : foreignKeyColumns) {
            if (shouldDropForeignKey(tableName, DBUtility.getTableNameByForeignColumn(str))) {
                arrayList.add(str);
            }
        }
        StringBuilder m1016super = Cgoto.m1016super("findForeignKeyToRemove >> ");
        m1016super.append(tableModel.getTableName());
        m1016super.append(" ");
        m1016super.append(arrayList);
        LitePalLog.d(TAG, m1016super.toString());
        return arrayList;
    }

    private List<String> findGenericTablesToDrop() {
        ArrayList arrayList = new ArrayList();
        for (String str : DBUtility.findAllTableNames(this.mDb)) {
            if (DBUtility.isGenericTable(str, this.mDb)) {
                boolean z = true;
                Iterator<GenericModel> it = getGenericModels().iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (str.equalsIgnoreCase(it.next().getTableName())) {
                            z = false;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (z) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    private List<String> findIntermediateTablesToDrop() {
        ArrayList arrayList = new ArrayList();
        for (String str : DBUtility.findAllTableNames(this.mDb)) {
            if (DBUtility.isIntermediateTable(str, this.mDb)) {
                boolean z = true;
                for (AssociationsModel associationsModel : this.mAssociationModels) {
                    if (associationsModel.getAssociationType() == 3 && str.equalsIgnoreCase(DBUtility.getIntermediateTableName(associationsModel.getTableName(), associationsModel.getAssociatedTableName()))) {
                        z = false;
                    }
                }
                if (z) {
                    arrayList.add(str);
                }
            }
        }
        LitePalLog.d(TAG, "findIntermediateTablesToDrop >> " + arrayList);
        return arrayList;
    }

    private String generateCreateNewTableSQL(Collection<String> collection, TableModel tableModel) {
        for (String str : collection) {
            tableModel.removeColumnModelByName(str);
        }
        return generateCreateTableSQL(tableModel);
    }

    private List<String> getRemoveColumnSQLs(Collection<String> collection, String str) {
        TableModel tableModelFromDB = getTableModelFromDB(str);
        String generateAlterToTempTableSQL = generateAlterToTempTableSQL(str);
        LitePalLog.d(TAG, "generateRemoveColumnSQL >> " + generateAlterToTempTableSQL);
        String generateCreateNewTableSQL = generateCreateNewTableSQL(collection, tableModelFromDB);
        LitePalLog.d(TAG, "generateRemoveColumnSQL >> " + generateCreateNewTableSQL);
        String generateDataMigrationSQL = generateDataMigrationSQL(tableModelFromDB);
        LitePalLog.d(TAG, "generateRemoveColumnSQL >> " + generateDataMigrationSQL);
        String generateDropTempTableSQL = generateDropTempTableSQL(str);
        LitePalLog.d(TAG, "generateRemoveColumnSQL >> " + generateDropTempTableSQL);
        List<String> generateCreateIndexSQLs = generateCreateIndexSQLs(tableModelFromDB);
        ArrayList arrayList = new ArrayList();
        arrayList.add(generateAlterToTempTableSQL);
        arrayList.add(generateCreateNewTableSQL);
        arrayList.add(generateDataMigrationSQL);
        arrayList.add(generateDropTempTableSQL);
        arrayList.addAll(generateCreateIndexSQLs);
        return arrayList;
    }

    private boolean isRelationCorrect(AssociationsModel associationsModel, String str, String str2) {
        return associationsModel.getTableName().equalsIgnoreCase(str) && associationsModel.getAssociatedTableName().equalsIgnoreCase(str2);
    }

    private void removeAssociations() {
        removeForeignKeyColumns();
        removeIntermediateTables();
        removeGenericTables();
    }

    private void removeForeignKeyColumns() {
        for (String str : LitePalAttr.getInstance().getClassNames()) {
            TableModel tableModel = getTableModel(str);
            removeColumns(findForeignKeyToRemove(tableModel), tableModel.getTableName());
        }
    }

    private void removeGenericTables() {
        List<String> findGenericTablesToDrop = findGenericTablesToDrop();
        dropTables(findGenericTablesToDrop, this.mDb);
        clearCopyInTableSchema(findGenericTablesToDrop);
    }

    private void removeIntermediateTables() {
        List<String> findIntermediateTablesToDrop = findIntermediateTablesToDrop();
        dropTables(findIntermediateTablesToDrop, this.mDb);
        clearCopyInTableSchema(findIntermediateTablesToDrop);
    }

    private boolean shouldDropForeignKey(String str, String str2) {
        for (AssociationsModel associationsModel : this.mAssociationModels) {
            if (associationsModel.getAssociationType() == 1) {
                if (!str.equalsIgnoreCase(associationsModel.getTableHoldsForeignKey())) {
                    continue;
                } else if (associationsModel.getTableName().equalsIgnoreCase(str)) {
                    if (isRelationCorrect(associationsModel, str, str2)) {
                        return false;
                    }
                } else if (associationsModel.getAssociatedTableName().equalsIgnoreCase(str) && isRelationCorrect(associationsModel, str2, str)) {
                    return false;
                }
            } else if (associationsModel.getAssociationType() == 2 && isRelationCorrect(associationsModel, str2, str)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.litepal.tablemanager.AssociationCreator, org.litepal.tablemanager.Generator
    public void addOrUpdateAssociation(SQLiteDatabase sQLiteDatabase, boolean z) {
        this.mAssociationModels = getAllAssociations();
        this.mDb = sQLiteDatabase;
        removeAssociations();
    }

    public void clearCopyInTableSchema(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder("delete from ");
        sb.append(Const.TableSchema.TABLE_NAME);
        sb.append(" where");
        boolean z = false;
        for (String str : list) {
            if (z) {
                sb.append(" or ");
            }
            z = true;
            Cgoto.m993continue(sb, " lower(", "name", ") ", "=");
            sb.append(" lower('");
            sb.append(str);
            sb.append("')");
        }
        LitePalLog.d(TAG, "clear table schema value sql is " + ((Object) sb));
        ArrayList arrayList = new ArrayList();
        arrayList.add(sb.toString());
        execute(arrayList, this.mDb);
    }

    @Override // org.litepal.tablemanager.Creator, org.litepal.tablemanager.AssociationCreator, org.litepal.tablemanager.Generator
    public abstract void createOrUpgradeTable(SQLiteDatabase sQLiteDatabase, boolean z);

    public void dropTables(List<String> list, SQLiteDatabase sQLiteDatabase) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(generateDropTableSQL(list.get(i)));
        }
        execute(arrayList, sQLiteDatabase);
    }

    public String generateAlterToTempTableSQL(String str) {
        return "alter table " + str + " rename to " + getTempTableName(str);
    }

    public String generateDataMigrationSQL(TableModel tableModel) {
        String tableName = tableModel.getTableName();
        Collection<ColumnModel> columnModels = tableModel.getColumnModels();
        if (columnModels.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("insert into ");
        sb.append(tableName);
        sb.append("(");
        boolean z = false;
        boolean z2 = false;
        for (ColumnModel columnModel : columnModels) {
            if (z2) {
                sb.append(", ");
            }
            sb.append(columnModel.getColumnName());
            z2 = true;
        }
        sb.append(") ");
        sb.append("select ");
        for (ColumnModel columnModel2 : columnModels) {
            if (z) {
                sb.append(", ");
            }
            sb.append(columnModel2.getColumnName());
            z = true;
        }
        sb.append(" from ");
        sb.append(getTempTableName(tableName));
        return sb.toString();
    }

    public String generateDropTempTableSQL(String str) {
        return generateDropTableSQL(getTempTableName(str));
    }

    public List<String> getForeignKeyColumns(TableModel tableModel) {
        ArrayList arrayList = new ArrayList();
        for (ColumnModel columnModel : getTableModelFromDB(tableModel.getTableName()).getColumnModels()) {
            String columnName = columnModel.getColumnName();
            if (isForeignKeyColumnFormat(columnModel.getColumnName()) && !tableModel.containsColumn(columnName)) {
                LitePalLog.d(TAG, "getForeignKeyColumnNames >> foreign key column is " + columnName);
                arrayList.add(columnName);
            }
        }
        return arrayList;
    }

    public TableModel getTableModelFromDB(String str) {
        return DBUtility.findPragmaTableInfo(str, this.mDb);
    }

    public String getTempTableName(String str) {
        return Cgoto.m989case(str, "_temp");
    }

    public boolean isForeignKeyColumn(TableModel tableModel, String str) {
        return BaseUtility.containsIgnoreCases(getForeignKeyColumns(tableModel), str);
    }

    public void removeColumns(Collection<String> collection, String str) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        execute(getRemoveColumnSQLs(collection, str), this.mDb);
    }
}
