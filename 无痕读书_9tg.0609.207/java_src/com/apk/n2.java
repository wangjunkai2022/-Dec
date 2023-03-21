package com.apk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Looper;
import android.text.Html;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.BookChapter;
import com.biquge.ebook.app.bean.BookMark;
import com.biquge.ebook.app.bean.CacheFailedBean;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.DownloadProgress;
import com.biquge.ebook.app.bean.ReadFootprint;
import com.biquge.ebook.app.bean.TaskInfo;
import com.biquge.ebook.app.bean.webread.WebChapterBatchBean;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import com.hjq.toast.ToastUtils;
import com.manhua.data.bean.ComicCollectBean;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
import org.litepal.LitePal;
import org.litepal.Operator;
import org.litepal.annotation.Column;
import org.litepal.annotation.Encrypt;
import org.litepal.crud.LitePalSupport;
import org.litepal.exceptions.DatabaseGenerateException;
import org.litepal.exceptions.LitePalSupportException;
import org.litepal.tablemanager.model.GenericModel;
import org.litepal.util.BaseUtility;
import org.litepal.util.DBUtility;
/* compiled from: ComicModel.java */
/* loaded from: classes8.dex */
public class n2 {
    public static void A(Object obj, String str, Object obj2, Class<?> cls) throws SecurityException, IllegalArgumentException, IllegalAccessException {
        if (cls != LitePalSupport.class && cls != Object.class) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                declaredField.set(obj, obj2);
                return;
            } catch (NoSuchFieldException unused) {
                A(obj, str, obj2, cls.getSuperclass());
                return;
            }
        }
        throw new LitePalSupportException(LitePalSupportException.noSuchFieldExceptioin(cls.getSimpleName(), str));
    }

    public static void B(Context context, String str, Object obj, String str2, List<Field> list, Map<Field, GenericModel> map) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        String tableName;
        String valueIdColumnName;
        String getMethodName;
        String str3;
        for (Field field : list) {
            Cursor cursor = null;
            GenericModel genericModel = map.get(field);
            if (genericModel == null) {
                if (obj.getClass().getName().equals(m1835static(field))) {
                    str3 = DBUtility.getM2MSelfRefColumnName(field);
                    getMethodName = "getLong";
                } else {
                    str3 = DBUtility.convertToValidColumnName(field.getName());
                    getMethodName = m1813const(field);
                }
                tableName = DBUtility.getGenericTableName(obj.getClass().getName(), field.getName());
                valueIdColumnName = DBUtility.getGenericValueIdColumnName(obj.getClass().getName());
                GenericModel genericModel2 = new GenericModel();
                genericModel2.setTableName(tableName);
                genericModel2.setValueColumnName(str3);
                genericModel2.setValueIdColumnName(valueIdColumnName);
                genericModel2.setGetMethodName(getMethodName);
                map.put(field, genericModel2);
            } else {
                tableName = genericModel.getTableName();
                String valueColumnName = genericModel.getValueColumnName();
                valueIdColumnName = genericModel.getValueIdColumnName();
                getMethodName = genericModel.getGetMethodName();
                str3 = valueColumnName;
            }
            try {
                Uri parse = Uri.parse("content://" + str + ".MyContentProvider/" + tableName);
                ContentResolver contentResolver = context.getContentResolver();
                StringBuilder sb = new StringBuilder();
                sb.append(valueIdColumnName);
                sb.append(" = ?");
                cursor = contentResolver.query(parse, null, sb.toString(), new String[]{str2}, null);
                if (cursor.moveToFirst()) {
                    do {
                        int columnIndex = cursor.getColumnIndex(BaseUtility.changeCase(str3));
                        if (columnIndex != -1) {
                            C(obj, field, columnIndex, getMethodName, cursor);
                        }
                    } while (cursor.moveToNext());
                }
                cursor.close();
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
    }

    public static void C(Object obj, Field field, int i, String str, Cursor cursor) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        Object invoke = cursor.getClass().getMethod(str, Integer.TYPE).invoke(cursor, Integer.valueOf(i));
        if (field.getType() != Boolean.TYPE && field.getType() != Boolean.class) {
            if (field.getType() != Character.TYPE && field.getType() != Character.class) {
                if (field.getType() == Date.class) {
                    long longValue = ((Long) invoke).longValue();
                    invoke = longValue <= 0 ? null : new Date(longValue);
                }
            } else {
                invoke = Character.valueOf(((String) invoke).charAt(0));
            }
        } else if (SpeechSynthesizer.REQUEST_DNS_OFF.equals(String.valueOf(invoke))) {
            invoke = Boolean.FALSE;
        } else if ("1".equals(String.valueOf(invoke))) {
            invoke = Boolean.TRUE;
        }
        if (j(field.getType())) {
            Collection collection = (Collection) m1833public(obj, field.getName(), obj.getClass());
            if (collection == null) {
                if (List.class.isAssignableFrom(field.getType())) {
                    collection = new ArrayList();
                } else {
                    collection = new HashSet();
                }
                A(obj, field.getName(), collection, obj.getClass());
            }
            String m1835static = m1835static(field);
            if ("java.lang.String".equals(m1835static)) {
                Encrypt encrypt = (Encrypt) field.getAnnotation(Encrypt.class);
                if (encrypt != null) {
                    encrypt.algorithm();
                }
            } else if (obj.getClass().getName().equals(m1835static) && ((invoke instanceof Long) || (invoke instanceof Integer))) {
                invoke = Operator.find(obj.getClass(), ((Long) invoke).longValue());
            }
            collection.add(invoke);
            return;
        }
        Encrypt encrypt2 = (Encrypt) field.getAnnotation(Encrypt.class);
        if (encrypt2 != null && "java.lang.String".equals(field.getType().getName())) {
            encrypt2.algorithm();
        }
        A(obj, field.getName(), invoke, obj.getClass());
    }

    public static void D(Object obj, List<Field> list, Cursor cursor) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        for (Field field : list) {
            String m1813const = m1813const(field);
            String name = field.getName();
            int columnIndex = cursor.getColumnIndex(BaseUtility.changeCase(com.umeng.analytics.pro.ao.d.equalsIgnoreCase(name) || "id".equalsIgnoreCase(name) ? "id" : DBUtility.convertToValidColumnName(field.getName())));
            if (columnIndex != -1) {
                C(obj, field, columnIndex, m1813const, cursor);
            }
        }
    }

    public static void E(String str, String str2, String str3, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("groupId", str2);
        contentValues.put("groupTitle", str3);
        if (z) {
            contentValues.put("saveTime", String.valueOf(System.currentTimeMillis()));
        }
        LitePal.updateAll(ComicCollectBean.class, contentValues, "collectId = ?", str);
    }

    public static void F(String str, String str2, String str3, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("groupId", str2);
        contentValues.put("groupTitle", str3);
        if (z) {
            contentValues.put("saveTime", String.valueOf(System.currentTimeMillis()));
        }
        LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", str);
    }

    public static void G(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", str2);
        LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", str);
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("name", str2);
        LitePal.updateAll(TaskInfo.class, contentValues2, "bookId = ?", str);
    }

    public static void H(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("stickTime", str2);
        contentValues.put("saveTime", str2);
        LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", str);
    }

    public static int a() {
        return ze.m3174instanceof("SP_LOGIN_CHECK_BS_SIZE_KEY", 10);
    }

    /* renamed from: abstract  reason: not valid java name */
    public static String m1808abstract(kn0 kn0Var, String str) {
        String m1845volatile = m1845volatile(kn0Var, str);
        return !TextUtils.isEmpty(m1845volatile) ? Html.fromHtml(m1845volatile).toString() : m1845volatile;
    }

    public static List<CollectBook> b() {
        return LitePal.order("saveTime desc").where("loginName != ? and readChapterId != ?", "", "").find(CollectBook.class);
    }

    /* renamed from: break  reason: not valid java name */
    public static Book m1809break(CollectBook collectBook) {
        Book book = new Book();
        book.setId(collectBook.getCollectId());
        book.setName(collectBook.getName());
        book.setImg(collectBook.getIcon());
        book.setCName(collectBook.getBookType());
        book.setAuthor(collectBook.getAuthor());
        book.setDesc(collectBook.getDesc());
        book.setLastChapterId(collectBook.getLastCapterId());
        book.setFirstChapterId(collectBook.getFirstChapterId());
        book.setWebSite(collectBook.isWebSite());
        return book;
    }

    public static List<Field> c(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            o(Class.forName(str), arrayList);
            return arrayList;
        } catch (ClassNotFoundException unused) {
            throw new DatabaseGenerateException(Cgoto.m989case(DatabaseGenerateException.CLASS_NOT_FOUND, str));
        }
    }

    /* renamed from: case  reason: not valid java name */
    public static boolean m1810case(Context context, boolean z, boolean z2, g1 g1Var) {
        int a2 = a();
        if (v0.m2736try().m2741const()) {
            if (m1839synchronized() >= a2 && !v0.m2736try().m2739catch()) {
                eg.k(context, null, ze.q(R.string.add_book_comple_password_tips_txt), ze.q(R.string.user_set_password), new o2(context), new p2(g1Var), null, false);
                return z2;
            }
        } else if (m1839synchronized() >= a2) {
            ze.d0(context, null, ze.r(R.string.not_login_add_shelf_book_max, Integer.valueOf(a())), ze.q(R.string.login_promptly_login_txt), new q2(context, z), null, null, false);
            return true;
        }
        return false;
    }

    /* renamed from: catch  reason: not valid java name */
    public static Book m1811catch(String str, String str2, String str3) {
        Book book = new Book();
        book.setId(str);
        book.setName(str2);
        book.setImg(str3);
        return book;
    }

    /* renamed from: class  reason: not valid java name */
    public static void m1812class(String[] strArr) {
        for (String str : strArr) {
            try {
                LitePal.deleteAll(CollectBook.class, "collectId = ?", str);
                o0.m1925else().m1926break(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                LitePal.deleteAll(ChapterBean.class, "novelId = ?", str);
                LitePal.deleteAll(CacheFailedBean.class, "novelId = ?", str);
                LitePal.deleteAll(BookMark.class, "chapterId = ?", str);
                LitePal.deleteAll(WebChapterBatchBean.class, "novelId = ?", str);
                DownloadProgress.removeDownloadProgress(w.m2858super(str));
                ReadFootprint.removeNovelFootprint(str);
            } catch (Exception e2) {
                try {
                    e2.printStackTrace();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            ze.m3173import(str);
            da.m437throws(str);
            da.m418default(str);
            TaskInfo taskInfo = (TaskInfo) LitePal.where("bookId = ?", str).findFirst(TaskInfo.class);
            if (taskInfo != null) {
                kf.m1483goto(taskInfo);
            }
        }
    }

    /* renamed from: const  reason: not valid java name */
    public static String m1813const(Field field) {
        Class<?> type;
        String simpleName;
        if (j(field.getType())) {
            type = m1834return(field);
        } else {
            type = field.getType();
        }
        if (type.isPrimitive()) {
            simpleName = BaseUtility.capitalize(type.getName());
        } else {
            simpleName = type.getSimpleName();
        }
        String m989case = Cgoto.m989case("get", simpleName);
        if (!"getBoolean".equals(m989case)) {
            if ("getChar".equals(m989case) || "getCharacter".equals(m989case)) {
                return "getString";
            }
            if ("getDate".equals(m989case)) {
                return "getLong";
            }
            if (!"getInteger".equals(m989case)) {
                return "getbyte[]".equalsIgnoreCase(m989case) ? "getBlob" : m989case;
            }
        }
        return "getInt";
    }

    /* renamed from: continue  reason: not valid java name */
    public static String m1814continue(kn0 kn0Var, String str, String str2) {
        return m1836strictfp(kn0Var, "href", str, str2);
    }

    public static List<Field> d(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            p(Class.forName(str), arrayList);
            return arrayList;
        } catch (ClassNotFoundException unused) {
            throw new DatabaseGenerateException(Cgoto.m989case(DatabaseGenerateException.CLASS_NOT_FOUND, str));
        }
    }

    /* renamed from: default  reason: not valid java name */
    public static String m1815default(String str, String str2, String str3) {
        return Cgoto.m998final(Cgoto.m1004import(a6.m18else().m22if(), "/", str, "/", str2), "/", str3, ".txt");
    }

    /* renamed from: do  reason: not valid java name */
    public static void m1816do(String str) {
        HashMap m1012public = Cgoto.m1012public("action", "addbookcase", "bookId", str);
        JSONObject m2953extends = x4.m2953extends(p0.m2009new() + "/BookAction.aspx", m1012public);
        if (m2953extends != null) {
            try {
                if (v0.m2736try().m2741const() && "2".equals(m2953extends.optJSONObject("data").optString("result"))) {
                    p0.m2008native(true);
                    if (((CollectBook) LitePal.where("collectId = ?", str).findFirst(CollectBook.class)) != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("loginName", v0.m2736try().m2738case());
                        LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", str);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void e(LitePalSupport litePalSupport, long j) throws SecurityException, NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        if (j > 0) {
            Long valueOf = Long.valueOf(j);
            Field declaredField = LitePalSupport.class.getDeclaredField("baseObjId");
            declaredField.setAccessible(true);
            declaredField.set(litePalSupport, valueOf);
        }
    }

    /* renamed from: else  reason: not valid java name */
    public static boolean m1817else(Context context) {
        if (v0.m2736try().m2741const() || m1839synchronized() < a()) {
            return false;
        }
        ze.d0(context, null, ze.r(R.string.not_login_add_shelf_book_max, Integer.valueOf(a())), ze.q(R.string.login_promptly_login_txt), new r2(context), null, null, false);
        return true;
    }

    /* renamed from: extends  reason: not valid java name */
    public static String m1818extends(String str, String str2) {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            Matcher matcher = Pattern.compile(str2).matcher(str);
            if (matcher.find()) {
                return matcher.group();
            }
            return "";
        }
        return "";
    }

    public static boolean f(String str) {
        return (TextUtils.isEmpty(str) || LitePal.where("collectId = ?", str).count(CollectBook.class) == 0) ? false : true;
    }

    /* renamed from: final  reason: not valid java name */
    public static String m1819final(String str) {
        CollectBook m1841throw = m1841throw(str);
        if (m1841throw != null) {
            return m1841throw.getFirstChapterId();
        }
        return null;
    }

    /* renamed from: finally  reason: not valid java name */
    public static String m1820finally(jo0 jo0Var, String str) {
        String str2;
        if (TextUtils.isEmpty(str.trim())) {
            str2 = null;
        } else {
            str2 = m1828native(jo0Var, str);
            if (!TextUtils.isEmpty(str2)) {
                str2 = m1843transient(str2, jo0Var.mo1378else());
            }
        }
        String mo1378else = jo0Var.mo1378else();
        if (!TextUtils.isEmpty(str2)) {
            if ((str2.endsWith("/") ? str2.substring(0, str2.lastIndexOf("/")) : str2).equals(mo1378else.substring(0, mo1378else.lastIndexOf("/")))) {
                return null;
            }
        }
        return str2;
    }

    /* renamed from: for  reason: not valid java name */
    public static void m1821for(String str, String str2) {
        Iterator it;
        String str3 = "";
        try {
            String m2620do = tt.m2620do(str, "");
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(m2620do)) {
                String[] split = m2620do.split("#");
                for (String str4 : split) {
                    if (!TextUtils.isEmpty(str4) && !str2.equals(str4)) {
                        arrayList.add(str4);
                    }
                }
                if (split.length >= 5) {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
            arrayList.add(0, str2);
            while (arrayList.iterator().hasNext()) {
                str3 = str3 + ((String) it.next()) + "#";
            }
            tt.f4763do.putString(str, str3);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean g(String str) {
        return (TextUtils.isEmpty(str) || LitePal.where("externalUrl = ?", str).count(CollectBook.class) == 0) ? false : true;
    }

    /* renamed from: goto  reason: not valid java name */
    public static boolean m1822goto(String str, String str2) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !Pattern.compile(str2).matcher(str).matches()) ? false : true;
    }

    public static boolean h(String str, String str2, String str3) {
        return ((BookMark) LitePal.where("novelId = ? and chapterId = ? and readPage = ?", str, str2, str3).findFirst(BookMark.class)) != null;
    }

    public static boolean i(String str) {
        return Pattern.compile("[一-龥]").matcher(str).find();
    }

    /* renamed from: if  reason: not valid java name */
    public static void m1823if(final String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            o m1921for = o.m1921for();
            Runnable runnable = new Runnable() { // from class: com.apk.m2
                @Override // java.lang.Runnable
                public final void run() {
                    n2.m1816do(str);
                }
            };
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(runnable);
                return;
            }
            return;
        }
        m1816do(str);
    }

    /* renamed from: implements  reason: not valid java name */
    public static List<CollectBook> m1824implements() {
        return LitePal.order(m1832protected()).find(CollectBook.class);
    }

    /* renamed from: import  reason: not valid java name */
    public static gp0 m1825import(jo0 jo0Var, String str) {
        jo0 jo0Var2;
        try {
            if (TextUtils.isEmpty(str.trim())) {
                return null;
            }
            if (str.contains("->")) {
                String[] split = str.split("->");
                if (split.length == 3) {
                    int i = 0;
                    gp0 c = jo0Var.c(split[0].trim());
                    try {
                        i = Integer.parseInt(split[1].trim());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    if (c.size() <= i || (jo0Var2 = c.get(i)) == null) {
                        return null;
                    }
                    return jo0Var2.c(split[2]);
                }
                return null;
            }
            return jo0Var.c(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* renamed from: instanceof  reason: not valid java name */
    public static List<CollectBook> m1826instanceof() {
        return LitePal.order(m1832protected()).where("fileType != ?", "1").find(CollectBook.class);
    }

    /* renamed from: interface  reason: not valid java name */
    public static Object[] m1827interface(kn0 kn0Var, String str) {
        if (kn0Var != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                return kn0Var.m1532this(str);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static boolean j(Class<?> cls) {
        return List.class.isAssignableFrom(cls) || Set.class.isAssignableFrom(cls);
    }

    public static boolean k(String str, String str2) {
        try {
            File file = new File(m1815default(str, "1", str2));
            if (file.exists()) {
                return file.length() > 0;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static Book m(JSONObject jSONObject) {
        Book book = new Book();
        try {
            book.setName(jSONObject.optString("BookName"));
            book.setId(jSONObject.optString("BookId"));
            book.setImg(jSONObject.optString("BookImage"));
            book.setAuthor(jSONObject.optString("Author"));
            book.setCName(jSONObject.optString("CategoryName"));
            book.setDesc(jSONObject.optString("Description"));
            book.setScore(Float.parseFloat(jSONObject.optString("Score")));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return book;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0071 A[Catch: Exception -> 0x00eb, TryCatch #0 {Exception -> 0x00eb, blocks: (B:20:0x0053, B:23:0x005b, B:25:0x0065, B:27:0x006b, B:29:0x0071, B:31:0x007b, B:33:0x0081), top: B:72:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b4 A[Catch: Exception -> 0x00e9, TryCatch #1 {Exception -> 0x00e9, blocks: (B:36:0x00ab, B:39:0x00b4, B:41:0x00ba, B:42:0x00ce, B:44:0x00d4), top: B:74:0x00ab }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0190  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean n(java.lang.String r20, org.json.JSONObject r21, java.lang.String r22, boolean r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.n2.n(java.lang.String, org.json.JSONObject, java.lang.String, boolean, boolean):boolean");
    }

    /* renamed from: native  reason: not valid java name */
    public static String m1828native(jo0 jo0Var, String str) {
        String str2;
        jo0 d;
        jo0 jo0Var2;
        jo0 d2;
        jo0 jo0Var3;
        try {
            str2 = null;
        } catch (Exception e) {
            e.printStackTrace();
            str2 = "";
        }
        if (TextUtils.isEmpty(str.trim())) {
            if (jo0Var != null) {
                str2 = jo0Var.e();
            }
        } else if (str.contains("->")) {
            String[] split = str.split("->");
            int i = 0;
            if (split.length == 2) {
                String trim = split[0].trim();
                String trim2 = split[1].trim();
                if (!TextUtils.isEmpty(trim)) {
                    jo0 d3 = jo0Var.d(trim);
                    if (d3 != null) {
                        str2 = d3.mo1742new(trim2);
                    }
                } else if (jo0Var != null) {
                    str2 = jo0Var.mo1742new(trim2);
                }
            } else {
                if (split.length == 3) {
                    gp0 c = jo0Var.c(split[0].trim());
                    try {
                        i = Integer.parseInt(split[1].trim());
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    if (c.size() > i && (jo0Var3 = c.get(i)) != null) {
                        str2 = jo0Var3.mo1742new(split[2].trim());
                    }
                } else if (split.length == 4) {
                    gp0 c2 = jo0Var.c(split[0].trim());
                    try {
                        i = Integer.parseInt(split[1].trim());
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    if (c2.size() > i && (jo0Var2 = c2.get(i)) != null && (d2 = jo0Var2.d(split[2].trim())) != null) {
                        str2 = d2.mo1742new(split[3].trim());
                    }
                }
                e.printStackTrace();
                str2 = "";
            }
        } else if (jo0Var != null && (d = jo0Var.d(str.trim())) != null) {
            str2 = d.e();
        }
        return str2 != null ? str2.trim() : "";
    }

    /* renamed from: new  reason: not valid java name */
    public static void m1829new(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("stickTime", "");
        contentValues.put("saveTime", str2);
        LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", str);
    }

    public static void o(Class<?> cls, List<Field> list) {
        if (cls == LitePalSupport.class || cls == Object.class) {
            return;
        }
        Field[] declaredFields = cls.getDeclaredFields();
        if (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                Column column = (Column) field.getAnnotation(Column.class);
                if ((column == null || !column.ignore()) && !Modifier.isStatic(field.getModifiers()) && BaseUtility.isFieldTypeSupported(field.getType().getName())) {
                    list.add(field);
                }
            }
        }
        o(cls.getSuperclass(), list);
    }

    public static void p(Class<?> cls, List<Field> list) {
        if (cls == LitePalSupport.class || cls == Object.class) {
            return;
        }
        Field[] declaredFields = cls.getDeclaredFields();
        if (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                Column column = (Column) field.getAnnotation(Column.class);
                if ((column == null || !column.ignore()) && !Modifier.isStatic(field.getModifiers()) && j(field.getType())) {
                    String m1835static = m1835static(field);
                    if (BaseUtility.isGenericTypeSupported(m1835static) || cls.getName().equalsIgnoreCase(m1835static)) {
                        list.add(field);
                    }
                }
            }
        }
        p(cls.getSuperclass(), list);
    }

    /* renamed from: package  reason: not valid java name */
    public static List<CollectBook> m1830package() {
        return LitePal.where("readChapterId = ? and addTime < ?", "", Math.abs(System.currentTimeMillis() - 432000000) + "").find(CollectBook.class);
    }

    /* renamed from: private  reason: not valid java name */
    public static String m1831private(kn0 kn0Var, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                if (kn0Var != null) {
                    return ((StringBuilder) kn0Var.m1530super()).toString().trim();
                }
                return null;
            }
            Object[] m1532this = kn0Var.m1532this(str);
            if (m1532this.length > 0) {
                kn0 kn0Var2 = (kn0) m1532this[0];
                if (kn0Var2 != null) {
                    String m1519catch = kn0Var2.m1519catch(str2);
                    if (TextUtils.isEmpty(m1519catch)) {
                        return null;
                    }
                    return m1519catch.trim();
                }
                return null;
            }
            String m1519catch2 = kn0Var.m1519catch(str2);
            if (TextUtils.isEmpty(m1519catch2)) {
                return null;
            }
            return m1519catch2.trim();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: protected  reason: not valid java name */
    public static String m1832protected() {
        return da.m415break() == 0 ? "stickTime desc, saveTime desc" : "stickTime desc, lastUpdateTime desc, saveTime desc";
    }

    /* renamed from: public  reason: not valid java name */
    public static Object m1833public(Object obj, String str, Class<?> cls) throws IllegalArgumentException, IllegalAccessException {
        if (cls != LitePalSupport.class && cls != Object.class) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField.get(obj);
            } catch (NoSuchFieldException unused) {
                return m1833public(obj, str, cls.getSuperclass());
            }
        }
        throw new LitePalSupportException(LitePalSupportException.noSuchFieldExceptioin(cls.getSimpleName(), str));
    }

    public static void q(String str, String str2) {
        try {
            String str3 = "SP_NOVEL_ZHINENNG_CHAPTER_ID_KEY" + str;
            ze.W(str3);
            ContentValues contentValues = new ContentValues();
            contentValues.put("novelId", str);
            LitePal.updateAll(ChapterBean.class, contentValues, "novelId = ?", str3);
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("readChapterId", str2);
            contentValues2.put("fileType", (Integer) 2);
            LitePal.updateAll(CollectBook.class, contentValues2, "collectId = ?", str);
            LitePal.deleteAll(CollectBook.class, "collectId = ?", str3);
            try {
                String str4 = a6.m18else().m22if() + "/" + str3;
                String str5 = a6.m18else().m22if() + "/" + str;
                File file = new File(str5);
                if (file.exists() && file.isDirectory()) {
                    ze.m3176native(str5);
                }
                ze.m3188this(str4, str5);
                ze.m3176native(str4);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void r(String str, String str2, String str3) {
        LitePal.deleteAll(BookMark.class, "novelId = ? and chapterId = ? and readPage = ?", str, str2, str3);
    }

    /* renamed from: return  reason: not valid java name */
    public static Class<?> m1834return(Field field) {
        Type genericType = field.getGenericType();
        if (genericType == null || !(genericType instanceof ParameterizedType)) {
            return null;
        }
        return (Class) ((ParameterizedType) genericType).getActualTypeArguments()[0];
    }

    public static boolean s(String[] strArr) {
        try {
            if (!v0.m2736try().m2741const()) {
                m1812class(strArr);
            } else {
                int length = strArr.length;
                String str = "";
                int i = 0;
                while (i < length) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(strArr[i]);
                    sb.append(i != length + (-1) ? "," : "");
                    str = sb.toString();
                    i++;
                }
                HashMap hashMap = new HashMap();
                hashMap.put("action", "removebookcase");
                hashMap.put("bookIds", str);
                JSONObject m2953extends = x4.m2953extends(p0.m2009new() + "/BookAction.aspx", hashMap);
                if (m2953extends == null || m2953extends.optInt(NotificationCompat.CATEGORY_STATUS, -1) != 1) {
                    return false;
                }
                p0.m2008native(true);
                m1812class(strArr);
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: static  reason: not valid java name */
    public static String m1835static(Field field) {
        Class<?> m1834return = m1834return(field);
        if (m1834return != null) {
            return m1834return.getName();
        }
        return null;
    }

    /* renamed from: strictfp  reason: not valid java name */
    public static String m1836strictfp(kn0 kn0Var, String str, String str2, String str3) {
        try {
            String m1831private = m1831private(kn0Var, str2, str);
            if (!TextUtils.isEmpty(m1831private)) {
                m1831private = m1843transient(m1831private, str3);
            }
            if (!TextUtils.isEmpty(m1831private)) {
                if ((m1831private.endsWith("/") ? m1831private.substring(0, m1831private.lastIndexOf("/")) : m1831private).equals(str3.substring(0, str3.lastIndexOf("/")))) {
                    return null;
                }
            }
            return m1831private;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: super  reason: not valid java name */
    public static boolean m1837super(String str, String str2, String str3, boolean z, WebSiteBean webSiteBean, boolean z2) {
        ChapterBean chapterBean;
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (webSiteBean != null) {
            if (TextUtils.isEmpty(str3) && (chapterBean = (ChapterBean) LitePal.where("novelId = ? and oid = ?", str, str2).findFirst(ChapterBean.class)) != null) {
                str3 = chapterBean.getUrl();
            }
            return n(str, new JSONObject(nd.m1864super(webSiteBean, str, str2, str3).trim()), str2, true, true);
        }
        String str4 = !TextUtils.isEmpty(str3) ? "SP_HOST_XZ_XS_KEY" : "SP_HOST_CHAP_XS_KEY";
        if (TextUtils.isEmpty(str3)) {
            str3 = w.m2850if(p0.m2004for(str), str, str2);
        }
        String str5 = str3;
        ArrayList arrayList = new ArrayList();
        JSONObject m2963throw = x4.m2963throw(str5, 0L, xw.NO_CACHE, new ba(str4, arrayList), str4);
        if (m2963throw == null && arrayList.size() > 0) {
            m2963throw = (JSONObject) arrayList.get(0);
        }
        if (m2963throw != null && m2963throw.optInt(NotificationCompat.CATEGORY_STATUS) == 1) {
            if (z) {
                if (!(m2963throw.optJSONObject("data").optInt("hasContent") == 1)) {
                    return true;
                }
            }
            return n(str, m2963throw, str2, false, z2);
        }
        return false;
    }

    /* renamed from: switch  reason: not valid java name */
    public static List<String> m1838switch(String str) {
        String[] split;
        ArrayList arrayList = new ArrayList();
        try {
            for (String str2 : tt.m2620do(str, "").split("#")) {
                if (!TextUtils.isEmpty(str2)) {
                    arrayList.add(str2);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static int m1839synchronized() {
        return LitePal.count(CollectBook.class);
    }

    public static void t(Book book, String str, String str2, String str3, int i, boolean z, boolean z2) {
        try {
            CollectBook m3164do = ze.m3164do(book, i, str2, str, str3);
            if (da.m421final(book.getId())) {
                m3164do.setMax(LitePal.where("novelId = ? and url != ?", book.getId(), "ROLLNAME_LAYOUT_KEY").count(ChapterBean.class));
            }
            try {
                if (!f(book.getId())) {
                    m3164do.setAddTime(System.currentTimeMillis());
                    if (m3164do.save()) {
                        if (z2) {
                            ToastUtils.show((CharSequence) ze.q(R.string.add_bookshlef_txt));
                        }
                        if (z && v0.m2736try().m2741const()) {
                            if (book.isWebSite()) {
                                qd.m2113catch(m3164do.getCollectId(), m3164do.getName(), m3164do.getChapterUrl(), m3164do.getExternalUrl());
                            } else {
                                m1823if(m3164do.getCollectId());
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            ze.Y(true);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: this  reason: not valid java name */
    public static String m1840this(String str) {
        return str.trim().replace(" ", "").replace("\u3000\u3000", "").replaceAll("\t", "").replaceAll("\\s*", "").replaceAll("\\s*|\t|\r|\n|\r\n", "");
    }

    /* renamed from: throw  reason: not valid java name */
    public static CollectBook m1841throw(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return (CollectBook) LitePal.where("collectId = ?", str).findFirst(CollectBook.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: throws  reason: not valid java name */
    public static String m1842throws(BookChapter bookChapter) {
        Vector<String> values;
        if (bookChapter == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(bookChapter.getChapterId());
        sb.append("=");
        sb.append(bookChapter.getReadPage());
        sb.append("=");
        sb.append(bookChapter.getAllPage());
        sb.append("=");
        sb.append(bookChapter.getUrl());
        sb.append("=");
        try {
            if (bookChapter.getValues() != null && bookChapter.getValues().size() > 0 && (values = bookChapter.getValues()) != null && values.size() > 0) {
                String str = values.get(0);
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str.charAt(0));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sb.toString();
    }

    /* renamed from: transient  reason: not valid java name */
    public static String m1843transient(String str, String str2) {
        String[] split;
        if (TextUtils.isEmpty(str) || str.contains(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP)) {
            return str;
        }
        if (!str.startsWith("/")) {
            str = Cgoto.m989case("/", str);
        }
        boolean z = false;
        for (String str3 : str.split("/")) {
            if (!TextUtils.isEmpty(str3) && !z) {
                z = str2.contains(str3);
            }
        }
        if (z) {
            return m1846while(str2) + str;
        }
        return Cgoto.m989case(str2.substring(0, str2.lastIndexOf("/")), str);
    }

    /* renamed from: try  reason: not valid java name */
    public static boolean m1844try(Context context, boolean z) {
        return m1810case(context, z, false, null);
    }

    public static void u(Book book, boolean z) {
        t(book, "", "", "", 1, z, true);
    }

    public static void v(CollectBook collectBook) {
        try {
            if (!f(collectBook.getCollectId())) {
                collectBook.setAddTime(System.currentTimeMillis());
                collectBook.save();
            }
            ze.Y(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: volatile  reason: not valid java name */
    public static String m1845volatile(kn0 kn0Var, String str) {
        kn0 kn0Var2;
        if (TextUtils.isEmpty(str)) {
            if (kn0Var != null) {
                return ((StringBuilder) kn0Var.m1530super()).toString().trim();
            }
            return null;
        }
        try {
            Object[] m1532this = kn0Var.m1532this(str);
            if (m1532this.length <= 0 || (kn0Var2 = (kn0) m1532this[0]) == null) {
                return null;
            }
            return ((StringBuilder) kn0Var2.m1530super()).toString().replace("<br />", "<br>").replace("<br/>", "<br>").replace("br", "<br>").replace("\r\r", "<br>").replace("\n", "<br>").trim();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static CollectBook w(String str, String str2, String str3, int i) {
        CollectBook collectBook = new CollectBook();
        try {
            collectBook.setCollectId(str);
            try {
                if (!TextUtils.isEmpty(str2)) {
                    str2 = str2.substring(0, str2.lastIndexOf("."));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            collectBook.setName(str2);
            collectBook.setReadChapterId("");
            collectBook.setReadChapterName("");
            collectBook.setReadPage(1);
            collectBook.setIcon(str3);
            collectBook.setLastCapterName("");
            collectBook.setLastCapterId("");
            collectBook.setFirstChapterId(SpeechSynthesizer.REQUEST_DNS_OFF);
            collectBook.setLastUpdateTime(kg.m1501try());
            collectBook.setSaveTime(String.valueOf(System.currentTimeMillis()));
            collectBook.setNew(false);
            collectBook.setAuthor("");
            collectBook.setStickTime("");
            collectBook.setDesc("");
            collectBook.setBookType("本地导入");
            collectBook.setLoginName("");
            collectBook.setFileType(i);
            v(collectBook);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return collectBook;
    }

    /* renamed from: while  reason: not valid java name */
    public static String m1846while(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            if (str.startsWith(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP)) {
                try {
                    String host = Uri.parse(str).getHost();
                    if (TextUtils.isEmpty(host) || !host.contains(".")) {
                        return "";
                    }
                    return str.substring(0, str.indexOf(host)) + host;
                } catch (Exception unused) {
                    return "";
                }
            }
            return "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static void x(boolean z, String str, String str2, String str3, String str4, String str5, boolean z2, String str6, boolean z3, String str7) {
        ChapterBean chapterBean = (ChapterBean) LitePal.where("novelId = ? and oid = ?", str, str2).findFirst(ChapterBean.class);
        if (chapterBean != null) {
            ContentValues contentValues = new ContentValues();
            if (!TextUtils.isEmpty(str)) {
                contentValues.put("novelId", str);
                chapterBean.setNovelId(str);
            }
            if (!TextUtils.isEmpty(str2) && !"-2".equals(str2)) {
                contentValues.put("oid", str2);
                chapterBean.setOid(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                contentValues.put("name", str3);
                chapterBean.setName(str3);
            }
            if (!TextUtils.isEmpty(str4) && !"-2".equals(str4)) {
                contentValues.put("pid", str4);
                chapterBean.setPid(str4);
            }
            if (!TextUtils.isEmpty(str5) && !"-2".equals(str5)) {
                contentValues.put("nid", str5);
                chapterBean.setNid(str5);
            }
            if (z) {
                contentValues.put("hasContent", Boolean.valueOf(z2));
                chapterBean.setHasContent(z2);
            }
            if (!TextUtils.isEmpty(str6)) {
                contentValues.put("need_share", str6);
                chapterBean.setNeed_share(str6);
            }
            if (!TextUtils.isEmpty(str7)) {
                contentValues.put("url", str7);
                chapterBean.setUrl(str7);
            }
            if (z3) {
                contentValues.put("isWebSite", Boolean.TRUE);
            }
            LitePal.updateAll(ChapterBean.class, contentValues, "novelId = ? and oid = ?", str, str2);
        } else {
            chapterBean = new ChapterBean();
            chapterBean.setNovelId(str);
            chapterBean.setOid(str2);
            chapterBean.setName(str3);
            chapterBean.setUrl(str7);
            chapterBean.setPid(str4);
            chapterBean.setNid(str5);
            chapterBean.setHasContent(z2);
            chapterBean.setNeed_share(str6);
            if (z3) {
                chapterBean.setWebSite(true);
            }
            chapterBean.save();
        }
        da m419else = da.m419else();
        if (m419else.f840do == null) {
            m419else.f840do = new HashMap<>();
        }
        m419else.f840do.put(chapterBean.getOid(), chapterBean);
    }

    public static void y(Book book) {
        t(book, "", v0.m2736try().m2738case(), "", 0, false, false);
    }

    public static jo0 z(jo0 jo0Var, String str) {
        if (jo0Var == null || TextUtils.isEmpty(str.trim())) {
            return null;
        }
        return jo0Var.d(str);
    }
}
