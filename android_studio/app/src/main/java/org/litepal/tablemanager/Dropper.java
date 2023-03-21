package org.litepal.tablemanager;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.litepal.tablemanager.model.TableModel;
import org.litepal.util.BaseUtility;

/* loaded from: classes7.dex */
public class Dropper extends AssociationUpdater {
    public Collection<TableModel> mTableModels;

    private void dropTables() {
        List<String> findTablesToDrop = findTablesToDrop();
        dropTables(findTablesToDrop, this.mDb);
        clearCopyInTableSchema(findTablesToDrop);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005a, code lost:
        if (r1 == null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.List<java.lang.String> findTablesToDrop() {
        /*
            r10 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r10.mDb     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            java.lang.String r3 = "table_schema"
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            if (r2 == 0) goto L5c
        L1a:
            java.lang.String r2 = "name"
            int r2 = r1.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            java.lang.String r3 = "type"
            int r3 = r1.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            int r3 = r1.getInt(r3)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            boolean r3 = r10.shouldDropThisTable(r2, r3)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            if (r3 == 0) goto L4d
            java.lang.String r3 = "AssociationUpdater"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            r4.<init>()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            java.lang.String r5 = "need to drop "
            r4.append(r5)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            r4.append(r2)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            org.litepal.util.LitePalLog.d(r3, r4)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            r0.add(r2)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
        L4d:
            boolean r2 = r1.moveToNext()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L56
            if (r2 != 0) goto L1a
            goto L5c
        L54:
            r0 = move-exception
            goto L60
        L56:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L54
            if (r1 == 0) goto L5f
        L5c:
            r1.close()
        L5f:
            return r0
        L60:
            if (r1 == 0) goto L65
            r1.close()
        L65:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.tablemanager.Dropper.findTablesToDrop():java.util.List");
    }

    private List<String> pickTableNamesFromTableModels() {
        ArrayList arrayList = new ArrayList();
        for (TableModel tableModel : this.mTableModels) {
            arrayList.add(tableModel.getTableName());
        }
        return arrayList;
    }

    private boolean shouldDropThisTable(String str, int i) {
        return !BaseUtility.containsIgnoreCases(pickTableNamesFromTableModels(), str) && i == 0;
    }

    @Override // org.litepal.tablemanager.AssociationUpdater, org.litepal.tablemanager.Creator, org.litepal.tablemanager.AssociationCreator, org.litepal.tablemanager.Generator
    public void createOrUpgradeTable(SQLiteDatabase sQLiteDatabase, boolean z) {
        this.mTableModels = getAllTableModels();
        this.mDb = sQLiteDatabase;
        dropTables();
    }
}
