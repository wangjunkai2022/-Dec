package org.litepal.tablemanager;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.baidu.tts.client.SpeechSynthesizer;
import com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter;
import com.umeng.analytics.pro.ao;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import org.litepal.exceptions.DatabaseGenerateException;
import org.litepal.tablemanager.model.AssociationsModel;
import org.litepal.tablemanager.model.ColumnModel;
import org.litepal.tablemanager.model.GenericModel;
import org.litepal.util.BaseUtility;
import org.litepal.util.Const;
import org.litepal.util.DBUtility;
import org.litepal.util.LitePalLog;

/* loaded from: classes7.dex */
public abstract class AssociationCreator extends Generator {
    private void addAssociations(Collection<AssociationsModel> collection, SQLiteDatabase sQLiteDatabase, boolean z) {
        for (AssociationsModel associationsModel : collection) {
            if (2 != associationsModel.getAssociationType() && 1 != associationsModel.getAssociationType()) {
                if (3 == associationsModel.getAssociationType()) {
                    createIntermediateTable(associationsModel.getTableName(), associationsModel.getAssociatedTableName(), sQLiteDatabase, z);
                }
            } else {
                addForeignKeyColumn(associationsModel.getTableName(), associationsModel.getAssociatedTableName(), associationsModel.getTableHoldsForeignKey(), sQLiteDatabase);
            }
        }
        for (GenericModel genericModel : getGenericModels()) {
            createGenericTable(genericModel, sQLiteDatabase, z);
        }
    }

    private void createGenericTable(GenericModel genericModel, SQLiteDatabase sQLiteDatabase, boolean z) {
        String tableName = genericModel.getTableName();
        String valueColumnName = genericModel.getValueColumnName();
        String valueColumnType = genericModel.getValueColumnType();
        String valueIdColumnName = genericModel.getValueIdColumnName();
        ArrayList arrayList = new ArrayList();
        ColumnModel columnModel = new ColumnModel();
        columnModel.setColumnName(valueColumnName);
        columnModel.setColumnType(valueColumnType);
        ColumnModel columnModel2 = new ColumnModel();
        columnModel2.setColumnName(valueIdColumnName);
        columnModel2.setColumnType("integer");
        arrayList.add(columnModel);
        arrayList.add(columnModel2);
        ArrayList arrayList2 = new ArrayList();
        if (!DBUtility.isTableExists(tableName, sQLiteDatabase)) {
            arrayList2.add(generateCreateTableSQL(tableName, arrayList, false));
        } else if (z) {
            arrayList2.add(generateDropTableSQL(tableName));
            arrayList2.add(generateCreateTableSQL(tableName, arrayList, false));
        }
        execute(arrayList2, sQLiteDatabase);
        giveTableSchemaACopy(tableName, 2, sQLiteDatabase);
    }

    private void createIntermediateTable(String str, String str2, SQLiteDatabase sQLiteDatabase, boolean z) {
        ArrayList arrayList = new ArrayList();
        ColumnModel columnModel = new ColumnModel();
        columnModel.setColumnName(str + ao.d);
        columnModel.setColumnType("integer");
        ColumnModel columnModel2 = new ColumnModel();
        columnModel2.setColumnName(str2 + ao.d);
        columnModel2.setColumnType("integer");
        arrayList.add(columnModel);
        arrayList.add(columnModel2);
        String intermediateTableName = DBUtility.getIntermediateTableName(str, str2);
        ArrayList arrayList2 = new ArrayList();
        if (!DBUtility.isTableExists(intermediateTableName, sQLiteDatabase)) {
            arrayList2.add(generateCreateTableSQL(intermediateTableName, arrayList, false));
        } else if (z) {
            arrayList2.add(generateDropTableSQL(intermediateTableName));
            arrayList2.add(generateCreateTableSQL(intermediateTableName, arrayList, false));
        }
        execute(arrayList2, sQLiteDatabase);
        giveTableSchemaACopy(intermediateTableName, 1, sQLiteDatabase);
    }

    private boolean isContainsOnlyIdField(Collection<ColumnModel> collection) {
        for (ColumnModel columnModel : collection) {
            if (!columnModel.isIdColumn()) {
                return false;
            }
        }
        return true;
    }

    private boolean isNeedtoGiveACopy(Cursor cursor, String str) {
        return (isValueExists(cursor, str) || isSpecialTable(str)) ? false : true;
    }

    private boolean isSpecialTable(String str) {
        return Const.TableSchema.TABLE_NAME.equalsIgnoreCase(str);
    }

