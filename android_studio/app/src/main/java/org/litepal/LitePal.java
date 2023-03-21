package org.litepal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.core.app.Person;
import androidx.exifinterface.media.ExifInterface;
import com.apk.nd0;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.litepal.crud.LitePalSupport;
import org.litepal.crud.async.AverageExecutor;
import org.litepal.crud.async.CountExecutor;
import org.litepal.crud.async.FindExecutor;
import org.litepal.crud.async.FindMultiExecutor;
import org.litepal.crud.async.SaveExecutor;
import org.litepal.crud.async.UpdateOrDeleteExecutor;
import org.litepal.parser.LitePalParser;
import org.litepal.tablemanager.callback.DatabaseListener;

/* compiled from: LitePal.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010!\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u0000B\n\b\u0002¢\u0006\u0005\b\u0091\u0001\u0010\u0014J\u0017\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J#\u0010\n\u001a\u00020\t2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010\b\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\n\u0010\rJ+\u0010\u0010\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010\b\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\u0010\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e2\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0010\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0016\u001a\u00020\u00152\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0016\u0010\u0018J#\u0010\u001a\u001a\n \u000f*\u0004\u0018\u00010\u00190\u00192\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001a\u001a\n \u000f*\u0004\u0018\u00010\u00190\u00192\u0006\u0010\f\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u001a\u0010\u001cJ#\u0010\u001f\u001a\u00020\u00152\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0007¢\u0006\u0004\b\u001f\u0010 J3\u0010#\u001a\u00020\u00152\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010!\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b#\u0010$J/\u0010#\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u00012\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010!\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b#\u0010%J;\u0010'\u001a\n \u000f*\u0004\u0018\u00010&0&2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010!\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b'\u0010(J7\u0010'\u001a\n \u000f*\u0004\u0018\u00010&0&2\u0006\u0010\f\u001a\u00020\u00012\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010!\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b'\u0010)J+\u0010*\u001a\n \u000f*\u0004\u0018\u00010&0&2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0007¢\u0006\u0004\b*\u0010+J\u0017\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020\u0001H\u0007¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0003H\u0007¢\u0006\u0004\b0\u0010\u0014J3\u00102\u001a\n \u000f*\u0004\u0018\u00018\u00008\u0000\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0007¢\u0006\u0004\b2\u00103J;\u00102\u001a\n \u000f*\u0004\u0018\u00018\u00008\u0000\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u00104\u001a\u00020-H\u0007¢\u0006\u0004\b2\u00105J[\u0010:\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010908\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u00104\u001a\u00020-2\n\u00107\u001a\u000206\"\u00020\u001dH\u0007¢\u0006\u0004\b:\u0010;JS\u0010:\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010908\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\n\u00107\u001a\u000206\"\u00020\u001dH\u0007¢\u0006\u0004\b:\u0010<J[\u0010>\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010=0=\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u00104\u001a\u00020-2\n\u00107\u001a\u000206\"\u00020\u001dH\u0007¢\u0006\u0004\b>\u0010?JS\u0010>\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010=0=\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\n\u00107\u001a\u000206\"\u00020\u001dH\u0007¢\u0006\u0004\b>\u0010@JO\u0010B\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010A0A\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0007¢\u0006\u0004\bB\u0010CJW\u0010B\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010A0A\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u00104\u001a\u00020-H\u0007¢\u0006\u0004\bB\u0010DJ+\u0010G\u001a\n \u000f*\u0004\u0018\u00010F0F2\u0012\u0010E\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010!\"\u00020\u0001H\u0007¢\u0006\u0004\bG\u0010HJ+\u0010I\u001a\n \u000f*\u0004\u0018\u00018\u00008\u0000\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\bI\u0010JJ3\u0010I\u001a\n \u000f*\u0004\u0018\u00018\u00008\u0000\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u00104\u001a\u00020-H\u0007¢\u0006\u0004\bI\u0010KJG\u0010L\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010A0A\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\bL\u0010MJO\u0010L\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010A0A\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u00104\u001a\u00020-H\u0007¢\u0006\u0004\bL\u0010NJ+\u0010O\u001a\n \u000f*\u0004\u0018\u00018\u00008\u0000\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\bO\u0010JJ3\u0010O\u001a\n \u000f*\u0004\u0018\u00018\u00008\u0000\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u00104\u001a\u00020-H\u0007¢\u0006\u0004\bO\u0010KJG\u0010P\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010A0A\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\bP\u0010MJO\u0010P\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010A0A\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u00104\u001a\u00020-H\u0007¢\u0006\u0004\bP\u0010NJ\u000f\u0010R\u001a\u00020QH\u0007¢\u0006\u0004\bR\u0010SJ\u0017\u0010V\u001a\u00020\u00032\u0006\u0010U\u001a\u00020TH\u0007¢\u0006\u0004\bV\u0010WJ;\u0010X\u001a\u00020-\"\u0004\b\u0000\u001012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010!\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\bX\u0010YJ\u001f\u0010\\\u001a\n \u000f*\u0004\u0018\u00010[0[2\u0006\u0010Z\u001a\u00020\u0015H\u0007¢\u0006\u0004\b\\\u0010]J'\u0010a\u001a\u00020\u0003\"\b\b\u0000\u00101*\u00020^2\f\u0010`\u001a\b\u0012\u0004\u0012\u00028\u00000_H\u0007¢\u0006\u0004\ba\u0010bJ?\u0010e\u001a\n \u000f*\u0004\u0018\u00018\u00008\u0000\"\u0004\b\u0000\u001012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010c\u001a\u00020\u00012\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\be\u0010fJ;\u0010e\u001a\n \u000f*\u0004\u0018\u00018\u00008\u0000\"\u0004\b\u0000\u001012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010c\u001a\u00020\u00012\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\be\u0010gJ[\u0010h\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010A0A\"\u0004\b\u0000\u001012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010c\u001a\u00020\u00012\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\bh\u0010iJW\u0010h\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010A0A\"\u0004\b\u0000\u001012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010c\u001a\u00020\u00012\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\bh\u0010jJ?\u0010k\u001a\n \u000f*\u0004\u0018\u00018\u00008\u0000\"\u0004\b\u0000\u001012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010c\u001a\u00020\u00012\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\bk\u0010fJ;\u0010k\u001a\n \u000f*\u0004\u0018\u00018\u00008\u0000\"\u0004\b\u0000\u001012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010c\u001a\u00020\u00012\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\bk\u0010gJ[\u0010l\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010A0A\"\u0004\b\u0000\u001012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010c\u001a\u00020\u00012\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\bl\u0010iJW\u0010l\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010A0A\"\u0004\b\u0000\u001012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010c\u001a\u00020\u00012\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\bl\u0010jJ\u001f\u0010m\u001a\n \u000f*\u0004\u0018\u00010[0[2\u0006\u0010Z\u001a\u00020\u0015H\u0007¢\u0006\u0004\bm\u0010]J!\u0010n\u001a\n \u000f*\u0004\u0018\u00010[0[2\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\bn\u0010oJ\u0017\u0010r\u001a\u00020\u00032\u0006\u0010q\u001a\u00020pH\u0007¢\u0006\u0004\br\u0010sJ'\u0010t\u001a\u00020-\"\b\b\u0000\u00101*\u00020^2\f\u0010`\u001a\b\u0012\u0004\u0012\u00028\u00000_H\u0007¢\u0006\u0004\bt\u0010uJ/\u0010w\u001a\n \u000f*\u0004\u0018\u00010v0v\"\b\b\u0000\u00101*\u00020^2\f\u0010`\u001a\b\u0012\u0004\u0012\u00028\u00000_H\u0007¢\u0006\u0004\bw\u0010xJ/\u0010z\u001a\n \u000f*\u0004\u0018\u00010[0[2\u0016\u0010y\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010!\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\bz\u0010{J\u000f\u0010|\u001a\u00020\u0003H\u0007¢\u0006\u0004\b|\u0010\u0014J?\u0010}\u001a\n \u000f*\u0004\u0018\u00018\u00008\u0000\"\u0004\b\u0000\u001012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010c\u001a\u00020\u00012\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\b}\u0010fJ;\u0010}\u001a\n \u000f*\u0004\u0018\u00018\u00008\u0000\"\u0004\b\u0000\u001012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010c\u001a\u00020\u00012\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\b}\u0010gJ[\u0010~\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010A0A\"\u0004\b\u0000\u001012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0006\u0010c\u001a\u00020\u00012\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\b~\u0010iJW\u0010~\u001a&\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000 \u000f*\u0012\u0012\f\u0012\n \u000f*\u0004\u0018\u00018\u00008\u0000\u0018\u00010A0A\"\u0004\b\u0000\u001012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010c\u001a\u00020\u00012\f\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\b~\u0010jJ/\u0010\u0081\u0001\u001a\u00020\u00152\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0007\u0010\u0080\u0001\u001a\u00020\u007f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0007¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J?\u0010\u0083\u0001\u001a\u00020\u00152\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0007\u0010\u0080\u0001\u001a\u00020\u007f2\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010!\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J;\u0010\u0083\u0001\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u00012\u0007\u0010\u0080\u0001\u001a\u00020\u007f2\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010!\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0006\b\u0083\u0001\u0010\u0085\u0001JG\u0010\u0086\u0001\u001a\n \u000f*\u0004\u0018\u00010&0&2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0007\u0010\u0080\u0001\u001a\u00020\u007f2\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010!\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001JC\u0010\u0086\u0001\u001a\n \u000f*\u0004\u0018\u00010&0&2\u0006\u0010\f\u001a\u00020\u00012\u0007\u0010\u0080\u0001\u001a\u00020\u007f2\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010!\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0006\b\u0086\u0001\u0010\u0088\u0001J7\u0010\u0089\u0001\u001a\n \u000f*\u0004\u0018\u00010&0&2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\u0007\u0010\u0080\u0001\u001a\u00020\u007f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0007¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001J\u001c\u0010\u008d\u0001\u001a\u00020\u00032\b\u0010\u008c\u0001\u001a\u00030\u008b\u0001H\u0007¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001J\u0011\u0010\u008f\u0001\u001a\u00020\u0003H\u0007¢\u0006\u0005\b\u008f\u0001\u0010\u0014J1\u0010\u0090\u0001\u001a\n \u000f*\u0004\u0018\u00010[0[2\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010!\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0005\b\u0090\u0001\u0010{¨\u0006\u0092\u0001"}, d2 = {"Lorg/litepal/LitePal;", "", Person.KEY_KEY, "", "aesKey", "(Ljava/lang/String;)V", "Ljava/lang/Class;", "modelClass", "column", "", "average", "(Ljava/lang/Class;Ljava/lang/String;)D", "tableName", "(Ljava/lang/String;Ljava/lang/String;)D", "Lorg/litepal/crud/async/AverageExecutor;", "kotlin.jvm.PlatformType", "averageAsync", "(Ljava/lang/Class;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;", "(Ljava/lang/String;Ljava/lang/String;)Lorg/litepal/crud/async/AverageExecutor;", "beginTransaction", "()V", "", "count", "(Ljava/lang/Class;)I", "(Ljava/lang/String;)I", "Lorg/litepal/crud/async/CountExecutor;", "countAsync", "(Ljava/lang/Class;)Lorg/litepal/crud/async/CountExecutor;", "(Ljava/lang/String;)Lorg/litepal/crud/async/CountExecutor;", "", "id", "delete", "(Ljava/lang/Class;J)I", "", "conditions", "deleteAll", "(Ljava/lang/Class;[Ljava/lang/String;)I", "(Ljava/lang/String;[Ljava/lang/String;)I", "Lorg/litepal/crud/async/UpdateOrDeleteExecutor;", "deleteAllAsync", "(Ljava/lang/Class;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;", "(Ljava/lang/String;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;", "deleteAsync", "(Ljava/lang/Class;J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;", "dbName", "", "deleteDatabase", "(Ljava/lang/String;)Z", "endTransaction", ExifInterface.GPS_DIRECTION_TRUE, "find", "(Ljava/lang/Class;J)Ljava/lang/Object;", "isEager", "(Ljava/lang/Class;JZ)Ljava/lang/Object;", "", "ids", "", "", "findAll", "(Ljava/lang/Class;Z[J)Ljava/util/List;", "(Ljava/lang/Class;[J)Ljava/util/List;", "Lorg/litepal/crud/async/FindMultiExecutor;", "findAllAsync", "(Ljava/lang/Class;Z[J)Lorg/litepal/crud/async/FindMultiExecutor;", "(Ljava/lang/Class;[J)Lorg/litepal/crud/async/FindMultiExecutor;", "Lorg/litepal/crud/async/FindExecutor;", "findAsync", "(Ljava/lang/Class;J)Lorg/litepal/crud/async/FindExecutor;", "(Ljava/lang/Class;JZ)Lorg/litepal/crud/async/FindExecutor;", "sql", "Landroid/database/Cursor;", "findBySQL", "([Ljava/lang/String;)Landroid/database/Cursor;", "findFirst", "(Ljava/lang/Class;)Ljava/lang/Object;", "(Ljava/lang/Class;Z)Ljava/lang/Object;", "findFirstAsync", "(Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;", "(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindExecutor;", "findLast", "findLastAsync", "Landroid/database/sqlite/SQLiteDatabase;", "getDatabase", "()Landroid/database/sqlite/SQLiteDatabase;", "Landroid/content/Context;", "context", "initialize", "(Landroid/content/Context;)V", "isExist", "(Ljava/lang/Class;[Ljava/lang/String;)Z", LitePalParser.ATTR_VALUE, "Lorg/litepal/FluentQuery;", "limit", "(I)Lorg/litepal/FluentQuery;", "Lorg/litepal/crud/LitePalSupport;", "", "collection", "markAsDeleted", "(Ljava/util/Collection;)V", "columnName", "columnType", "max", "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "maxAsync", "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;", "min", "minAsync", "offset", "order", "(Ljava/lang/String;)Lorg/litepal/FluentQuery;", "Lorg/litepal/tablemanager/callback/DatabaseListener;", "listener", "registerDatabaseListener", "(Lorg/litepal/tablemanager/callback/DatabaseListener;)V", "saveAll", "(Ljava/util/Collection;)Z", "Lorg/litepal/crud/async/SaveExecutor;", "saveAllAsync", "(Ljava/util/Collection;)Lorg/litepal/crud/async/SaveExecutor;", "columns", "select", "([Ljava/lang/String;)Lorg/litepal/FluentQuery;", "setTransactionSuccessful", "sum", "sumAsync", "Landroid/content/ContentValues;", "values", "update", "(Ljava/lang/Class;Landroid/content/ContentValues;J)I", "updateAll", "(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I", "(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I", "updateAllAsync", "(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;", "(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;", "updateAsync", "(Ljava/lang/Class;Landroid/content/ContentValues;J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;", "Lorg/litepal/LitePalDB;", "litePalDB", "use", "(Lorg/litepal/LitePalDB;)V", "useDefault", "where", "<init>", "core_release"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes7.dex */
public final class LitePal {
    @NotNull
    public static final LitePal INSTANCE = new LitePal();

