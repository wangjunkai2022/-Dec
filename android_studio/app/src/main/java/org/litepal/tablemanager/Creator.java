package org.litepal.tablemanager;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;
import org.litepal.tablemanager.model.TableModel;
import org.litepal.util.DBUtility;

/* loaded from: classes7.dex */
public class Creator extends AssociationCreator {
    public static final String TAG = "Creator";

    private String generateDropTableSQL(TableModel tableModel) {
        return generateDropTableSQL(tableModel.getTableName());
    }

    @Override // org.litepal.tablemanager.AssociationCreator, org.litepal.tablemanager.Generator
    public void createOrUpgradeTable(SQLiteDatabase sQLiteDatabase, boolean z) {
        for (TableModel tableModel : getAllTableModels()) {
            createOrUpgradeTable(tableModel, sQLiteDatabase, z);
        }
    }

    public List<String> generateCreateIndexSQLs(TableModel tableModel) {
        return generateCreateIndexSQLs(tableModel.getTableName(), tableModel.getColumnModels());
    }

    public String generateCreateTableSQL(TableModel tableModel) {
        return generateCreateTableSQL(tableModel.getTableName(), tableModel.getColumnModels(), true);
    }

    public List<String> getCreateTableSQLs(TableModel tableModel, SQLiteDatabase sQLiteDatabase, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(generateDropTableSQL(tableModel));
            arrayList.add(generateCreateTableSQL(tableModel));
        } else if (DBUtility.isTableExists(tableModel.getTableName(), sQLiteDatabase)) {
            return null;
        } else {
            arrayList.add(generateCreateTableSQL(tableModel));
        }
        arrayList.addAll(generateCreateIndexSQLs(tableModel));
        return arrayList;
    }

    public void createOrUpgradeTable(TableModel tableModel, SQLiteDatabase sQLiteDatabase, boolean z) {
        execute(getCreateTableSQLs(tableModel, sQLiteDatabase, z), sQLiteDatabase);
        giveTableSchemaACopy(tableModel.getTableName(), 0, sQLiteDatabase);
    }
}