    private boolean isValueExists(Cursor cursor, String str) {
        if (cursor.moveToFirst()) {
            while (!cursor.getString(cursor.getColumnIndexOrThrow("name")).equalsIgnoreCase(str)) {
                if (!cursor.moveToNext()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public void addForeignKeyColumn(String str, String str2, String str3, SQLiteDatabase sQLiteDatabase) {
        if (DBUtility.isTableExists(str, sQLiteDatabase)) {
            if (DBUtility.isTableExists(str2, sQLiteDatabase)) {
                String str4 = null;
                if (str.equals(str3)) {
                    str4 = getForeignKeyColumnName(str2);
                } else if (str2.equals(str3)) {
                    str4 = getForeignKeyColumnName(str);
                }
                if (!DBUtility.isColumnExists(str4, str3, sQLiteDatabase)) {
                    ColumnModel columnModel = new ColumnModel();
                    columnModel.setColumnName(str4);
                    columnModel.setColumnType("integer");
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(generateAddColumnSQL(str3, columnModel));
                    execute(arrayList, sQLiteDatabase);
                    return;
                }
                LitePalLog.d(Generator.TAG, "column " + str4 + " is already exist, no need to add one");
                return;
            }
            throw new DatabaseGenerateException(Cgoto.m989case(DatabaseGenerateException.TABLE_DOES_NOT_EXIST, str2));
        }
        throw new DatabaseGenerateException(Cgoto.m989case(DatabaseGenerateException.TABLE_DOES_NOT_EXIST, str));
    }

    @Override // org.litepal.tablemanager.Generator
    public void addOrUpdateAssociation(SQLiteDatabase sQLiteDatabase, boolean z) {
        addAssociations(getAllAssociations(), sQLiteDatabase, z);
    }

    @Override // org.litepal.tablemanager.Generator
    public abstract void createOrUpgradeTable(SQLiteDatabase sQLiteDatabase, boolean z);

    public String generateAddColumnSQL(String str, ColumnModel columnModel) {
        StringBuilder sb = new StringBuilder();
        sb.append("alter table ");
        sb.append(str);
        sb.append(" add column ");
        sb.append(columnModel.getColumnName());
        sb.append(" ");
        sb.append(columnModel.getColumnType());
        if (!columnModel.isNullable()) {
            sb.append(" not null");
        }
        if (columnModel.isUnique()) {
            sb.append(" unique");
        }
        String defaultValue = columnModel.getDefaultValue();
        if (!TextUtils.isEmpty(defaultValue)) {
            sb.append(" default ");
            sb.append(defaultValue);
        } else if (!columnModel.isNullable()) {
            if ("integer".equalsIgnoreCase(columnModel.getColumnType())) {
                defaultValue = SpeechSynthesizer.REQUEST_DNS_OFF;
            } else if ("text".equalsIgnoreCase(columnModel.getColumnType())) {
                defaultValue = "''";
            } else if ("real".equalsIgnoreCase(columnModel.getColumnType())) {
                defaultValue = PangleRewardVideoAdapter.VERSION_00;
            }
            sb.append(" default ");
            sb.append(defaultValue);
        }
        LitePalLog.d(Generator.TAG, "add column sql is >> " + ((Object) sb));
        return sb.toString();
    }

    public String generateCreateIndexSQL(String str, ColumnModel columnModel) {
        StringBuilder sb = new StringBuilder();
        if (columnModel.hasIndex()) {
            sb.append("create index ");
            sb.append(DBUtility.getIndexName(str, columnModel.getColumnName()));
            sb.append(" on ");
            sb.append(str);
            sb.append(" (");
            sb.append(columnModel.getColumnName());
            sb.append(")");
            LitePalLog.d(Generator.TAG, "create table index sql is >> " + ((Object) sb));
        }
        return sb.toString();
    }

    public List<String> generateCreateIndexSQLs(String str, Collection<ColumnModel> collection) {
        ArrayList arrayList = new ArrayList();
        for (ColumnModel columnModel : collection) {
            if (columnModel.hasIndex()) {
                arrayList.add(generateCreateIndexSQL(str, columnModel));
            }
        }
        return arrayList;
    }

    public String generateCreateTableSQL(String str, Collection<ColumnModel> collection, boolean z) {
        StringBuilder sb = new StringBuilder("create table ");
        sb.append(str);
        sb.append(" (");
        if (z) {
            sb.append("id integer primary key autoincrement,");
        }
        if (isContainsOnlyIdField(collection)) {
            sb.deleteCharAt(sb.length() - 1);
        }
        boolean z2 = false;
        for (ColumnModel columnModel : collection) {
            if (!columnModel.isIdColumn()) {
                if (z2) {
                    sb.append(", ");
                }
                sb.append(columnModel.getColumnName());
                sb.append(" ");
                sb.append(columnModel.getColumnType());
                if (!columnModel.isNullable()) {
                    sb.append(" not null");
                }
                if (columnModel.isUnique()) {
                    sb.append(" unique");
                }
                String defaultValue = columnModel.getDefaultValue();
                if (!TextUtils.isEmpty(defaultValue)) {
                    sb.append(" default ");
                    sb.append(defaultValue);
                }
                z2 = true;
            }
        }
        sb.append(")");
        LitePalLog.d(Generator.TAG, "create table sql is >> " + ((Object) sb));
        return sb.toString();
    }

    public String generateDropTableSQL(String str) {
        return Cgoto.m989case("drop table if exists ", str);
    }

    public void giveTableSchemaACopy(String str, int i, SQLiteDatabase sQLiteDatabase) {
        StringBuilder sb = new StringBuilder("select * from ");
        sb.append(Const.TableSchema.TABLE_NAME);
        LitePalLog.d(Generator.TAG, "giveTableSchemaACopy SQL is >> " + ((Object) sb));
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
                try {
                    if (isNeedtoGiveACopy(rawQuery, str)) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("name", BaseUtility.changeCase(str));
                        contentValues.put("type", Integer.valueOf(i));
                        sQLiteDatabase.insert(Const.TableSchema.TABLE_NAME, null, contentValues);
                    }
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                } catch (Exception e) {
                    e = e;
                    cursor = rawQuery;
                    e.printStackTrace();
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = rawQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public boolean isForeignKeyColumnFormat(String str) {
        return (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.US).endsWith(ao.d) || str.equalsIgnoreCase(ao.d)) ? false : true;
    }
}