    @JvmStatic
    public static final void aesKey(@NotNull String str) {
        nd0.m1875new(str, Person.KEY_KEY);
        Operator.aesKey(str);
    }

    @JvmStatic
    public static final double average(@NotNull Class<?> cls, @NotNull String str) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(str, "column");
        return Operator.average(cls, str);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final AverageExecutor averageAsync(@NotNull Class<?> cls, @NotNull String str) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(str, "column");
        return Operator.averageAsync(cls, str);
    }

    @JvmStatic
    public static final void beginTransaction() {
        Operator.beginTransaction();
    }

    @JvmStatic
    public static final int count(@NotNull Class<?> cls) {
        nd0.m1875new(cls, "modelClass");
        return Operator.count(cls);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final CountExecutor countAsync(@NotNull Class<?> cls) {
        nd0.m1875new(cls, "modelClass");
        return Operator.countAsync(cls);
    }

    @JvmStatic
    public static final int delete(@NotNull Class<?> cls, long j) {
        nd0.m1875new(cls, "modelClass");
        return Operator.delete(cls, j);
    }

    @JvmStatic
    public static final int deleteAll(@NotNull Class<?> cls, @NotNull String... strArr) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(strArr, "conditions");
        return Operator.deleteAll(cls, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final UpdateOrDeleteExecutor deleteAllAsync(@NotNull Class<?> cls, @NotNull String... strArr) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(strArr, "conditions");
        return Operator.deleteAllAsync(cls, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final UpdateOrDeleteExecutor deleteAsync(@NotNull Class<?> cls, long j) {
        nd0.m1875new(cls, "modelClass");
        return Operator.deleteAsync(cls, j);
    }

    @JvmStatic
    public static final boolean deleteDatabase(@NotNull String str) {
        nd0.m1875new(str, "dbName");
        return Operator.deleteDatabase(str);
    }

    @JvmStatic
    public static final void endTransaction() {
        Operator.endTransaction();
    }

    @JvmStatic
    public static final <T> T find(@NotNull Class<T> cls, long j) {
        nd0.m1875new(cls, "modelClass");
        return (T) Operator.find(cls, j);
    }

    @JvmStatic
    public static final <T> List<T> findAll(@NotNull Class<T> cls, @NotNull long... jArr) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(jArr, "ids");
        return Operator.findAll(cls, Arrays.copyOf(jArr, jArr.length));
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindMultiExecutor<T> findAllAsync(@NotNull Class<T> cls, @NotNull long... jArr) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(jArr, "ids");
        return Operator.findAllAsync(cls, Arrays.copyOf(jArr, jArr.length));
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindExecutor<T> findAsync(@NotNull Class<T> cls, long j) {
        nd0.m1875new(cls, "modelClass");
        return Operator.findAsync(cls, j);
    }

    @JvmStatic
    public static final Cursor findBySQL(@NotNull String... strArr) {
        nd0.m1875new(strArr, "sql");
        return Operator.findBySQL((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @JvmStatic
    public static final <T> T findFirst(@NotNull Class<T> cls) {
        nd0.m1875new(cls, "modelClass");
        return (T) Operator.findFirst(cls);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindExecutor<T> findFirstAsync(@NotNull Class<T> cls) {
        nd0.m1875new(cls, "modelClass");
        return Operator.findFirstAsync(cls);
    }

    @JvmStatic
    public static final <T> T findLast(@NotNull Class<T> cls) {
        nd0.m1875new(cls, "modelClass");
        return (T) Operator.findLast(cls);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindExecutor<T> findLastAsync(@NotNull Class<T> cls) {
        nd0.m1875new(cls, "modelClass");
        return Operator.findLastAsync(cls);
    }

    @JvmStatic
    @NotNull
    public static final SQLiteDatabase getDatabase() {
        SQLiteDatabase database = Operator.getDatabase();
        nd0.m1872for(database, "Operator.getDatabase()");
        return database;
    }

    @JvmStatic
    public static final void initialize(@NotNull Context context) {
        nd0.m1875new(context, "context");
        Operator.initialize(context);
    }

    @JvmStatic
    public static final <T> boolean isExist(@NotNull Class<T> cls, @NotNull String... strArr) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(strArr, "conditions");
        return Operator.isExist(cls, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @JvmStatic
    public static final FluentQuery limit(int i) {
        return Operator.limit(i);
    }

    @JvmStatic
    public static final <T extends LitePalSupport> void markAsDeleted(@NotNull Collection<? extends T> collection) {
        nd0.m1875new(collection, "collection");
        Operator.markAsDeleted(collection);
    }

    @JvmStatic
    public static final <T> T max(@NotNull Class<?> cls, @NotNull String str, @NotNull Class<T> cls2) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(str, "columnName");
        nd0.m1875new(cls2, "columnType");
        return (T) Operator.max(cls, str, cls2);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindExecutor<T> maxAsync(@NotNull Class<?> cls, @NotNull String str, @NotNull Class<T> cls2) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(str, "columnName");
        nd0.m1875new(cls2, "columnType");
        return Operator.maxAsync(cls, str, cls2);
    }

    @JvmStatic
    public static final <T> T min(@NotNull Class<?> cls, @NotNull String str, @NotNull Class<T> cls2) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(str, "columnName");
        nd0.m1875new(cls2, "columnType");
        return (T) Operator.min(cls, str, cls2);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindExecutor<T> minAsync(@NotNull Class<?> cls, @NotNull String str, @NotNull Class<T> cls2) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(str, "columnName");
        nd0.m1875new(cls2, "columnType");
        return Operator.minAsync(cls, str, cls2);
    }

    @JvmStatic
    public static final FluentQuery offset(int i) {
        return Operator.offset(i);
    }

    @JvmStatic
    public static final FluentQuery order(@Nullable String str) {
        return Operator.order(str);
    }

    @JvmStatic
    public static final void registerDatabaseListener(@NotNull DatabaseListener databaseListener) {
        nd0.m1875new(databaseListener, "listener");
        Operator.registerDatabaseListener(databaseListener);
    }

    @JvmStatic
    public static final <T extends LitePalSupport> boolean saveAll(@NotNull Collection<? extends T> collection) {
        nd0.m1875new(collection, "collection");
        return Operator.saveAll(collection);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T extends LitePalSupport> SaveExecutor saveAllAsync(@NotNull Collection<? extends T> collection) {
        nd0.m1875new(collection, "collection");
        return Operator.saveAllAsync(collection);
    }

    @JvmStatic
    public static final FluentQuery select(@NotNull String... strArr) {
        nd0.m1875new(strArr, "columns");
        return Operator.select((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @JvmStatic
    public static final void setTransactionSuccessful() {
        Operator.setTransactionSuccessful();
    }

    @JvmStatic
    public static final <T> T sum(@NotNull Class<?> cls, @NotNull String str, @NotNull Class<T> cls2) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(str, "columnName");
        nd0.m1875new(cls2, "columnType");
        return (T) Operator.sum(cls, str, cls2);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindExecutor<T> sumAsync(@NotNull Class<?> cls, @NotNull String str, @NotNull Class<T> cls2) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(str, "columnName");
        nd0.m1875new(cls2, "columnType");
        return Operator.sumAsync(cls, str, cls2);
    }

    @JvmStatic
    public static final int update(@NotNull Class<?> cls, @NotNull ContentValues contentValues, long j) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(contentValues, "values");
        return Operator.update(cls, contentValues, j);
    }

    @JvmStatic
    public static final int updateAll(@NotNull Class<?> cls, @NotNull ContentValues contentValues, @NotNull String... strArr) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(contentValues, "values");
        nd0.m1875new(strArr, "conditions");
        return Operator.updateAll(cls, contentValues, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final UpdateOrDeleteExecutor updateAllAsync(@NotNull Class<?> cls, @NotNull ContentValues contentValues, @NotNull String... strArr) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(contentValues, "values");
        nd0.m1875new(strArr, "conditions");
        return Operator.updateAllAsync(cls, contentValues, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final UpdateOrDeleteExecutor updateAsync(@NotNull Class<?> cls, @NotNull ContentValues contentValues, long j) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(contentValues, "values");
        return Operator.updateAsync(cls, contentValues, j);
    }

    @JvmStatic
    public static final void use(@NotNull LitePalDB litePalDB) {
        nd0.m1875new(litePalDB, "litePalDB");
        Operator.use(litePalDB);
    }

    @JvmStatic
    public static final void useDefault() {
        Operator.useDefault();
    }

    @JvmStatic
    public static final FluentQuery where(@NotNull String... strArr) {
        nd0.m1875new(strArr, "conditions");
        return Operator.where((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @JvmStatic
    public static final double average(@NotNull String str, @NotNull String str2) {
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "column");
        return Operator.average(str, str2);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final AverageExecutor averageAsync(@NotNull String str, @NotNull String str2) {
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "column");
        return Operator.averageAsync(str, str2);
    }

    @JvmStatic
    public static final int count(@NotNull String str) {
        nd0.m1875new(str, "tableName");
        return Operator.count(str);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final CountExecutor countAsync(@NotNull String str) {
        nd0.m1875new(str, "tableName");
        return Operator.countAsync(str);
    }

    @JvmStatic
    public static final int deleteAll(@NotNull String str, @NotNull String... strArr) {
        nd0.m1875new(str, "tableName");
        nd0.m1875new(strArr, "conditions");
        return Operator.deleteAll(str, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final UpdateOrDeleteExecutor deleteAllAsync(@NotNull String str, @NotNull String... strArr) {
        nd0.m1875new(str, "tableName");
        nd0.m1875new(strArr, "conditions");
        return Operator.deleteAllAsync(str, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @JvmStatic
    public static final <T> T find(@NotNull Class<T> cls, long j, boolean z) {
        nd0.m1875new(cls, "modelClass");
        return (T) Operator.find(cls, j, z);
    }

    @JvmStatic
    public static final <T> List<T> findAll(@NotNull Class<T> cls, boolean z, @NotNull long... jArr) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(jArr, "ids");
        return Operator.findAll(cls, z, Arrays.copyOf(jArr, jArr.length));
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindMultiExecutor<T> findAllAsync(@NotNull Class<T> cls, boolean z, @NotNull long... jArr) {
        nd0.m1875new(cls, "modelClass");
        nd0.m1875new(jArr, "ids");
        return Operator.findAllAsync(cls, z, Arrays.copyOf(jArr, jArr.length));
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindExecutor<T> findAsync(@NotNull Class<T> cls, long j, boolean z) {
        nd0.m1875new(cls, "modelClass");
        return Operator.findAsync(cls, j, z);
    }

    @JvmStatic
    public static final <T> T findFirst(@NotNull Class<T> cls, boolean z) {
        nd0.m1875new(cls, "modelClass");
        return (T) Operator.findFirst(cls, z);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindExecutor<T> findFirstAsync(@NotNull Class<T> cls, boolean z) {
        nd0.m1875new(cls, "modelClass");
        return Operator.findFirstAsync(cls, z);
    }

    @JvmStatic
    public static final <T> T findLast(@NotNull Class<T> cls, boolean z) {
        nd0.m1875new(cls, "modelClass");
        return (T) Operator.findLast(cls, z);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindExecutor<T> findLastAsync(@NotNull Class<T> cls, boolean z) {
        nd0.m1875new(cls, "modelClass");
        return Operator.findLastAsync(cls, z);
    }

    @JvmStatic
    public static final <T> T max(@NotNull String str, @NotNull String str2, @NotNull Class<T> cls) {
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1875new(cls, "columnType");
        return (T) Operator.max(str, str2, cls);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindExecutor<T> maxAsync(@NotNull String str, @NotNull String str2, @NotNull Class<T> cls) {
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1875new(cls, "columnType");
        return Operator.maxAsync(str, str2, cls);
    }

    @JvmStatic
    public static final <T> T min(@NotNull String str, @NotNull String str2, @NotNull Class<T> cls) {
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1875new(cls, "columnType");
        return (T) Operator.min(str, str2, cls);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindExecutor<T> minAsync(@NotNull String str, @NotNull String str2, @NotNull Class<T> cls) {
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1875new(cls, "columnType");
        return Operator.minAsync(str, str2, cls);
    }

    @JvmStatic
    public static final <T> T sum(@NotNull String str, @NotNull String str2, @NotNull Class<T> cls) {
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1875new(cls, "columnType");
        return (T) Operator.sum(str, str2, cls);
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final <T> FindExecutor<T> sumAsync(@NotNull String str, @NotNull String str2, @NotNull Class<T> cls) {
        nd0.m1875new(str, "tableName");
        nd0.m1875new(str2, "columnName");
        nd0.m1875new(cls, "columnType");
        return Operator.sumAsync(str, str2, cls);
    }

    @JvmStatic
    public static final int updateAll(@NotNull String str, @NotNull ContentValues contentValues, @NotNull String... strArr) {
        nd0.m1875new(str, "tableName");
        nd0.m1875new(contentValues, "values");
        nd0.m1875new(strArr, "conditions");
        return Operator.updateAll(str, contentValues, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Deprecated(message = "This method is deprecated and will be removed in the future releases.", replaceWith = @ReplaceWith(expression = "Handle async db operation in your own logic instead.", imports = {}))
    @JvmStatic
    public static final UpdateOrDeleteExecutor updateAllAsync(@NotNull String str, @NotNull ContentValues contentValues, @NotNull String... strArr) {
        nd0.m1875new(str, "tableName");
        nd0.m1875new(contentValues, "values");
        nd0.m1875new(strArr, "conditions");
        return Operator.updateAllAsync(str, contentValues, (String[]) Arrays.copyOf(strArr, strArr.length));
    }
}
