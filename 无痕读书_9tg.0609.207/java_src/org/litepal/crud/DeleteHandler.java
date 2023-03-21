package org.litepal.crud;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.apk.Cgoto;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.litepal.Operator;
import org.litepal.crud.model.AssociationsInfo;
import org.litepal.exceptions.LitePalSupportException;
import org.litepal.util.BaseUtility;
import org.litepal.util.DBUtility;
/* loaded from: classes7.dex */
public class DeleteHandler extends DataHandler {
    public List<String> foreignKeyTableToDelete;

    public DeleteHandler(SQLiteDatabase sQLiteDatabase) {
        this.mDatabase = sQLiteDatabase;
    }

    private void analyzeAssociations(Class<?> cls) {
        for (AssociationsInfo associationsInfo : getAssociationInfo(cls.getName())) {
            String tableNameByClassName = DBUtility.getTableNameByClassName(associationsInfo.getAssociatedClassName());
            if (associationsInfo.getAssociationType() != 2 && associationsInfo.getAssociationType() != 1) {
                if (associationsInfo.getAssociationType() == 3) {
                    getForeignKeyTableToDelete().add(BaseUtility.changeCase(DBUtility.getIntermediateTableName(getTableName(cls), tableNameByClassName)));
                }
            } else {
                if (!cls.getName().equals(associationsInfo.getClassHoldsForeignKey())) {
                    getForeignKeyTableToDelete().add(tableNameByClassName);
                }
            }
        }
    }

    private String buildConditionString(String... strArr) {
        int length = strArr.length - 1;
        int i = 0;
        String str = strArr[0];
        while (i < length) {
            StringBuilder m1016super = Cgoto.m1016super("'");
            i++;
            m1016super.append(strArr[i]);
            m1016super.append("'");
            str = str.replaceFirst("\\?", m1016super.toString());
        }
        return str;
    }

    private void clearAssociatedModelSaveState(LitePalSupport litePalSupport, Collection<AssociationsInfo> collection) {
        LitePalSupport associatedModel;
        try {
            for (AssociationsInfo associationsInfo : collection) {
                if (associationsInfo.getAssociationType() == 2 && !litePalSupport.getClassName().equals(associationsInfo.getClassHoldsForeignKey())) {
                    Collection<LitePalSupport> associatedModels = getAssociatedModels(litePalSupport, associationsInfo);
                    if (associatedModels != null && !associatedModels.isEmpty()) {
                        for (LitePalSupport litePalSupport2 : associatedModels) {
                            if (litePalSupport2 != null) {
                                litePalSupport2.clearSavedState();
                            }
                        }
                    }
                } else if (associationsInfo.getAssociationType() == 1 && (associatedModel = getAssociatedModel(litePalSupport, associationsInfo)) != null) {
                    associatedModel.clearSavedState();
                }
            }
        } catch (Exception e) {
            throw new LitePalSupportException(e.getMessage(), e);
        }
    }

    private int deleteAllCascade(Class<?> cls, String... strArr) {
        int i = 0;
        for (String str : getForeignKeyTableToDelete()) {
            String tableName = getTableName(cls);
            String foreignKeyColumnName = getForeignKeyColumnName(tableName);
            StringBuilder sb = new StringBuilder();
            sb.append(foreignKeyColumnName);
            sb.append(" in (select id from ");
            sb.append(tableName);
            if (strArr != null && strArr.length > 0) {
                sb.append(" where ");
                sb.append(buildConditionString(strArr));
            }
            sb.append(")");
            i += this.mDatabase.delete(str, BaseUtility.changeCase(sb.toString()), null);
        }
        return i;
    }

    private int deleteAssociatedForeignKeyRows(LitePalSupport litePalSupport) {
        int i = 0;
        for (String str : litePalSupport.getAssociatedModelsMapWithFK().keySet()) {
            String foreignKeyColumnName = getForeignKeyColumnName(litePalSupport.getTableName());
            SQLiteDatabase sQLiteDatabase = this.mDatabase;
            StringBuilder m1025while = Cgoto.m1025while(foreignKeyColumnName, " = ");
            m1025while.append(litePalSupport.getBaseObjId());
            i += sQLiteDatabase.delete(str, m1025while.toString(), null);
        }
        return i;
    }

    private int deleteAssociatedJoinTableRows(LitePalSupport litePalSupport) {
        int i = 0;
        for (String str : litePalSupport.getAssociatedModelsMapForJoinTable().keySet()) {
            String intermediateTableName = DBUtility.getIntermediateTableName(litePalSupport.getTableName(), str);
            String foreignKeyColumnName = getForeignKeyColumnName(litePalSupport.getTableName());
            SQLiteDatabase sQLiteDatabase = this.mDatabase;
            StringBuilder m1025while = Cgoto.m1025while(foreignKeyColumnName, " = ");
            m1025while.append(litePalSupport.getBaseObjId());
            i += sQLiteDatabase.delete(intermediateTableName, m1025while.toString(), null);
        }
        return i;
    }

