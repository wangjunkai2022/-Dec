package org.litepal.util;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Pair;
import com.apk.Cgoto;
import com.umeng.analytics.pro.ao;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.litepal.exceptions.DatabaseGenerateException;
import org.litepal.tablemanager.model.ColumnModel;
import org.litepal.tablemanager.model.TableModel;
/* loaded from: classes7.dex */
public class DBUtility {
    public static final String KEYWORDS_COLUMN_SUFFIX = "_lpcolumn";
    public static final String REG_COLLECTION = "\\s+(not\\s+)?(in)\\s*\\(";
    public static final String REG_FUZZY = "\\s+(not\\s+)?(like|between)\\s+";
    public static final String REG_OPERATOR = "\\s*(=|!=|<>|<|>)";
    public static final String SQLITE_KEYWORDS = ",abort,add,after,all,alter,and,as,asc,autoincrement,before,begin,between,by,cascade,check,collate,column,commit,conflict,constraint,create,cross,database,deferrable,deferred,delete,desc,distinct,drop,each,end,escape,except,exclusive,exists,foreign,from,glob,group,having,in,index,inner,insert,intersect,into,is,isnull,join,like,limit,match,natural,not,notnull,null,of,offset,on,or,order,outer,plan,pragma,primary,query,raise,references,regexp,reindex,release,rename,replace,restrict,right,rollback,row,savepoint,select,set,table,temp,temporary,then,to,transaction,trigger,union,unique,update,using,vacuum,values,view,virtual,when,where,";
    public static final String TAG = "DBUtility";

    public static String convertOrderByClauseToValidName(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.trim().toLowerCase(Locale.US);
        if (lowerCase.contains(",")) {
            String[] split = lowerCase.split(",");
            StringBuilder sb = new StringBuilder();
            int length = split.length;
            int i = 0;
            boolean z = false;
            while (i < length) {
                String str2 = split[i];
                if (z) {
                    sb.append(",");
                }
                sb.append(convertOrderByItem(str2));
                i++;
                z = true;
            }
            return sb.toString();
        }
        return convertOrderByItem(lowerCase);
    }

    public static String convertOrderByItem(String str) {
        String str2 = "";
        if (str.endsWith("asc")) {
            str = str.replace("asc", "").trim();
            str2 = " asc";
        } else if (str.endsWith("desc")) {
            str = str.replace("desc", "").trim();
            str2 = " desc";
        }
        return convertToValidColumnName(str) + str2;
    }

