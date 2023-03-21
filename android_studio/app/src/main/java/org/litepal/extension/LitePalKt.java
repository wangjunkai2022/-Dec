package org.litepal.extension;

import android.content.ContentValues;
import androidx.exifinterface.media.ExifInterface;
import com.apk.hd0;
import com.apk.nd0;
import java.util.Collection;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import org.jetbrains.annotations.NotNull;
import org.litepal.LitePal;
import org.litepal.crud.LitePalSupport;
import org.litepal.crud.async.AverageExecutor;
import org.litepal.crud.async.CountExecutor;
import org.litepal.crud.async.FindExecutor;
import org.litepal.crud.async.FindMultiExecutor;
import org.litepal.crud.async.UpdateOrDeleteExecutor;

/* compiled from: LitePal.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u008a\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010!\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u001a$\u0010\u0005\u001a\u00020\u0004\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a,\u0010\t\u001a\n \b*\u0004\u0018\u00010\u00070\u0007\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b¢\u0006\u0004\b\t\u0010\n\u001a\u001c\u0010\f\u001a\u00020\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0004\b\f\u0010\r\u001a$\u0010\u000f\u001a\n \b*\u0004\u0018\u00010\u000e0\u000e\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0087\b¢\u0006\u0004\b\u000f\u0010\u0010\u001a$\u0010\u0013\u001a\u00020\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0011H\u0086\b¢\u0006\u0004\b\u0013\u0010\u0014\u001a4\u0010\u0017\u001a\u00020\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00020\u0015\"\u0004\u0018\u00010\u0002H\u0086\b¢\u0006\u0004\b\u0017\u0010\u0018\u001a<\u0010\u001a\u001a\n \b*\u0004\u0018\u00010\u00190\u0019\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00020\u0015\"\u0004\u0018\u00010\u0002H\u0087\b¢\u0006\u0004\b\u001a\u0010\u001b\u001a,\u0010\u001c\u001a\n \b*\u0004\u0018\u00010\u00190\u0019\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b\u001c\u0010\u001d\u001a&\u0010\u001e\u001a\u0004\u0018\u00018\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0011H\u0086\b¢\u0006\u0004\b\u001e\u0010\u001f\u001a4\u0010\u001e\u001a\n \b*\u0004\u0018\u00018\u00008\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010!\u001a\u00020 H\u0086\b¢\u0006\u0004\b\u001e\u0010\"\u001aT\u0010'\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000\u0018\u00010&0%\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010!\u001a\u00020 2\n\u0010$\u001a\u00020#\"\u00020\u0011H\u0086\b¢\u0006\u0004\b'\u0010(\u001aL\u0010'\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000\u0018\u00010&0%\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\n\u0010$\u001a\u00020#\"\u00020\u0011H\u0086\b¢\u0006\u0004\b'\u0010)\u001aT\u0010+\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000\u0018\u00010*0*\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010!\u001a\u00020 2\n\u0010$\u001a\u00020#\"\u00020\u0011H\u0087\b¢\u0006\u0004\b+\u0010,\u001aL\u0010+\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000\u0018\u00010*0*\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\n\u0010$\u001a\u00020#\"\u00020\u0011H\u0087\b¢\u0006\u0004\b+\u0010-\u001aH\u0010/\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000\u0018\u00010.0.\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b/\u00100\u001a4\u0010/\u001a\n \b*\u0004\u0018\u00018\u00008\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010!\u001a\u00020 H\u0087\b¢\u0006\u0004\b/\u0010\"\u001a$\u00101\u001a\n \b*\u0004\u0018\u00018\u00008\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0004\b1\u00102\u001a,\u00101\u001a\n \b*\u0004\u0018\u00018\u00008\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010!\u001a\u00020 H\u0086\b¢\u0006\u0004\b1\u00103\u001a@\u00104\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000\u0018\u00010.0.\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0087\b¢\u0006\u0004\b4\u00105\u001aH\u00104\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000\u0018\u00010.0.\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010!\u001a\u00020 H\u0087\b¢\u0006\u0004\b4\u00106\u001a$\u00107\u001a\n \b*\u0004\u0018\u00018\u00008\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0004\b7\u00102\u001a,\u00107\u001a\n \b*\u0004\u0018\u00018\u00008\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010!\u001a\u00020 H\u0086\b¢\u0006\u0004\b7\u00103\u001a@\u00108\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000\u0018\u00010.0.\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0087\b¢\u0006\u0004\b8\u00105\u001aH\u00108\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000\u0018\u00010.0.\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010!\u001a\u00020 H\u0087\b¢\u0006\u0004\b8\u00106\u001a4\u00109\u001a\u00020 \"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00020\u0015\"\u0004\u0018\u00010\u0002H\u0086\b¢\u0006\u0004\b9\u0010:\u001a4\u0010=\u001a\n \b*\u0004\u0018\u00018\u00018\u0001\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010;\u0018\u0001*\u00020\u00012\u0006\u0010<\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\b=\u0010>\u001a4\u0010=\u001a\n \b*\u0004\u0018\u00018\u00008\u0000\"\u0006\b\u0000\u0010;\u0018\u0001*\u00020\u00012\u0006\u0010?\u001a\u00020\u00022\u0006\u0010<\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\b=\u0010@\u001aP\u0010A\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00018\u0001 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00018\u0001\u0018\u00010.0.\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010;\u0018\u0001*\u00020\u00012\u0006\u0010<\u001a\u00020\u0002H\u0087\b¢\u0006\u0004\bA\u0010B\u001aP\u0010A\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000\u0018\u00010.0.\"\u0006\b\u0000\u0010;\u0018\u0001*\u00020\u00012\u0006\u0010?\u001a\u00020\u00022\u0006\u0010<\u001a\u00020\u0002H\u0087\b¢\u0006\u0004\bA\u0010C\u001a4\u0010D\u001a\n \b*\u0004\u0018\u00018\u00018\u0001\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010;\u0018\u0001*\u00020\u00012\u0006\u0010<\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\bD\u0010>\u001a4\u0010D\u001a\n \b*\u0004\u0018\u00018\u00008\u0000\"\u0006\b\u0000\u0010;\u0018\u0001*\u00020\u00012\u0006\u0010?\u001a\u00020\u00022\u0006\u0010<\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\bD\u0010@\u001aP\u0010E\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00018\u0001 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00018\u0001\u0018\u00010.0.\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010;\u0018\u0001*\u00020\u00012\u0006\u0010<\u001a\u00020\u0002H\u0087\b¢\u0006\u0004\bE\u0010B\u001aP\u0010E\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000\u0018\u00010.0.\"\u0006\b\u0000\u0010;\u0018\u0001*\u00020\u00012\u0006\u0010?\u001a\u00020\u00022\u0006\u0010<\u001a\u00020\u0002H\u0087\b¢\u0006\u0004\bE\u0010C\u001a\u001f\u0010H\u001a\u00020 *\u00020\u00012\f\u0010G\u001a\b\u0012\u0004\u0012\u00020 0F¢\u0006\u0004\bH\u0010I\u001a!\u0010L\u001a\u00020 \"\b\b\u0000\u0010\u0000*\u00020J*\b\u0012\u0004\u0012\u00028\u00000K¢\u0006\u0004\bL\u0010M\u001a4\u0010N\u001a\n \b*\u0004\u0018\u00018\u00018\u0001\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010;\u0018\u0001*\u00020\u00012\u0006\u0010<\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\bN\u0010>\u001a4\u0010N\u001a\n \b*\u0004\u0018\u00018\u00008\u0000\"\u0006\b\u0000\u0010;\u0018\u0001*\u00020\u00012\u0006\u0010?\u001a\u00020\u00022\u0006\u0010<\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\bN\u0010@\u001aP\u0010O\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00018\u0001 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00018\u0001\u0018\u00010.0.\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010;\u0018\u0001*\u00020\u00012\u0006\u0010<\u001a\u00020\u0002H\u0087\b¢\u0006\u0004\bO\u0010B\u001aP\u0010O\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00018\u00008\u0000\u0018\u00010.0.\"\u0006\b\u0000\u0010;\u0018\u0001*\u00020\u00012\u0006\u0010?\u001a\u00020\u00022\u0006\u0010<\u001a\u00020\u0002H\u0087\b¢\u0006\u0004\bO\u0010C\u001a,\u0010R\u001a\u00020\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010Q\u001a\u00020P2\u0006\u0010\u0012\u001a\u00020\u0011H\u0086\b¢\u0006\u0004\bR\u0010S\u001a<\u0010T\u001a\u00020\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010Q\u001a\u00020P2\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00020\u0015\"\u0004\u0018\u00010\u0002H\u0086\b¢\u0006\u0004\bT\u0010U\u001aD\u0010V\u001a\n \b*\u0004\u0018\u00010\u00190\u0019\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010Q\u001a\u00020P2\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00020\u0015\"\u0004\u0018\u00010\u0002H\u0087\b¢\u0006\u0004\bV\u0010W\u001a4\u0010X\u001a\n \b*\u0004\u0018\u00010\u00190\u0019\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010Q\u001a\u00020P2\u0006\u0010\u0012\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\bX\u0010Y¨\u0006Z"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lorg/litepal/LitePal;", "", "column", "", "average", "(Lorg/litepal/LitePal;Ljava/lang/String;)D", "Lorg/litepal/crud/async/AverageExecutor;", "kotlin.jvm.PlatformType", "averageAsync", "(Lorg/litepal/LitePal;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;", "", "count", "(Lorg/litepal/LitePal;)I", "Lorg/litepal/crud/async/CountExecutor;", "countAsync", "(Lorg/litepal/LitePal;)Lorg/litepal/crud/async/CountExecutor;", "", "id", "delete", "(Lorg/litepal/LitePal;J)I", "", "conditions", "deleteAll", "(Lorg/litepal/LitePal;[Ljava/lang/String;)I", "Lorg/litepal/crud/async/UpdateOrDeleteExecutor;", "deleteAllAsync", "(Lorg/litepal/LitePal;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;", "deleteAsync", "(Lorg/litepal/LitePal;J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;", "find", "(Lorg/litepal/LitePal;J)Ljava/lang/Object;", "", "isEager", "(Lorg/litepal/LitePal;JZ)Ljava/lang/Object;", "", "ids", "", "", "findAll", "(Lorg/litepal/LitePal;Z[J)Ljava/util/List;", "(Lorg/litepal/LitePal;[J)Ljava/util/List;", "Lorg/litepal/crud/async/FindMultiExecutor;", "findAllAsync", "(Lorg/litepal/LitePal;Z[J)Lorg/litepal/crud/async/FindMultiExecutor;", "(Lorg/litepal/LitePal;[J)Lorg/litepal/crud/async/FindMultiExecutor;", "Lorg/litepal/crud/async/FindExecutor;", "findAsync", "(Lorg/litepal/LitePal;J)Lorg/litepal/crud/async/FindExecutor;", "findFirst", "(Lorg/litepal/LitePal;)Ljava/lang/Object;", "(Lorg/litepal/LitePal;Z)Ljava/lang/Object;", "findFirstAsync", "(Lorg/litepal/LitePal;)Lorg/litepal/crud/async/FindExecutor;", "(Lorg/litepal/LitePal;Z)Lorg/litepal/crud/async/FindExecutor;", "findLast", "findLastAsync", "isExist", "(Lorg/litepal/LitePal;[Ljava/lang/String;)Z", "R", "columnName", "max", "(Lorg/litepal/LitePal;Ljava/lang/String;)Ljava/lang/Object;", "tableName", "(Lorg/litepal/LitePal;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;", "maxAsync", "(Lorg/litepal/LitePal;Ljava/lang/String;)Lorg/litepal/crud/async/FindExecutor;", "(Lorg/litepal/LitePal;Ljava/lang/String;Ljava/lang/String;)Lorg/litepal/crud/async/FindExecutor;", "min", "minAsync", "Lkotlin/Function0;", "block", "runInTransaction", "(Lorg/litepal/LitePal;Lkotlin/Function0;)Z", "Lorg/litepal/crud/LitePalSupport;", "", "saveAll", "(Ljava/util/Collection;)Z", "sum", "sumAsync", "Landroid/content/ContentValues;", "values", "update", "(Lorg/litepal/LitePal;Landroid/content/ContentValues;J)I", "updateAll", "(Lorg/litepal/LitePal;Landroid/content/ContentValues;[Ljava/lang/String;)I", "updateAllAsync", "(Lorg/litepal/LitePal;Landroid/content/ContentValues;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;", "updateAsync", "(Lorg/litepal/LitePal;Landroid/content/ContentValues;J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;", "core_release"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes7.dex */
public final class LitePalKt {
    public static final /* synthetic */ <T> double average(LitePal litePal, String str) {
        nd0.m1875new(litePal, "$this$average");
        nd0.m1875new(str, "column");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> AverageExecutor averageAsync(LitePal litePal, String str) {
        nd0.m1875new(litePal, "$this$averageAsync");
        nd0.m1875new(str, "column");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> int count(LitePal litePal) {
        nd0.m1875new(litePal, "$this$count");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> CountExecutor countAsync(LitePal litePal) {
        nd0.m1875new(litePal, "$this$countAsync");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> int delete(LitePal litePal, long j) {
        nd0.m1875new(litePal, "$this$delete");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> int deleteAll(LitePal litePal, String... strArr) {
        nd0.m1875new(litePal, "$this$deleteAll");
        nd0.m1875new(strArr, "conditions");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> UpdateOrDeleteExecutor deleteAllAsync(LitePal litePal, String... strArr) {
        nd0.m1875new(litePal, "$this$deleteAllAsync");
        nd0.m1875new(strArr, "conditions");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> UpdateOrDeleteExecutor deleteAsync(LitePal litePal, long j) {
        nd0.m1875new(litePal, "$this$deleteAsync");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> T find(LitePal litePal, long j) {
        nd0.m1875new(litePal, "$this$find");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> List<T> findAll(LitePal litePal, long... jArr) {
        nd0.m1875new(litePal, "$this$findAll");
        nd0.m1875new(jArr, "ids");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> FindMultiExecutor<T> findAllAsync(LitePal litePal, long... jArr) {
        nd0.m1875new(litePal, "$this$findAllAsync");
        nd0.m1875new(jArr, "ids");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> FindExecutor<T> findAsync(LitePal litePal, long j) {
        nd0.m1875new(litePal, "$this$findAsync");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> T findFirst(LitePal litePal) {
        nd0.m1875new(litePal, "$this$findFirst");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> FindExecutor<T> findFirstAsync(LitePal litePal) {
        nd0.m1875new(litePal, "$this$findFirstAsync");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> T findLast(LitePal litePal) {
        nd0.m1875new(litePal, "$this$findLast");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> FindExecutor<T> findLastAsync(LitePal litePal) {
        nd0.m1875new(litePal, "$this$findLastAsync");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> boolean isExist(LitePal litePal, String... strArr) {
        nd0.m1875new(litePal, "$this$isExist");
        nd0.m1875new(strArr, "conditions");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T, R> R max(LitePal litePal, String str) {
        nd0.m1875new(litePal, "$this$max");
        nd0.m1875new(str, "columnName");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T, R> FindExecutor<R> maxAsync(LitePal litePal, String str) {
        nd0.m1875new(litePal, "$this$maxAsync");
        nd0.m1875new(str, "columnName");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T, R> R min(LitePal litePal, String str) {
        nd0.m1875new(litePal, "$this$min");
        nd0.m1875new(str, "columnName");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T, R> FindExecutor<R> minAsync(LitePal litePal, String str) {
        nd0.m1875new(litePal, "$this$minAsync");
        nd0.m1875new(str, "columnName");
        nd0.m1869case();
        throw null;
    }

    public static final synchronized boolean runInTransaction(@NotNull LitePal litePal, @NotNull hd0<Boolean> hd0Var) {
        boolean z;
        synchronized (LitePalKt.class) {
            nd0.m1875new(litePal, "$this$runInTransaction");
            nd0.m1875new(hd0Var, "block");
            LitePal.beginTransaction();
            try {
                z = hd0Var.mo51do().booleanValue();
            } catch (Exception unused) {
                z = false;
            }
            if (z) {
                LitePal.setTransactionSuccessful();
            }
            LitePal.endTransaction();
        }
        return z;
    }

    public static final <T extends LitePalSupport> boolean saveAll(@NotNull Collection<? extends T> collection) {
        nd0.m1875new(collection, "$this$saveAll");
        return LitePal.saveAll(collection);
    }

    public static final /* synthetic */ <T, R> R sum(LitePal litePal, String str) {
        nd0.m1875new(litePal, "$this$sum");
        nd0.m1875new(str, "columnName");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T, R> FindExecutor<R> sumAsync(LitePal litePal, String str) {
        nd0.m1875new(litePal, "$this$sumAsync");
        nd0.m1875new(str, "columnName");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> int update(LitePal litePal, ContentValues contentValues, long j) {
        nd0.m1875new(litePal, "$this$update");
        nd0.m1875new(contentValues, "values");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> int updateAll(LitePal litePal, ContentValues contentValues, String... strArr) {
        nd0.m1875new(litePal, "$this$updateAll");
        nd0.m1875new(contentValues, "values");
        nd0.m1875new(strArr, "conditions");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> UpdateOrDeleteExecutor updateAllAsync(LitePal litePal, ContentValues contentValues, String... strArr) {
        nd0.m1875new(litePal, "$this$updateAllAsync");
        nd0.m1875new(contentValues, "values");
        nd0.m1875new(strArr, "conditions");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> UpdateOrDeleteExecutor updateAsync(LitePal litePal, ContentValues contentValues, long j) {
        nd0.m1875new(litePal, "$this$updateAsync");
        nd0.m1875new(contentValues, "values");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> T find(LitePal litePal, long j, boolean z) {
        nd0.m1875new(litePal, "$this$find");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> List<T> findAll(LitePal litePal, boolean z, long... jArr) {
        nd0.m1875new(litePal, "$this$findAll");
        nd0.m1875new(jArr, "ids");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> FindMultiExecutor<T> findAllAsync(LitePal litePal, boolean z, long... jArr) {
        nd0.m1875new(litePal, "$this$findAllAsync");
        nd0.m1875new(jArr, "ids");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> T findAsync(LitePal litePal, long j, boolean z) {
        nd0.m1875new(litePal, "$this$findAsync");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> T findFirst(LitePal litePal, boolean z) {
        nd0.m1875new(litePal, "$this$findFirst");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> FindExecutor<T> findFirstAsync(LitePal litePal, boolean z) {
        nd0.m1875new(litePal, "$this$findFirstAsync");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <T> T findLast(LitePal litePal, boolean z) {
        nd0.m1875new(litePal, "$this$findLast");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <T> FindExecutor<T> findLastAsync(LitePal litePal, boolean z) {
        nd0.m1875new(litePal, "$this$findLastAsync");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <R> R max(LitePal litePal, String str, String str2) {
        nd0.m1875new(litePal, "$this$max");
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <R> FindExecutor<R> maxAsync(LitePal litePal, String str, String str2) {
        nd0.m1875new(litePal, "$this$maxAsync");
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <R> R min(LitePal litePal, String str, String str2) {
        nd0.m1875new(litePal, "$this$min");
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <R> FindExecutor<R> minAsync(LitePal litePal, String str, String str2) {
        nd0.m1875new(litePal, "$this$minAsync");
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1869case();
        throw null;
    }

    public static final /* synthetic */ <R> R sum(LitePal litePal, String str, String str2) {
        nd0.m1875new(litePal, "$this$sum");
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1869case();
        throw null;
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    public static final /* synthetic */ <R> FindExecutor<R> sumAsync(LitePal litePal, String str, String str2) {
        nd0.m1875new(litePal, "$this$sumAsync");
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1869case();
        throw null;
    }
}