    private int deleteCascade(Class<?> cls, long j) {
        int i = 0;
        for (String str : getForeignKeyTableToDelete()) {
            String foreignKeyColumnName = getForeignKeyColumnName(getTableName(cls));
            SQLiteDatabase sQLiteDatabase = this.mDatabase;
            i += sQLiteDatabase.delete(str, foreignKeyColumnName + " = " + j, null);
        }
        return i;
    }

    private void deleteGenericData(Class<?> cls, List<Field> list, long... jArr) {
        int i;
        for (Field field : list) {
            String genericTableName = DBUtility.getGenericTableName(cls.getName(), field.getName());
            String genericValueIdColumnName = DBUtility.getGenericValueIdColumnName(cls.getName());
            int length = jArr.length;
            int i2 = (length - 1) / 500;
            int i3 = 0;
            while (i3 <= i2) {
                StringBuilder sb = new StringBuilder();
                int i4 = 500 * i3;
                boolean z = false;
                while (true) {
                    i = i3 + 1;
                    if (i4 >= 500 * i || i4 >= length) {
                        break;
                    }
                    long j = jArr[i4];
                    if (z) {
                        sb.append(" or ");
                    }
                    sb.append(genericValueIdColumnName);
                    sb.append(" = ");
                    sb.append(j);
                    i4++;
                    z = true;
                }
                if (!TextUtils.isEmpty(sb.toString())) {
                    this.mDatabase.delete(genericTableName, sb.toString(), null);
                }
                i3 = i;
            }
        }
    }

    private List<String> getForeignKeyTableToDelete() {
        if (this.foreignKeyTableToDelete == null) {
            this.foreignKeyTableToDelete = new ArrayList();
        }
        return this.foreignKeyTableToDelete;
    }

    public int onDelete(LitePalSupport litePalSupport) {
        if (litePalSupport.isSaved()) {
            deleteGenericData(litePalSupport.getClass(), getSupportedGenericFields(litePalSupport.getClassName()), litePalSupport.getBaseObjId());
            Collection<AssociationsInfo> analyzeAssociations = analyzeAssociations(litePalSupport);
            int deleteCascade = deleteCascade(litePalSupport);
            SQLiteDatabase sQLiteDatabase = this.mDatabase;
            String tableName = litePalSupport.getTableName();
            StringBuilder m1016super = Cgoto.m1016super("id = ");
            m1016super.append(litePalSupport.getBaseObjId());
            int delete = sQLiteDatabase.delete(tableName, m1016super.toString(), null) + deleteCascade;
            clearAssociatedModelSaveState(litePalSupport, analyzeAssociations);
            return delete;
        }
        return 0;
    }

    public int onDeleteAll(String str, String... strArr) {
        BaseUtility.checkConditionsCorrect(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = DBUtility.convertWhereClauseToColumnName(strArr[0]);
        }
        return this.mDatabase.delete(str, getWhereClause(strArr), getWhereArgs(strArr));
    }

    private int deleteCascade(LitePalSupport litePalSupport) {
        return deleteAssociatedForeignKeyRows(litePalSupport) + deleteAssociatedJoinTableRows(litePalSupport);
    }

    public int onDeleteAll(Class<?> cls, String... strArr) {
        BaseUtility.checkConditionsCorrect(strArr);
        if (strArr != null && strArr.length > 0) {
            strArr[0] = DBUtility.convertWhereClauseToColumnName(strArr[0]);
        }
        List<Field> supportedGenericFields = getSupportedGenericFields(cls.getName());
        if (!supportedGenericFields.isEmpty()) {
            List find = Operator.select("id").where(strArr).find(cls);
            if (find.size() > 0) {
                int size = find.size();
                long[] jArr = new long[size];
                for (int i = 0; i < size; i++) {
                    jArr[i] = ((LitePalSupport) find.get(i)).getBaseObjId();
                }
                deleteGenericData(cls, supportedGenericFields, jArr);
            }
        }
        analyzeAssociations(cls);
        int deleteAllCascade = deleteAllCascade(cls, strArr) + this.mDatabase.delete(getTableName(cls), getWhereClause(strArr), getWhereArgs(strArr));
        getForeignKeyTableToDelete().clear();
        return deleteAllCascade;
    }

    public int onDelete(Class<?> cls, long j) {
        deleteGenericData(cls, getSupportedGenericFields(cls.getName()), j);
        analyzeAssociations(cls);
        int delete = this.mDatabase.delete(getTableName(cls), Cgoto.m1000for("id = ", j), null) + deleteCascade(cls, j);
        getForeignKeyTableToDelete().clear();
        return delete;
    }

    private Collection<AssociationsInfo> analyzeAssociations(LitePalSupport litePalSupport) {
        try {
            Collection<AssociationsInfo> associationInfo = getAssociationInfo(litePalSupport.getClassName());
            analyzeAssociatedModels(litePalSupport, associationInfo);
            return associationInfo;
        } catch (Exception e) {
            throw new LitePalSupportException(e.getMessage(), e);
        }
    }
}