    public static String[] convertSelectClauseToValidNames(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        String[] strArr2 = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = convertToValidColumnName(strArr[i]);
        }
        return strArr2;
    }

    public static String convertToValidColumnName(String str) {
        return isFieldNameConflictWithSQLiteKeywords(str) ? Cgoto.m989case(str, KEYWORDS_COLUMN_SUFFIX) : str;
    }

    public static String convertWhereClauseToColumnName(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                Matcher matcher = Pattern.compile("(\\w+\\s*(=|!=|<>|<|>)|\\w+\\s+(not\\s+)?(like|between)\\s+|\\w+\\s+(not\\s+)?(in)\\s*\\()").matcher(str);
                while (matcher.find()) {
                    String group = matcher.group();
                    String replaceAll = group.replaceAll("(\\s*(=|!=|<>|<|>)|\\s+(not\\s+)?(like|between)\\s+|\\s+(not\\s+)?(in)\\s*\\()", "");
                    String replace = group.replace(replaceAll, "");
                    String convertToValidColumnName = convertToValidColumnName(replaceAll);
                    matcher.appendReplacement(stringBuffer, convertToValidColumnName + replace);
                }
                matcher.appendTail(stringBuffer);
                return stringBuffer.toString();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    public static List<String> findAllTableNames(SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursor = sQLiteDatabase.rawQuery("select * from sqlite_master where type = ?", new String[]{"table"});
                if (cursor.moveToFirst()) {
                    do {
                        String string = cursor.getString(cursor.getColumnIndexOrThrow("tbl_name"));
                        if (!arrayList.contains(string)) {
                            arrayList.add(string);
                        }
                    } while (cursor.moveToNext());
                    cursor.close();
                    return arrayList;
                }
                cursor.close();
                return arrayList;
            } catch (Exception e) {
                e.printStackTrace();
                throw new DatabaseGenerateException(e.getMessage());
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.util.Set<java.lang.String>, java.util.Set<java.lang.String>> findIndexedColumns(java.lang.String r10, android.database.sqlite.SQLiteDatabase r11) {
        /*
            java.lang.String r0 = "name"
            java.lang.String r1 = ")"
            java.util.HashSet r2 = new java.util.HashSet
            r2.<init>()
            java.util.HashSet r3 = new java.util.HashSet
            r3.<init>()
            r4 = 0
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L99
            r5.<init>()     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L99
            java.lang.String r6 = "pragma index_list("
            r5.append(r6)     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L99
            r5.append(r10)     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L99
            r5.append(r1)     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L99
            java.lang.String r10 = r5.toString()     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L99
            android.database.Cursor r10 = r11.rawQuery(r10, r4)     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L99
            boolean r5 = r10.moveToFirst()     // Catch: java.lang.Throwable -> L8e java.lang.Exception -> L92
            if (r5 == 0) goto L80
            r5 = r4
        L2e:
            java.lang.String r6 = "unique"
            int r6 = r10.getColumnIndexOrThrow(r6)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            int r6 = r10.getInt(r6)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            r7 = 1
            if (r6 != r7) goto L3c
            goto L3d
        L3c:
            r7 = 0
        L3d:
            int r6 = r10.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.lang.String r6 = r10.getString(r6)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            r8.<init>()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.lang.String r9 = "pragma index_info("
            r8.append(r9)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            r8.append(r6)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            r8.append(r1)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.lang.String r6 = r8.toString()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            android.database.Cursor r5 = r11.rawQuery(r6, r4)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            boolean r6 = r5.moveToFirst()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r6 == 0) goto L74
            int r6 = r5.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            java.lang.String r6 = r5.getString(r6)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r7 == 0) goto L71
            r3.add(r6)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            goto L74
        L71:
            r2.add(r6)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
        L74:
            boolean r6 = r10.moveToNext()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r6 != 0) goto L2e
            r4 = r5
            goto L80
        L7c:
            r11 = move-exception
            goto L90
        L7e:
            r11 = move-exception
            goto L94
        L80:
            r10.close()
            if (r4 == 0) goto L88
            r4.close()
        L88:
            android.util.Pair r10 = new android.util.Pair
            r10.<init>(r2, r3)
            return r10
        L8e:
            r11 = move-exception
            r5 = r4
        L90:
            r4 = r10
            goto La9
        L92:
            r11 = move-exception
            r5 = r4
        L94:
            r4 = r10
            goto L9b
        L96:
            r11 = move-exception
            r5 = r4
            goto La9
        L99:
            r11 = move-exception
            r5 = r4
        L9b:
            r11.printStackTrace()     // Catch: java.lang.Throwable -> La8
            org.litepal.exceptions.DatabaseGenerateException r10 = new org.litepal.exceptions.DatabaseGenerateException     // Catch: java.lang.Throwable -> La8
            java.lang.String r11 = r11.getMessage()     // Catch: java.lang.Throwable -> La8
            r10.<init>(r11)     // Catch: java.lang.Throwable -> La8
            throw r10     // Catch: java.lang.Throwable -> La8
        La8:
            r11 = move-exception
        La9:
            if (r4 == 0) goto Lae
            r4.close()
        Lae:
            if (r5 == 0) goto Lb3
            r5.close()
        Lb3:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.util.DBUtility.findIndexedColumns(java.lang.String, android.database.sqlite.SQLiteDatabase):android.util.Pair");
    }

    public static TableModel findPragmaTableInfo(String str, SQLiteDatabase sQLiteDatabase) {
        if (isTableExists(str, sQLiteDatabase)) {
            Pair<Set<String>, Set<String>> findIndexedColumns = findIndexedColumns(str, sQLiteDatabase);
            Set set = (Set) findIndexedColumns.first;
            Set set2 = (Set) findIndexedColumns.second;
            TableModel tableModel = new TableModel();
            tableModel.setTableName(str);
            Cursor cursor = null;
            try {
                try {
                    cursor = sQLiteDatabase.rawQuery(Cgoto.m996else("pragma table_info(", str, ")"), null);
                    if (cursor.moveToFirst()) {
                        do {
                            ColumnModel columnModel = new ColumnModel();
                            String string = cursor.getString(cursor.getColumnIndexOrThrow("name"));
                            String string2 = cursor.getString(cursor.getColumnIndexOrThrow("type"));
                            boolean z = true;
                            if (cursor.getInt(cursor.getColumnIndexOrThrow("notnull")) == 1) {
                                z = false;
                            }
                            boolean contains = set2.contains(string);
                            boolean contains2 = set.contains(string);
                            String string3 = cursor.getString(cursor.getColumnIndexOrThrow("dflt_value"));
                            columnModel.setColumnName(string);
                            columnModel.setColumnType(string2);
                            columnModel.setNullable(z);
                            columnModel.setUnique(contains);
                            columnModel.setHasIndex(contains2);
                            columnModel.setDefaultValue(string3 != null ? string3.replace("'", "") : "");
                            tableModel.addColumnModel(columnModel);
                        } while (cursor.moveToNext());
                        cursor.close();
                        return tableModel;
                    }
                    cursor.close();
                    return tableModel;
                } catch (Exception e) {
                    e.printStackTrace();
                    throw new DatabaseGenerateException(e.getMessage());
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        throw new DatabaseGenerateException(Cgoto.m989case(DatabaseGenerateException.TABLE_DOES_NOT_EXIST_WHEN_EXECUTING, str));
    }

    public static String getGenericTableName(String str, String str2) {
        String tableNameByClassName = getTableNameByClassName(str);
        return BaseUtility.changeCase(tableNameByClassName + "_" + str2);
    }

    public static String getGenericValueIdColumnName(String str) {
        return BaseUtility.changeCase(getTableNameByClassName(str) + ao.d);
    }

    public static String getIndexName(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return str + "_" + str2 + "_index";
    }

    public static String getIntermediateTableName(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        if (str.toLowerCase(Locale.US).compareTo(str2.toLowerCase(Locale.US)) <= 0) {
            return Cgoto.m996else(str, "_", str2);
        }
        return Cgoto.m996else(str2, "_", str);
    }

    public static String getM2MSelfRefColumnName(Field field) {
        return BaseUtility.changeCase(field.getName() + ao.d);
    }

    public static String getTableNameByClassName(String str) {
        if (TextUtils.isEmpty(str) || '.' == str.charAt(str.length() - 1)) {
            return null;
        }
        return str.substring(str.lastIndexOf(".") + 1);
    }

    public static String getTableNameByForeignColumn(String str) {
        if (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.US).endsWith(ao.d)) {
            return null;
        }
        return str.substring(0, str.length() - 3);
    }

    public static List<String> getTableNameListByClassNameList(List<String> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            for (String str : list) {
                arrayList.add(getTableNameByClassName(str));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0051, code lost:
        if (r0 == null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isColumnExists(java.lang.String r4, java.lang.String r5, android.database.sqlite.SQLiteDatabase r6) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            r1 = 0
            if (r0 != 0) goto L5b
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            if (r0 == 0) goto Le
            goto L5b
        Le:
            r0 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            r2.<init>()     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            java.lang.String r3 = "pragma table_info("
            r2.append(r3)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            r2.append(r5)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            java.lang.String r5 = ")"
            r2.append(r5)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            android.database.Cursor r0 = r6.rawQuery(r5, r0)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            boolean r5 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            if (r5 == 0) goto L47
        L2f:
            java.lang.String r5 = "name"
            int r5 = r0.getColumnIndexOrThrow(r5)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            java.lang.String r5 = r0.getString(r5)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            boolean r5 = r4.equalsIgnoreCase(r5)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            if (r5 == 0) goto L41
            r1 = 1
            goto L47
        L41:
            boolean r5 = r0.moveToNext()     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            if (r5 != 0) goto L2f
        L47:
            r0.close()
            goto L54
        L4b:
            r4 = move-exception
            goto L55
        L4d:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L4b
            if (r0 == 0) goto L54
            goto L47
        L54:
            return r1
        L55:
            if (r0 == 0) goto L5a
            r0.close()
        L5a:
            throw r4
        L5b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.util.DBUtility.isColumnExists(java.lang.String, java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
    }

    public static boolean isFieldNameConflictWithSQLiteKeywords(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        StringBuilder m1016super = Cgoto.m1016super(",");
        m1016super.append(str.toLowerCase(Locale.US));
        m1016super.append(",");
        return SQLITE_KEYWORDS.contains(m1016super.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r0.getInt(r0.getColumnIndexOrThrow("type")) != 2) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0043, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isGenericTable(java.lang.String r9, android.database.sqlite.SQLiteDatabase r10) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            if (r0 != 0) goto L5d
            java.lang.String r0 = "[0-9a-zA-Z]+_[0-9a-zA-Z]+"
            boolean r0 = r9.matches(r0)
            if (r0 == 0) goto L5d
            r0 = 0
            java.lang.String r2 = "table_schema"
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r1 = r10
            android.database.Cursor r0 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            boolean r10 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            if (r10 == 0) goto L53
        L22:
            java.lang.String r10 = "name"
            int r10 = r0.getColumnIndexOrThrow(r10)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            java.lang.String r10 = r0.getString(r10)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            boolean r10 = r9.equalsIgnoreCase(r10)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            if (r10 == 0) goto L44
            java.lang.String r9 = "type"
            int r9 = r0.getColumnIndexOrThrow(r9)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            int r9 = r0.getInt(r9)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            r10 = 2
            if (r9 != r10) goto L53
            r9 = 1
            r0.close()
            return r9
        L44:
            boolean r10 = r0.moveToNext()     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            if (r10 != 0) goto L22
            goto L53
        L4b:
            r9 = move-exception
            goto L57
        L4d:
            r9 = move-exception
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L4b
            if (r0 == 0) goto L5d
        L53:
            r0.close()
            goto L5d
        L57:
            if (r0 == 0) goto L5c
            r0.close()
        L5c:
            throw r9
        L5d:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.util.DBUtility.isGenericTable(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r0.getInt(r0.getColumnIndexOrThrow("type")) != 1) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isIntermediateTable(java.lang.String r9, android.database.sqlite.SQLiteDatabase r10) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            if (r0 != 0) goto L5c
            java.lang.String r0 = "[0-9a-zA-Z]+_[0-9a-zA-Z]+"
            boolean r0 = r9.matches(r0)
            if (r0 == 0) goto L5c
            r0 = 0
            java.lang.String r2 = "table_schema"
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r1 = r10
            android.database.Cursor r0 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            boolean r10 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r10 == 0) goto L52
        L22:
            java.lang.String r10 = "name"
            int r10 = r0.getColumnIndexOrThrow(r10)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.String r10 = r0.getString(r10)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            boolean r10 = r9.equalsIgnoreCase(r10)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r10 == 0) goto L43
            java.lang.String r9 = "type"
            int r9 = r0.getColumnIndexOrThrow(r9)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            int r9 = r0.getInt(r9)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r10 = 1
            if (r9 != r10) goto L52
            r0.close()
            return r10
        L43:
            boolean r10 = r0.moveToNext()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r10 != 0) goto L22
            goto L52
        L4a:
            r9 = move-exception
            goto L56
        L4c:
            r9 = move-exception
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L4a
            if (r0 == 0) goto L5c
        L52:
            r0.close()
            goto L5c
        L56:
            if (r0 == 0) goto L5b
            r0.close()
        L5b:
            throw r9
        L5c:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.util.DBUtility.isIntermediateTable(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
    }

    public static boolean isTableExists(String str, SQLiteDatabase sQLiteDatabase) {
        try {
            return BaseUtility.containsIgnoreCases(findAllTableNames(sQLiteDatabase), str);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
