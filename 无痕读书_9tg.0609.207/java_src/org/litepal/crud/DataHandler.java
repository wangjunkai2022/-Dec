package org.litepal.crud;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.SparseArray;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cgoto;
import com.baidu.tts.client.SpeechSynthesizer;
import com.umeng.analytics.pro.ak;
import com.umeng.analytics.pro.ao;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.litepal.LitePalBase;
import org.litepal.Operator;
import org.litepal.annotation.Column;
import org.litepal.annotation.Encrypt;
import org.litepal.crud.model.AssociationsInfo;
import org.litepal.exceptions.DatabaseGenerateException;
import org.litepal.exceptions.LitePalSupportException;
import org.litepal.tablemanager.model.GenericModel;
import org.litepal.util.BaseUtility;
import org.litepal.util.DBUtility;
import org.litepal.util.cipher.CipherUtil;
/* loaded from: classes7.dex */
public abstract class DataHandler extends LitePalBase {
    public static final String TAG = "DataHandler";
    public List<AssociationsInfo> fkInCurrentModel;
    public List<AssociationsInfo> fkInOtherModel;
    public SQLiteDatabase mDatabase;
    public LitePalSupport tempEmptyModel;

    /* loaded from: classes7.dex */
    public static class QueryInfoCache {
        public Field field;
        public String getMethodName;
    }

    private void analyzeAssociations(String str) {
        Collection<AssociationsInfo> associationInfo = getAssociationInfo(str);
        List<AssociationsInfo> list = this.fkInCurrentModel;
        if (list == null) {
            this.fkInCurrentModel = new ArrayList();
        } else {
            list.clear();
        }
        List<AssociationsInfo> list2 = this.fkInOtherModel;
        if (list2 == null) {
            this.fkInOtherModel = new ArrayList();
        } else {
            list2.clear();
        }
        for (AssociationsInfo associationsInfo : associationInfo) {
            if (associationsInfo.getAssociationType() != 2 && associationsInfo.getAssociationType() != 1) {
                if (associationsInfo.getAssociationType() == 3) {
                    this.fkInOtherModel.add(associationsInfo);
                }
            } else if (associationsInfo.getClassHoldsForeignKey().equals(str)) {
                this.fkInCurrentModel.add(associationsInfo);
            } else {
                this.fkInOtherModel.add(associationsInfo);
            }
        }
    }

    private String genGetColumnMethod(Field field) {
        Class<?> type;
        if (isCollection(field.getType())) {
            type = getGenericTypeClass(field);
        } else {
            type = field.getType();
        }
        return genGetColumnMethod(type);
    }

