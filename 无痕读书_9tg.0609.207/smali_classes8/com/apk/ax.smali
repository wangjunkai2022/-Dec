.class public abstract Lcom/apk/ax;
.super Ljava/lang/Object;
.source "BaseCachePolicy.java"

# interfaces
.implements Lcom/apk/bx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/bx<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public case:Lcom/apk/mx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/mx<",
            "TT;>;"
        }
    .end annotation
.end field

.field public do:Lcom/apk/qy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/qy<",
            "TT;+",
            "Lcom/apk/qy;",
            ">;"
        }
    .end annotation
.end field

.field public else:Lcom/apk/ww;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/ww<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile for:I

.field public volatile if:Z

.field public new:Z

.field public try:Lcom/apk/zf0;


# direct methods
.method public constructor <init>(Lcom/apk/qy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qy<",
            "TT;+",
            "Lcom/apk/qy;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/ax;->for:I

    .line 3
    iput-object p1, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    return-void
.end method


# virtual methods
.method public break()Lcom/apk/iy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apk/iy<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-interface {v1}, Lcom/apk/zf0;->throw()Lcom/apk/ch0;

    move-result-object v1

    .line 2
    iget v2, v1, Lcom/apk/ch0;->try:I

    const/16 v3, 0x194

    if-eq v2, v3, :cond_1

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    invoke-virtual {v2}, Lcom/apk/qy;->this()Lcom/apk/nx;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/apk/nx;->convertResponse(Lcom/apk/ch0;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    iget-object v3, v1, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 5
    invoke-virtual {p0, v3, v2}, Lcom/apk/ax;->const(Lcom/apk/sg0;Ljava/lang/Object;)V

    .line 6
    iget-object v3, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {v0, v2, v3, v1}, Lcom/apk/iy;->try(ZLjava/lang/Object;Lcom/apk/zf0;Lcom/apk/ch0;)Lcom/apk/iy;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {}, Lcom/apk/ay;->do()Lcom/apk/ay;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/apk/iy;->if(ZLcom/apk/zf0;Lcom/apk/ch0;Ljava/lang/Throwable;)Lcom/apk/iy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/apk/ax;->for:I

    iget-object v3, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    .line 9
    iget v3, v3, Lcom/apk/qy;->try:I

    if-ge v2, v3, :cond_2

    .line 10
    iget v2, p0, Lcom/apk/ax;->for:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/apk/ax;->for:I

    .line 11
    iget-object v2, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    invoke-virtual {v2}, Lcom/apk/qy;->break()Lcom/apk/zf0;

    move-result-object v2

    iput-object v2, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    .line 12
    invoke-virtual {p0}, Lcom/apk/ax;->break()Lcom/apk/iy;

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/apk/iy;->if(ZLcom/apk/zf0;Lcom/apk/ch0;Ljava/lang/Throwable;)Lcom/apk/iy;

    move-result-object v0

    return-object v0
.end method

.method public case(Lcom/apk/zf0;Lcom/apk/ch0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public catch()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-interface {v1}, Lcom/apk/zf0;->throw()Lcom/apk/ch0;

    move-result-object v1

    .line 2
    iget v2, v1, Lcom/apk/ch0;->try:I

    const/16 v3, 0x194

    if-eq v2, v3, :cond_2

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    invoke-virtual {v2}, Lcom/apk/qy;->this()Lcom/apk/nx;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/apk/nx;->convertResponse(Lcom/apk/ch0;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    iget-object v3, v1, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 5
    invoke-virtual {p0, v3, v2}, Lcom/apk/ax;->const(Lcom/apk/sg0;Ljava/lang/Object;)V

    .line 6
    iget-object v3, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {v0, v2, v3, v1}, Lcom/apk/iy;->try(ZLjava/lang/Object;Lcom/apk/zf0;Lcom/apk/ch0;)Lcom/apk/iy;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/apk/ax;->case:Lcom/apk/mx;

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/apk/ax;->case:Lcom/apk/mx;

    invoke-virtual {v2, v1}, Lcom/apk/mx;->onSuccess(Lcom/apk/iy;)V

    .line 9
    iget-object v2, p0, Lcom/apk/ax;->case:Lcom/apk/mx;

    invoke-virtual {v2, v1}, Lcom/apk/mx;->onFinish(Lcom/apk/iy;)V

    :cond_1
    return-void

    .line 10
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {}, Lcom/apk/ay;->do()Lcom/apk/ay;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/apk/iy;->if(ZLcom/apk/zf0;Lcom/apk/ch0;Ljava/lang/Throwable;)Lcom/apk/iy;

    move-result-object v1

    .line 11
    invoke-interface {p0, v1}, Lcom/apk/bx;->do(Lcom/apk/iy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 12
    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/apk/ax;->for:I

    iget-object v4, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    .line 13
    iget v4, v4, Lcom/apk/qy;->try:I

    if-ge v2, v4, :cond_3

    .line 14
    iget v2, p0, Lcom/apk/ax;->for:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/apk/ax;->for:I

    .line 15
    iget-object v2, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    invoke-virtual {v2}, Lcom/apk/qy;->break()Lcom/apk/zf0;

    move-result-object v2

    iput-object v2, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    .line 16
    invoke-virtual {p0}, Lcom/apk/ax;->catch()V

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v1}, Lcom/apk/iy;->if(ZLcom/apk/zf0;Lcom/apk/ch0;Ljava/lang/Throwable;)Lcom/apk/iy;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/apk/ax;->case:Lcom/apk/mx;

    if-eqz v1, :cond_6

    .line 19
    iget-object v2, p0, Lcom/apk/ax;->else:Lcom/apk/ww;

    if-nez v2, :cond_4

    .line 20
    invoke-virtual {v1, v0}, Lcom/apk/mx;->onError(Lcom/apk/iy;)V

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/apk/ax;->else:Lcom/apk/ww;

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, v0, Lcom/apk/ww;->new:Ljava/lang/Object;

    .line 23
    iget-object v1, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-static {v3, v0, v1, v4}, Lcom/apk/iy;->try(ZLjava/lang/Object;Lcom/apk/zf0;Lcom/apk/ch0;)Lcom/apk/iy;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/apk/ax;->case:Lcom/apk/mx;

    invoke-virtual {v1, v0}, Lcom/apk/mx;->onFinish(Lcom/apk/iy;)V

    goto :goto_1

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/apk/ax;->case:Lcom/apk/mx;

    invoke-virtual {v0, v4}, Lcom/apk/mx;->onFinish(Lcom/apk/iy;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public class(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    .line 2
    iget-object v0, v0, Lcom/apk/tw;->if:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final const(Lcom/apk/sg0;Ljava/lang/Object;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/sg0;",
            "TT;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    iget-object v0, v1, Lcom/apk/ax;->do:Lcom/apk/qy;

    .line 2
    iget-object v4, v0, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 3
    sget-object v5, Lcom/apk/xw;->if:Lcom/apk/xw;

    if-ne v4, v5, :cond_0

    return-void

    .line 4
    :cond_0
    instance-of v5, v3, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v5, v0, Lcom/apk/qy;->else:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/apk/xw;->do:Lcom/apk/xw;

    const/4 v6, 0x0

    if-ne v4, v0, :cond_d

    const-string v0, "Date"

    .line 7
    invoke-virtual {v2, v0}, Lcom/apk/sg0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/fy;->do(Ljava/lang/String;)J

    move-result-wide v8

    const-string v0, "Expires"

    .line 8
    invoke-virtual {v2, v0}, Lcom/apk/sg0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :try_start_0
    invoke-static {v0}, Lcom/apk/fy;->if(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v10, -0x1

    :goto_0
    const-string v0, "Cache-Control"

    .line 10
    invoke-virtual {v2, v0}, Lcom/apk/sg0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Pragma"

    invoke-virtual {v2, v4}, Lcom/apk/sg0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    move-object v0, v4

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 11
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_5

    cmp-long v4, v10, v12

    if-gtz v4, :cond_5

    :cond_4
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 12
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 13
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v14, ","

    invoke-direct {v4, v0, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v14, v12

    .line 14
    :cond_6
    :goto_3
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "no-cache"

    .line 16
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "no-store"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    const-string v7, "max-age="

    .line 17
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x8

    .line 18
    :try_start_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    cmp-long v0, v14, v12

    if-gtz v0, :cond_6

    goto :goto_2

    :catch_1
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_8
    move-wide v14, v12

    .line 20
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v0, v8, v12

    if-lez v0, :cond_a

    goto :goto_4

    :cond_a
    move-wide/from16 v8, v16

    :goto_4
    cmp-long v0, v14, v12

    if-lez v0, :cond_b

    const-wide/16 v10, 0x3e8

    mul-long v14, v14, v10

    add-long v10, v14, v8

    goto :goto_5

    :cond_b
    cmp-long v0, v10, v12

    if-ltz v0, :cond_c

    goto :goto_5

    :cond_c
    move-wide v10, v12

    goto :goto_5

    .line 21
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 22
    :goto_5
    new-instance v0, Lcom/apk/fy;

    invoke-direct {v0}, Lcom/apk/fy;-><init>()V

    if-eqz v2, :cond_f

    .line 23
    new-instance v4, Ljava/util/TreeSet;

    .line 24
    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v8, "java.lang.String.CASE_INSENSITIVE_ORDER"

    invoke-static {v7, v8}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {v4, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/apk/sg0;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_e

    .line 27
    invoke-virtual {v2, v8}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 28
    :cond_e
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    const-string v7, "Collections.unmodifiableSet(result)"

    invoke-static {v4, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 30
    invoke-virtual {v2, v7}, Lcom/apk/sg0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/apk/fy;->for(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 31
    :cond_f
    new-instance v2, Lcom/apk/ww;

    invoke-direct {v2}, Lcom/apk/ww;-><init>()V

    .line 32
    iput-object v5, v2, Lcom/apk/ww;->do:Ljava/lang/String;

    .line 33
    iput-object v3, v2, Lcom/apk/ww;->new:Ljava/lang/Object;

    .line 34
    iput-wide v10, v2, Lcom/apk/ww;->if:J

    .line 35
    iput-object v0, v2, Lcom/apk/ww;->for:Lcom/apk/fy;

    :goto_8
    if-nez v2, :cond_12

    .line 36
    sget-object v0, Lcom/apk/ux$if;->do:Lcom/apk/ux;

    .line 37
    iget-object v2, v1, Lcom/apk/ax;->do:Lcom/apk/qy;

    .line 38
    iget-object v2, v2, Lcom/apk/qy;->else:Ljava/lang/String;

    if-eqz v0, :cond_11

    if-nez v2, :cond_10

    goto :goto_9

    :cond_10
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v6

    const-string v2, "key=?"

    .line 39
    invoke-virtual {v0, v2, v3}, Lcom/apk/tx;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    .line 40
    throw v2

    .line 41
    :cond_12
    sget-object v0, Lcom/apk/ux$if;->do:Lcom/apk/ux;

    .line 42
    iget-object v3, v1, Lcom/apk/ax;->do:Lcom/apk/qy;

    .line 43
    iget-object v3, v3, Lcom/apk/qy;->else:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 44
    iput-object v3, v2, Lcom/apk/ww;->do:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v2}, Lcom/apk/tx;->try(Ljava/lang/Object;)Z

    :goto_9
    return-void

    :cond_13
    const/4 v2, 0x0

    .line 46
    throw v2
.end method

.method public else()Lcom/apk/ww;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apk/ww<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/xw;->do:Lcom/apk/xw;

    sget-object v1, Lcom/apk/xw;->if:Lcom/apk/xw;

    iget-object v2, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    .line 2
    iget-object v3, v2, Lcom/apk/qy;->else:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 3
    iget-object v3, v2, Lcom/apk/qy;->if:Ljava/lang/String;

    .line 4
    iget-object v4, v2, Lcom/apk/qy;->this:Lcom/apk/gy;

    .line 5
    iget-object v4, v4, Lcom/apk/gy;->do:Ljava/util/LinkedHashMap;

    invoke-static {v3, v4}, Lcom/apk/mu;->throw(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 6
    iput-object v3, v2, Lcom/apk/qy;->else:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    .line 8
    iget-object v3, v2, Lcom/apk/qy;->case:Lcom/apk/xw;

    if-nez v3, :cond_1

    .line 9
    iput-object v1, v2, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    .line 11
    iget-object v3, v2, Lcom/apk/qy;->case:Lcom/apk/xw;

    const/4 v4, 0x0

    if-eq v3, v1, :cond_b

    .line 12
    sget-object v1, Lcom/apk/ux$if;->do:Lcom/apk/ux;

    .line 13
    iget-object v2, v2, Lcom/apk/qy;->else:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-array v7, v5, [Ljava/lang/String;

    aput-object v2, v7, v6

    const-string v2, "key=?"

    .line 14
    invoke-virtual {v1, v2, v7}, Lcom/apk/tx;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/ww;

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v4

    .line 16
    :goto_1
    iput-object v1, p0, Lcom/apk/ax;->else:Lcom/apk/ww;

    .line 17
    iget-object v2, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    if-eqz v1, :cond_5

    if-ne v3, v0, :cond_5

    .line 18
    iget-object v1, v1, Lcom/apk/ww;->for:Lcom/apk/fy;

    if-eqz v1, :cond_5

    .line 19
    iget-object v7, v1, Lcom/apk/fy;->do:Ljava/util/LinkedHashMap;

    const-string v8, "ETag"

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 20
    iget-object v8, v2, Lcom/apk/qy;->break:Lcom/apk/fy;

    const-string v9, "If-None-Match"

    invoke-virtual {v8, v9, v7}, Lcom/apk/fy;->for(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_4
    iget-object v1, v1, Lcom/apk/fy;->do:Ljava/util/LinkedHashMap;

    const-string v7, "Last-Modified"

    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v7, 0x0

    .line 22
    :try_start_0
    invoke-static {v1}, Lcom/apk/fy;->if(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-wide v9, v7

    :goto_2
    cmp-long v1, v9, v7

    if-lez v1, :cond_5

    .line 23
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 24
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    invoke-direct {v7, v9, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 25
    sget-object v8, Lcom/apk/fy;->if:Ljava/util/TimeZone;

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 26
    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 27
    iget-object v2, v2, Lcom/apk/qy;->break:Lcom/apk/fy;

    const-string v7, "If-Modified-Since"

    invoke-virtual {v2, v7, v1}, Lcom/apk/fy;->for(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_5
    iget-object v1, p0, Lcom/apk/ax;->else:Lcom/apk/ww;

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    .line 29
    iget-wide v7, v2, Lcom/apk/qy;->goto:J

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    if-eqz v1, :cond_9

    if-ne v3, v0, :cond_6

    .line 31
    iget-wide v0, v1, Lcom/apk/ww;->if:J

    cmp-long v2, v0, v9

    if-gez v2, :cond_8

    :goto_3
    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const-wide/16 v11, -0x1

    cmp-long v0, v7, v11

    if-nez v0, :cond_7

    goto :goto_4

    .line 32
    :cond_7
    iget-wide v0, v1, Lcom/apk/ww;->if:J

    add-long/2addr v0, v7

    cmp-long v2, v0, v9

    if-gez v2, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v6, :cond_b

    .line 33
    iget-object v0, p0, Lcom/apk/ax;->else:Lcom/apk/ww;

    .line 34
    iput-boolean v5, v0, Lcom/apk/ww;->try:Z

    goto :goto_5

    .line 35
    :cond_9
    throw v4

    .line 36
    :cond_a
    throw v4

    .line 37
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/apk/ax;->else:Lcom/apk/ww;

    if-eqz v0, :cond_c

    .line 38
    iget-object v1, v0, Lcom/apk/ww;->new:Ljava/lang/Object;

    if-eqz v1, :cond_c

    .line 39
    iget-object v0, v0, Lcom/apk/ww;->for:Lcom/apk/fy;

    if-nez v0, :cond_d

    .line 40
    :cond_c
    iput-object v4, p0, Lcom/apk/ax;->else:Lcom/apk/ww;

    .line 41
    :cond_d
    iget-object v0, p0, Lcom/apk/ax;->else:Lcom/apk/ww;

    if-eqz v0, :cond_e

    sget-object v1, Lcom/apk/xw;->case:Lcom/apk/xw;

    if-eq v3, v1, :cond_e

    .line 42
    iget-boolean v0, v0, Lcom/apk/ww;->try:Z

    if-eqz v0, :cond_e

    .line 43
    iput-object v4, p0, Lcom/apk/ax;->else:Lcom/apk/ww;

    .line 44
    :cond_e
    iget-object v0, p0, Lcom/apk/ax;->else:Lcom/apk/ww;

    return-object v0
.end method

.method public declared-synchronized goto()Lcom/apk/zf0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/ax;->new:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/ax;->new:Z

    .line 3
    iget-object v0, p0, Lcom/apk/ax;->do:Lcom/apk/qy;

    invoke-virtual {v0}, Lcom/apk/qy;->break()Lcom/apk/zf0;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "Already executed!"

    .line 5
    new-instance v1, Lcom/apk/ay;

    invoke-direct {v1, v0}, Lcom/apk/ay;-><init>(Ljava/lang/String;)V

    .line 6
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public this()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ax;->try:Lcom/apk/zf0;

    new-instance v1, Lcom/apk/ax$do;

    invoke-direct {v1, p0}, Lcom/apk/ax$do;-><init>(Lcom/apk/ax;)V

    invoke-interface {v0, v1}, Lcom/apk/zf0;->try(Lcom/apk/ag0;)V

    return-void
.end method
