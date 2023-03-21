package org.litepal.extension;

import androidx.exifinterface.media.ExifInterface;
import com.apk.nd0;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import org.litepal.FluentQuery;
import org.litepal.crud.async.FindExecutor;
import org.litepal.crud.async.FindMultiExecutor;

/* compiled from: FluentQuery.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\u001a$\u0010\u0005\u001a\u00020\u0004\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001c\u0010\b\u001a\u00020\u0007\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0004\b\b\u0010\t\u001a\"\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0004\b\u000b\u0010\f\u001a*\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0086\b¢\u0006\u0004\b\u000b\u0010\u000f\u001a@\u0010\u0012\u001a&\u0012\f\u0012\n \u0011*\u0004\u0018\u00018\u00008\u0000 \u0011*\u0012\u0012\f\u0012\n \u0011*\u0004\u0018\u00018\u00008\u0000\u0018\u00010\u00100\u0010\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0087\b¢\u0006\u0004\b\u0012\u0010\u0013\u001aH\u0010\u0012\u001a&\u0012\f\u0012\n \u0011*\u0004\u0018\u00018\u00008\u0000 \u0011*\u0012\u0012\f\u0012\n \u0011*\u0004\u0018\u00018\u00008\u0000\u0018\u00010\u00100\u0010\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0087\b¢\u0006\u0004\b\u0012\u0010\u0014\u001a\u001e\u0010\u0015\u001a\u0004\u0018\u00018\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0015\u0010\u0016\u001a&\u0010\u0015\u001a\u0004\u0018\u00018\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0086\b¢\u0006\u0004\b\u0015\u0010\u0017\u001a\"\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0087\b¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001e\u0010\u001b\u001a\u0004\u0018\u00018\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0004\b\u001b\u0010\u0016\u001a&\u0010\u001b\u001a\u0004\u0018\u00018\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0086\b¢\u0006\u0004\b\u001b\u0010\u0017\u001a,\u0010\u001e\u001a\u00028\u0001\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\b\u001e\u0010\u001f\u001a,\u0010\u001e\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010 \u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\b\u001e\u0010!\u001a,\u0010\"\u001a\u00028\u0001\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\b\"\u0010\u001f\u001a,\u0010\"\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010 \u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\b\"\u0010!\u001a,\u0010#\u001a\u00028\u0001\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\b#\u0010\u001f\u001a,\u0010#\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010 \u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\b#\u0010!¨\u0006$"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lorg/litepal/FluentQuery;", "", "column", "", "average", "(Lorg/litepal/FluentQuery;Ljava/lang/String;)D", "", "count", "(Lorg/litepal/FluentQuery;)I", "", "find", "(Lorg/litepal/FluentQuery;)Ljava/util/List;", "", "isEager", "(Lorg/litepal/FluentQuery;Z)Ljava/util/List;", "Lorg/litepal/crud/async/FindMultiExecutor;", "kotlin.jvm.PlatformType", "findAsync", "(Lorg/litepal/FluentQuery;)Lorg/litepal/crud/async/FindMultiExecutor;", "(Lorg/litepal/FluentQuery;Z)Lorg/litepal/crud/async/FindMultiExecutor;", "findFirst", "(Lorg/litepal/FluentQuery;)Ljava/lang/Object;", "(Lorg/litepal/FluentQuery;Z)Ljava/lang/Object;", "Lorg/litepal/crud/async/FindExecutor;", "findFirstAsync", "(Lorg/litepal/FluentQuery;)Lorg/litepal/crud/async/FindExecutor;", "findLast", "R", "columnName", "max", "(Lorg/litepal/FluentQuery;Ljava/lang/String;)Ljava/lang/Object;", "tableName", "(Lorg/litepal/FluentQuery;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;", "min", "sum", "core_release"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes7.dex */
public final class FluentQueryKt {
    public static final /* synthetic */ <T> double average(FluentQuery fluentQuery, String str) {
        nd0.m1875new(fluentQuery, "$this$average");
        nd0.m1875new(str, "column");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> int count(FluentQuery fluentQuery) {
        nd0.m1875new(fluentQuery, "$this$count");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> List<T> find(FluentQuery fluentQuery) {
        nd0.m1875new(fluentQuery, "$this$find");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> FindMultiExecutor<T> findAsync(FluentQuery fluentQuery) {
        nd0.m1875new(fluentQuery, "$this$findAsync");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> T findFirst(FluentQuery fluentQuery) {
        nd0.m1875new(fluentQuery, "$this$findFirst");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> FindExecutor<T> findFirstAsync(FluentQuery fluentQuery) {
        nd0.m1875new(fluentQuery, "$this$findFirstAsync");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> T findLast(FluentQuery fluentQuery) {
        nd0.m1875new(fluentQuery, "$this$findLast");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T, R> R max(FluentQuery fluentQuery, String str) {
        nd0.m1875new(fluentQuery, "$this$max");
        nd0.m1875new(str, "columnName");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T, R> R min(FluentQuery fluentQuery, String str) {
        nd0.m1875new(fluentQuery, "$this$min");
        nd0.m1875new(str, "columnName");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T, R> R sum(FluentQuery fluentQuery, String str) {
        nd0.m1875new(fluentQuery, "$this$sum");
        nd0.m1875new(str, "columnName");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> List<T> find(FluentQuery fluentQuery, boolean z) {
        nd0.m1875new(fluentQuery, "$this$find");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> FindMultiExecutor<T> findAsync(FluentQuery fluentQuery, boolean z) {
        nd0.m1875new(fluentQuery, "$this$findAsync");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> T findFirst(FluentQuery fluentQuery, boolean z) {
        nd0.m1875new(fluentQuery, "$this$findFirst");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> T findLast(FluentQuery fluentQuery, boolean z) {
        nd0.m1875new(fluentQuery, "$this$findLast");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <R> R max(FluentQuery fluentQuery, String str, String str2) {
        nd0.m1875new(fluentQuery, "$this$max");
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <R> R min(FluentQuery fluentQuery, String str, String str2) {
        nd0.m1875new(fluentQuery, "$this$min");
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <R> R sum(FluentQuery fluentQuery, String str, String str2) {
        nd0.m1875new(fluentQuery, "$this$sum");
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1869case();
        throw null;
    }
}