    private String[] getCustomizedColumns(String[] strArr, List<Field> list, List<AssociationsInfo> list2) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        for (Field field : list) {
            arrayList2.add(field.getName());
        }
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            String str = (String) arrayList.get(i);
            if (BaseUtility.containsIgnoreCases(arrayList2, str)) {
                arrayList3.add(Integer.valueOf(i));
            } else if (isIdColumn(str)) {
                if (ao.d.equalsIgnoreCase(str)) {
                    arrayList.set(i, BaseUtility.changeCase("id"));
                }
                z = true;
            }
        }
        for (int size = arrayList3.size() - 1; size >= 0; size--) {
            arrayList4.add((String) arrayList.remove(((Integer) arrayList3.get(size)).intValue()));
        }
        for (Field field2 : list) {
            if (BaseUtility.containsIgnoreCases(arrayList4, field2.getName())) {
                arrayList5.add(field2);
            }
        }
        list.clear();
        list.addAll(arrayList5);
        if (list2 != null && list2.size() > 0) {
            for (int i2 = 0; i2 < list2.size(); i2++) {
                arrayList.add(getForeignKeyColumnName(DBUtility.getTableNameByClassName(list2.get(i2).getAssociatedClassName())));
            }
        }
        if (!z) {
            arrayList.add(BaseUtility.changeCase("id"));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    private Object getInitParamValue(Class<?> cls, Class<?> cls2) {
        String name = cls2.getName();
        if (!"boolean".equals(name) && !"java.lang.Boolean".equals(name)) {
            if (!"float".equals(name) && !"java.lang.Float".equals(name)) {
                if (!"double".equals(name) && !"java.lang.Double".equals(name)) {
                    if (!"int".equals(name) && !"java.lang.Integer".equals(name)) {
                        if (!"long".equals(name) && !"java.lang.Long".equals(name)) {
                            if (!"short".equals(name) && !"java.lang.Short".equals(name)) {
                                if (!"char".equals(name) && !"java.lang.Character".equals(name)) {
                                    if ("[B".equals(name) || "[Ljava.lang.Byte;".equals(name)) {
                                        return new byte[0];
                                    }
                                    if ("java.lang.String".equals(name)) {
                                        return "";
                                    }
                                    if (cls == cls2) {
                                        return null;
                                    }
                                    return createInstanceFromClass(cls2);
                                }
                                return ' ';
                            }
                            return 0;
                        }
                        return 0L;
                    }
                    return 0;
                }
                return Double.valueOf(0.0d);
            }
            return Float.valueOf(0.0f);
        }
        return Boolean.FALSE;
    }

    private Class<?> getObjectType(Class<?> cls) {
        if (cls == null || !cls.isPrimitive()) {
            return null;
        }
        String name = cls.getName();
        char c = 65535;
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    c = 4;
                    break;
                }
                break;
            case 104431:
                if (name.equals("int")) {
                    c = 0;
                    break;
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    c = 6;
                    break;
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                    c = 2;
                    break;
                }
                break;
            case 64711720:
                if (name.equals("boolean")) {
                    c = 5;
                    break;
                }
                break;
            case 97526364:
                if (name.equals("float")) {
                    c = 3;
                    break;
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return Integer.class;
            case 1:
                return Short.class;
            case 2:
                return Long.class;
            case 3:
                return Float.class;
            case 4:
                return Double.class;
            case 5:
                return Boolean.class;
            case 6:
                return Character.class;
            default:
                return null;
        }
    }

    private boolean isCharType(Field field) {
        String name = field.getType().getName();
        return name.equals("char") || name.endsWith("Character");
    }

    private boolean isFieldWithDefaultValue(LitePalSupport litePalSupport, Field field) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        LitePalSupport emptyModel = getEmptyModel(litePalSupport);
        Object fieldValue = getFieldValue(litePalSupport, field);
        Object fieldValue2 = getFieldValue(emptyModel, field);
        if (fieldValue == null || fieldValue2 == null) {
            return fieldValue == fieldValue2;
        }
        return fieldValue.toString().equals(fieldValue2.toString());
    }

    private boolean isPrimitiveBooleanType(Field field) {
        return "boolean".equals(field.getType().getName());
    }

    private boolean isSaving() {
        return SaveHandler.class.getName().equals(getClass().getName());
    }

    private boolean isUpdating() {
        return UpdateHandler.class.getName().equals(getClass().getName());
    }

    private void putFieldsValueDependsOnSaveOrUpdate(LitePalSupport litePalSupport, Field field, ContentValues contentValues) throws SecurityException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        if (isUpdating()) {
            if (isFieldWithDefaultValue(litePalSupport, field)) {
                return;
            }
            putContentValuesForUpdate(litePalSupport, field, contentValues);
        } else if (isSaving()) {
            putContentValuesForSave(litePalSupport, field, contentValues);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0166 A[LOOP:1: B:21:0x00e3->B:42:0x0166, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0181 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x000d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x015f A[EDGE_INSN: B:80:0x015f->B:40:0x015f ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setAssociatedModel(org.litepal.crud.LitePalSupport r27) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.crud.DataHandler.setAssociatedModel(org.litepal.crud.LitePalSupport):void");
    }

    private void setToModelByReflection(Object obj, Field field, int i, String str, Cursor cursor) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        Class<?> cls = cursor.getClass();
        if (cursor.isNull(i)) {
            return;
        }
        Object invoke = cls.getMethod(str, Integer.TYPE).invoke(cursor, Integer.valueOf(i));
        if (field.getType() != Boolean.TYPE && field.getType() != Boolean.class) {
            if (field.getType() != Character.TYPE && field.getType() != Character.class) {
                if (field.getType() == Date.class) {
                    long longValue = ((Long) invoke).longValue();
                    invoke = longValue == RecyclerView.FOREVER_NS ? null : new Date(longValue);
                }
            } else {
                invoke = Character.valueOf(((String) invoke).charAt(0));
            }
        } else if (SpeechSynthesizer.REQUEST_DNS_OFF.equals(String.valueOf(invoke))) {
            invoke = Boolean.FALSE;
        } else if ("1".equals(String.valueOf(invoke))) {
            invoke = Boolean.TRUE;
        }
        if (isCollection(field.getType())) {
            Collection collection = (Collection) DynamicExecutor.getField(obj, field.getName(), obj.getClass());
            if (collection == null) {
                if (isList(field.getType())) {
                    collection = new ArrayList();
                } else {
                    collection = new HashSet();
                }
                DynamicExecutor.setField(obj, field.getName(), collection, obj.getClass());
            }
            String genericTypeName = getGenericTypeName(field);
            if ("java.lang.String".equals(genericTypeName)) {
                Encrypt encrypt = (Encrypt) field.getAnnotation(Encrypt.class);
                if (encrypt != null) {
                    invoke = decryptValue(encrypt.algorithm(), invoke);
                }
            } else if (obj.getClass().getName().equals(genericTypeName) && ((invoke instanceof Long) || (invoke instanceof Integer))) {
                invoke = Operator.find(obj.getClass(), ((Long) invoke).longValue());
            }
            collection.add(invoke);
            return;
        }
        Encrypt encrypt2 = (Encrypt) field.getAnnotation(Encrypt.class);
        if (encrypt2 != null && "java.lang.String".equals(field.getType().getName())) {
            invoke = decryptValue(encrypt2.algorithm(), invoke);
        }
        DynamicExecutor.setField(obj, field.getName(), invoke, obj.getClass());
    }

    public void analyzeAssociatedModels(LitePalSupport litePalSupport, Collection<AssociationsInfo> collection) {
        try {
            for (AssociationsInfo associationsInfo : collection) {
                if (associationsInfo.getAssociationType() == 2) {
                    new Many2OneAnalyzer().analyze(litePalSupport, associationsInfo);
                } else if (associationsInfo.getAssociationType() == 1) {
                    new One2OneAnalyzer().analyze(litePalSupport, associationsInfo);
                } else if (associationsInfo.getAssociationType() == 3) {
                    new Many2ManyAnalyzer().analyze(litePalSupport, associationsInfo);
                }
            }
        } catch (Exception e) {
            throw new LitePalSupportException(e.getMessage(), e);
        }
    }

    public Object createInstanceFromClass(Class<?> cls) {
        try {
            Constructor<?> findBestSuitConstructor = findBestSuitConstructor(cls);
            return findBestSuitConstructor.newInstance(getConstructorParams(cls, findBestSuitConstructor));
        } catch (Exception e) {
            throw new LitePalSupportException(e.getMessage(), e);
        }
    }

    public Object decryptValue(String str, Object obj) {
        return (str == null || obj == null || !LitePalSupport.AES.equalsIgnoreCase(str)) ? obj : CipherUtil.aesDecrypt((String) obj);
    }

    public Object encryptValue(String str, Object obj) {
        if (str == null || obj == null) {
            return obj;
        }
        if (LitePalSupport.AES.equalsIgnoreCase(str)) {
            return CipherUtil.aesEncrypt((String) obj);
        }
        return LitePalSupport.MD5.equalsIgnoreCase(str) ? CipherUtil.md5Encrypt((String) obj) : obj;
    }

    public Constructor<?> findBestSuitConstructor(Class<?> cls) {
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        if (declaredConstructors.length != 0) {
            Constructor<?> constructor = null;
            int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            int length = declaredConstructors.length;
            int i2 = 0;
            while (true) {
                boolean z = true;
                if (i2 >= length) {
                    break;
                }
                Constructor<?> constructor2 = declaredConstructors[i2];
                Class<?>[] parameterTypes = constructor2.getParameterTypes();
                for (Class<?> cls2 : parameterTypes) {
                    if (cls2 == cls || (cls2.getName().startsWith("com.android") && cls2.getName().endsWith("InstantReloadException"))) {
                        z = false;
                        break;
                    }
                }
                if (z && parameterTypes.length < i) {
                    i = parameterTypes.length;
                    constructor = constructor2;
                }
                i2++;
            }
            if (constructor != null) {
                constructor.setAccessible(true);
                return constructor;
            }
            StringBuilder sb = new StringBuilder(cls.getName());
            sb.append(" has no suited constructor to new instance. Constructors defined in class:");
            for (Constructor<?> constructor3 : declaredConstructors) {
                sb.append("\n");
                sb.append(constructor3.toString());
            }
            throw new LitePalSupportException(sb.toString());
        }
        throw new LitePalSupportException(cls.getName() + " has no constructor. LitePal could not handle it");
    }

    public LitePalSupport getAssociatedModel(LitePalSupport litePalSupport, AssociationsInfo associationsInfo) throws SecurityException, IllegalArgumentException, IllegalAccessException {
        return (LitePalSupport) getFieldValue(litePalSupport, associationsInfo.getAssociateOtherModelFromSelf());
    }

    public Collection<LitePalSupport> getAssociatedModels(LitePalSupport litePalSupport, AssociationsInfo associationsInfo) throws SecurityException, IllegalArgumentException, IllegalAccessException {
        return (Collection) getFieldValue(litePalSupport, associationsInfo.getAssociateOtherModelFromSelf());
    }

    public Object[] getConstructorParams(Class<?> cls, Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            objArr[i] = getInitParamValue(cls, parameterTypes[i]);
        }
        return objArr;
    }

    public LitePalSupport getEmptyModel(LitePalSupport litePalSupport) {
        LitePalSupport litePalSupport2 = this.tempEmptyModel;
        if (litePalSupport2 != null) {
            return litePalSupport2;
        }
        String str = null;
        try {
            str = litePalSupport.getClassName();
            LitePalSupport litePalSupport3 = (LitePalSupport) Class.forName(str).newInstance();
            this.tempEmptyModel = litePalSupport3;
            return litePalSupport3;
        } catch (ClassNotFoundException unused) {
            throw new DatabaseGenerateException(Cgoto.m989case(DatabaseGenerateException.CLASS_NOT_FOUND, str));
        } catch (InstantiationException e) {
            throw new LitePalSupportException(Cgoto.m989case(str, LitePalSupportException.INSTANTIATION_EXCEPTION), e);
        } catch (Exception e2) {
            throw new LitePalSupportException(e2.getMessage(), e2);
        }
    }

    public Object getFieldValue(LitePalSupport litePalSupport, Field field) throws SecurityException, IllegalArgumentException, IllegalAccessException {
        if (shouldGetOrSet(litePalSupport, field)) {
            return DynamicExecutor.getField(litePalSupport, field.getName(), litePalSupport.getClass());
        }
        return null;
    }

    public List<AssociationsInfo> getForeignKeyAssociations(String str, boolean z) {
        if (z) {
            analyzeAssociations(str);
            return this.fkInCurrentModel;
        }
        return null;
    }

    public String getIntermediateTableName(LitePalSupport litePalSupport, String str) {
        return BaseUtility.changeCase(DBUtility.getIntermediateTableName(litePalSupport.getTableName(), str));
    }

    public Class<?>[] getParameterTypes(Field field, Object obj, Object[] objArr) {
        Class<?>[] clsArr;
        if (isCharType(field)) {
            objArr[1] = String.valueOf(obj);
            return new Class[]{String.class, String.class};
        }
        if (field.getType().isPrimitive()) {
            clsArr = new Class[]{String.class, getObjectType(field.getType())};
        } else if ("java.util.Date".equals(field.getType().getName())) {
            return new Class[]{String.class, Long.class};
        } else {
            clsArr = new Class[]{String.class, field.getType()};
        }
        return clsArr;
    }

    public String getTableName(Class<?> cls) {
        return BaseUtility.changeCase(DBUtility.getTableNameByClassName(cls.getName()));
    }

    public String[] getWhereArgs(String... strArr) {
        if (isAffectAllLines(strArr) || strArr == null || strArr.length <= 1) {
            return null;
        }
        String[] strArr2 = new String[strArr.length - 1];
        System.arraycopy(strArr, 1, strArr2, 0, strArr.length - 1);
        return strArr2;
    }

    public String getWhereClause(String... strArr) {
        if (isAffectAllLines(strArr) || strArr == null || strArr.length <= 0) {
            return null;
        }
        return strArr[0];
    }

    public String getWhereOfIdsWithOr(Collection<Long> collection) {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (Long l : collection) {
            long longValue = l.longValue();
            if (z) {
                sb.append(" or ");
            }
            z = true;
            sb.append("id = ");
            sb.append(longValue);
        }
        return BaseUtility.changeCase(sb.toString());
    }

    public void giveBaseObjIdValue(LitePalSupport litePalSupport, long j) throws SecurityException, NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        if (j > 0) {
            DynamicExecutor.set(litePalSupport, "baseObjId", Long.valueOf(j), LitePalSupport.class);
        }
    }

    public boolean isAffectAllLines(Object... objArr) {
        return objArr != null && objArr.length == 0;
    }

    public String makeGetterMethodName(Field field) {
        String str;
        String name = field.getName();
        if (isPrimitiveBooleanType(field)) {
            if (name.matches("^is[A-Z]{1}.*$")) {
                name = name.substring(2);
            }
            str = ak.ae;
        } else {
            str = "get";
        }
        if (name.matches("^[a-z]{1}[A-Z]{1}.*")) {
            return Cgoto.m989case(str, name);
        }
        StringBuilder m1016super = Cgoto.m1016super(str);
        m1016super.append(BaseUtility.capitalize(name));
        return m1016super.toString();
    }

    public String makeSetterMethodName(Field field) {
        if (isPrimitiveBooleanType(field) && field.getName().matches("^is[A-Z]{1}.*$")) {
            StringBuilder m1016super = Cgoto.m1016super("set");
            m1016super.append(field.getName().substring(2));
            return m1016super.toString();
        } else if (field.getName().matches("^[a-z]{1}[A-Z]{1}.*")) {
            StringBuilder m1016super2 = Cgoto.m1016super("set");
            m1016super2.append(field.getName());
            return m1016super2.toString();
        } else {
            StringBuilder m1016super3 = Cgoto.m1016super("set");
            m1016super3.append(BaseUtility.capitalize(field.getName()));
            return m1016super3.toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public <T> T mathQuery(String str, String[] strArr, String[] strArr2, Class<T> cls) {
        Cursor query;
        BaseUtility.checkConditionsCorrect(strArr2);
        T t = null;
        try {
            try {
                query = this.mDatabase.query(str, strArr, getWhereClause(strArr2), getWhereArgs(strArr2), null, null, null);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (query.moveToFirst()) {
                t = (T) query.getClass().getMethod(genGetColumnMethod((Class<?>) cls), Integer.TYPE).invoke(query, 0);
            }
            query.close();
            return t;
        } catch (Exception e2) {
            e = e2;
            t = (T) query;
            throw new LitePalSupportException(e.getMessage(), e);
        } catch (Throwable th2) {
            th = th2;
            t = query;
            if (t != 0) {
                t.close();
            }
            throw th;
        }
    }

    public void putContentValuesForSave(LitePalSupport litePalSupport, Field field, ContentValues contentValues) throws SecurityException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        Object fieldValue = getFieldValue(litePalSupport, field);
        if ("java.util.Date".equals(field.getType().getName())) {
            if (fieldValue != null) {
                fieldValue = Long.valueOf(((Date) fieldValue).getTime());
            } else {
                Column column = (Column) field.getAnnotation(Column.class);
                if (column != null) {
                    String defaultValue = column.defaultValue();
                    if (!defaultValue.isEmpty()) {
                        try {
                            fieldValue = Long.valueOf(Long.parseLong(defaultValue));
                        } catch (NumberFormatException unused) {
                            String str = field + " in " + litePalSupport.getClass() + " with invalid defaultValue. So we use null instead";
                        }
                    }
                }
                if (fieldValue == null) {
                    fieldValue = Long.valueOf((long) RecyclerView.FOREVER_NS);
                }
            }
        }
        if (fieldValue != null) {
            Encrypt encrypt = (Encrypt) field.getAnnotation(Encrypt.class);
            if (encrypt != null && "java.lang.String".equals(field.getType().getName())) {
                fieldValue = encryptValue(encrypt.algorithm(), fieldValue);
            }
            Object[] objArr = {BaseUtility.changeCase(DBUtility.convertToValidColumnName(field.getName())), fieldValue};
            DynamicExecutor.send(contentValues, "put", objArr, contentValues.getClass(), getParameterTypes(field, fieldValue, objArr));
        }
    }

    public void putContentValuesForUpdate(LitePalSupport litePalSupport, Field field, ContentValues contentValues) throws SecurityException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        Object fieldValue = getFieldValue(litePalSupport, field);
        if ("java.util.Date".equals(field.getType().getName())) {
            if (fieldValue != null) {
                fieldValue = Long.valueOf(((Date) fieldValue).getTime());
            } else {
                fieldValue = Long.valueOf((long) RecyclerView.FOREVER_NS);
            }
        }
        Encrypt encrypt = (Encrypt) field.getAnnotation(Encrypt.class);
        if (encrypt != null && "java.lang.String".equals(field.getType().getName())) {
            fieldValue = encryptValue(encrypt.algorithm(), fieldValue);
        }
        Object[] objArr = {BaseUtility.changeCase(DBUtility.convertToValidColumnName(field.getName())), fieldValue};
        DynamicExecutor.send(contentValues, "put", objArr, contentValues.getClass(), getParameterTypes(field, fieldValue, objArr));
    }

    public void putFieldsValue(LitePalSupport litePalSupport, List<Field> list, ContentValues contentValues) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        for (Field field : list) {
            if (!isIdColumn(field.getName())) {
                putFieldsValueDependsOnSaveOrUpdate(litePalSupport, field, contentValues);
            }
        }
    }

    public <T> List<T> query(Class<T> cls, String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5, List<AssociationsInfo> list) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                List<Field> supportedFields = getSupportedFields(cls.getName());
                List<Field> supportedGenericFields = getSupportedGenericFields(cls.getName());
                String[] convertSelectClauseToValidNames = DBUtility.convertSelectClauseToValidNames(getCustomizedColumns(strArr, supportedGenericFields, list));
                cursor = this.mDatabase.query(getTableName(cls), convertSelectClauseToValidNames, str, strArr2, str2, str3, str4, str5);
                if (cursor.moveToFirst()) {
                    SparseArray<QueryInfoCache> sparseArray = new SparseArray<>();
                    HashMap hashMap = new HashMap();
                    do {
                        Object createInstanceFromClass = createInstanceFromClass(cls);
                        giveBaseObjIdValue((LitePalSupport) createInstanceFromClass, cursor.getLong(cursor.getColumnIndexOrThrow("id")));
                        setValueToModel(createInstanceFromClass, supportedFields, list, cursor, sparseArray);
                        setGenericValueToModel((LitePalSupport) createInstanceFromClass, supportedGenericFields, hashMap);
                        if (list != null) {
                            setAssociatedModel((LitePalSupport) createInstanceFromClass);
                        }
                        arrayList.add(createInstanceFromClass);
                    } while (cursor.moveToNext());
                    sparseArray.clear();
                    hashMap.clear();
                }
                cursor.close();
                return arrayList;
            } catch (Exception e) {
                throw new LitePalSupportException(e.getMessage(), e);
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public void setFieldValue(LitePalSupport litePalSupport, Field field, Object obj) throws SecurityException, IllegalArgumentException, IllegalAccessException {
        if (shouldGetOrSet(litePalSupport, field)) {
            DynamicExecutor.setField(litePalSupport, field.getName(), obj, litePalSupport.getClass());
        }
    }

    public void setGenericValueToModel(LitePalSupport litePalSupport, List<Field> list, Map<Field, GenericModel> map) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        String tableName;
        String valueIdColumnName;
        String getMethodName;
        String str;
        String convertToValidColumnName;
        String genGetColumnMethod;
        for (Field field : list) {
            Cursor cursor = null;
            GenericModel genericModel = map.get(field);
            if (genericModel == null) {
                if (litePalSupport.getClassName().equals(getGenericTypeName(field))) {
                    convertToValidColumnName = DBUtility.getM2MSelfRefColumnName(field);
                    genGetColumnMethod = "getLong";
                } else {
                    convertToValidColumnName = DBUtility.convertToValidColumnName(field.getName());
                    genGetColumnMethod = genGetColumnMethod(field);
                }
                tableName = DBUtility.getGenericTableName(litePalSupport.getClassName(), field.getName());
                valueIdColumnName = DBUtility.getGenericValueIdColumnName(litePalSupport.getClassName());
                GenericModel genericModel2 = new GenericModel();
                genericModel2.setTableName(tableName);
                genericModel2.setValueColumnName(convertToValidColumnName);
                genericModel2.setValueIdColumnName(valueIdColumnName);
                genericModel2.setGetMethodName(genGetColumnMethod);
                map.put(field, genericModel2);
                str = convertToValidColumnName;
                getMethodName = genGetColumnMethod;
            } else {
                tableName = genericModel.getTableName();
                String valueColumnName = genericModel.getValueColumnName();
                valueIdColumnName = genericModel.getValueIdColumnName();
                getMethodName = genericModel.getGetMethodName();
                str = valueColumnName;
            }
            String str2 = tableName;
            try {
                SQLiteDatabase sQLiteDatabase = this.mDatabase;
                Cursor query = sQLiteDatabase.query(str2, null, valueIdColumnName + " = ?", new String[]{String.valueOf(litePalSupport.getBaseObjId())}, null, null, null);
                try {
                    if (query.moveToFirst()) {
                        do {
                            int columnIndex = query.getColumnIndex(BaseUtility.changeCase(str));
                            if (columnIndex != -1) {
                                setToModelByReflection(litePalSupport, field, columnIndex, getMethodName, query);
                            }
                        } while (query.moveToNext());
                    }
                    query.close();
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public void setValueToModel(Object obj, List<Field> list, List<AssociationsInfo> list2, Cursor cursor, SparseArray<QueryInfoCache> sparseArray) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        int size = sparseArray.size();
        if (size > 0) {
            for (int i = 0; i < size; i++) {
                int keyAt = sparseArray.keyAt(i);
                QueryInfoCache queryInfoCache = sparseArray.get(keyAt);
                setToModelByReflection(obj, queryInfoCache.field, keyAt, queryInfoCache.getMethodName, cursor);
            }
        } else {
            for (Field field : list) {
                String genGetColumnMethod = genGetColumnMethod(field);
                int columnIndex = cursor.getColumnIndex(BaseUtility.changeCase(isIdColumn(field.getName()) ? "id" : DBUtility.convertToValidColumnName(field.getName())));
                if (columnIndex != -1) {
                    setToModelByReflection(obj, field, columnIndex, genGetColumnMethod, cursor);
                    QueryInfoCache queryInfoCache2 = new QueryInfoCache();
                    queryInfoCache2.getMethodName = genGetColumnMethod;
                    queryInfoCache2.field = field;
                    sparseArray.put(columnIndex, queryInfoCache2);
                }
            }
        }
        if (list2 != null) {
            for (AssociationsInfo associationsInfo : list2) {
                int columnIndex2 = cursor.getColumnIndex(getForeignKeyColumnName(DBUtility.getTableNameByClassName(associationsInfo.getAssociatedClassName())));
                if (columnIndex2 != -1) {
                    try {
                        LitePalSupport litePalSupport = (LitePalSupport) Operator.find(Class.forName(associationsInfo.getAssociatedClassName()), cursor.getLong(columnIndex2));
                        if (litePalSupport != null) {
                            setFieldValue((LitePalSupport) obj, associationsInfo.getAssociateOtherModelFromSelf(), litePalSupport);
                        }
                    } catch (ClassNotFoundException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public boolean shouldGetOrSet(LitePalSupport litePalSupport, Field field) {
        return (litePalSupport == null || field == null) ? false : true;
    }

    private String genGetColumnMethod(Class<?> cls) {
        String simpleName;
        if (cls.isPrimitive()) {
            simpleName = BaseUtility.capitalize(cls.getName());
        } else {
            simpleName = cls.getSimpleName();
        }
        String m989case = Cgoto.m989case("get", simpleName);
        char c = 65535;
        switch (m989case.hashCode()) {
            case -1300054776:
                if (m989case.equals("getInteger")) {
                    c = 1;
                    break;
                }
                break;
            case -75629620:
                if (m989case.equals("getChar")) {
                    c = 2;
                    break;
                }
                break;
            case -75605980:
                if (m989case.equals("getDate")) {
                    c = 4;
                    break;
                }
                break;
            case 1101572082:
                if (m989case.equals("getBoolean")) {
                    c = 0;
                    break;
                }
                break;
            case 1554590835:
                if (m989case.equals("getCharacter")) {
                    c = 3;
                    break;
                }
                break;
        }
        return (c == 0 || c == 1) ? "getInt" : (c == 2 || c == 3) ? "getString" : c != 4 ? m989case : "getLong";
    }

    public String getWhereOfIdsWithOr(long... jArr) {
        StringBuilder sb = new StringBuilder();
        int length = jArr.length;
        int i = 0;
        boolean z = false;
        while (i < length) {
            long j = jArr[i];
            if (z) {
                sb.append(" or ");
            }
            sb.append("id = ");
            sb.append(j);
            i++;
            z = true;
        }
        return BaseUtility.changeCase(sb.toString());
    }
}
