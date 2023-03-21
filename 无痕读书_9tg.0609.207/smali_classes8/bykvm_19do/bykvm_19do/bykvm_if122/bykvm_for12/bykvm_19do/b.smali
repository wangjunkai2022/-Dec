.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;
.super Ljava/lang/Object;
.source "AdEventRepertoryImpl.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/a<",
        "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

.field public final c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;->a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    .line 4
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_adevent"

    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object p1

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const-string v0, " IN "

    goto :goto_0

    :cond_0
    const-string v0, " NOT IN "

    :goto_0
    if-eqz p3, :cond_1

    const-string p3, " OR "

    goto :goto_1

    :cond_1
    const-string p3, " AND "

    :goto_1
    const/16 v1, 0x3e8

    .line 37
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 39
    rem-int v2, v1, p2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v4, v3}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    .line 41
    div-int v2, v1, p2

    goto :goto_2

    .line 42
    :cond_2
    div-int v2, v1, p2

    add-int/lit8 v2, v2, 0x1

    .line 43
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_4

    mul-int v6, v5, p2

    add-int v7, v6, p2

    .line 44
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 45
    invoke-interface {p1, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    const-string v7, "\',\'"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_3

    .line 46
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v7, "(\'"

    .line 47
    invoke-static {v3, p0, v0, v7, v6}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "\')"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 48
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(\'\')"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sql="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "ALTER TABLE adevent_applog ADD COLUMN encrypt INTEGER default 0"

    return-object v0
.end method

.method private declared-synchronized b(IIJ)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    .line 2
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;

    move-result-object v2

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const-string p2, "gen_time < ? AND retry >?"

    invoke-virtual {v2, p1, p2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5ba2\u6237\u7aef\u5bb9\u707e\u72b6\u6001\u4e0b\u4e8b\u4ef6\u8fc7\u671f\u65f6\u95f4(7\u5929)\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "\uff0c\u6210\u529f\u5220\u9664\u65e5\u5fd7\u6761\u6570\uff1adelete count="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdEventThread"

    invoke-static {p2, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(ILjava/util/List;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;

    .line 6
    iget-object v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    .line 8
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "retry"

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "retry"

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "+1"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE "

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "id"

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    .line 16
    invoke-static {p1, v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->a(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string v0, "ALTER TABLE adevent ADD COLUMN encrypt INTEGER default 0"

    return-object v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 2

    const-string v0, "adevent"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string p1, "adevent_applog"

    return-object p1

    :cond_1
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 5

    const-string v0, "CREATE TABLE IF NOT EXISTS "

    const-string v1, "adevent_applog"

    const-string v2, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    const-string v3, "id"

    const-string v4, " TEXT UNIQUE,"

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value"

    const-string v2, " TEXT ,"

    const-string v3, "gen_time"

    const-string v4, " TEXT , "

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "retry"

    const-string v2, " INTEGER default 0, "

    const-string v3, "encrypt"

    const-string v4, " INTEGER default 0"

    .line 3
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 5

    const-string v0, "CREATE TABLE IF NOT EXISTS "

    const-string v1, "adevent"

    const-string v2, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    const-string v3, "id"

    const-string v4, " TEXT UNIQUE,"

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value"

    const-string v2, " TEXT ,"

    const-string v3, "gen_time"

    const-string v4, " TEXT , "

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "retry"

    const-string v2, " INTEGER default 0, "

    const-string v3, "encrypt"

    const-string v4, " INTEGER default 0"

    .line 3
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized a(IILjava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 3
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " DESC limit "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v7, v0

    .line 5
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 6
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->a()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;->a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    move-result-object p3

    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;

    move-result-object v0

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "id"

    const-string p3, "value"

    const-string v2, "encrypt"

    filled-new-array {p1, p3, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_3

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "id"

    .line 8
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "value"

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encrypt"

    .line 10
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 11
    invoke-static {p3, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a(Ljava/lang/String;Ljava/lang/String;I)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p2, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 13
    :cond_2
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 14
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_1
    monitor-exit p0

    return-object p2

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 35
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    const-string v0, "serverbusy_retrycount"

    invoke-virtual {p1, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 36
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    const-string v0, "applog_serverbusy_retrycount"

    invoke-virtual {p1, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized a(IIJ)V
    .locals 0

    monitor-enter p0

    .line 27
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->b(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;)V
    .locals 3

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 15
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 16
    iget-object v1, p2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    .line 17
    iget-object p2, p2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->b:Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "gen_time"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "retry"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;

    move-result-object p2

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;

    invoke-virtual {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->a(ILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;)V

    return-void
.end method

.method public declared-synchronized a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 21
    :try_start_0
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/w;->a(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 22
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;

    .line 24
    iget-object v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "id"

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->a(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/h;

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/i$c;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILjava/util/List;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;",
            ">;IJ)V"
        }
    .end annotation

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/w;->a(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 29
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->b(ILjava/util/List;)V

    .line 30
    invoke-direct {p0, p1, p3, p4, p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->b(IIJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 31
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    const-string v0, "serverbusy_flag"

    invoke-virtual {p1, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 32
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    const-string v0, "applog_serverbusy_flag"

    invoke-virtual {p1, v0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 33
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    const-string v1, "serverbusy_flag"

    invoke-virtual {p1, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 34
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    const-string v1, "applog_serverbusy_flag"

    invoke-virtual {p1, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public b(I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 19
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    const-string v1, "serverbusy_retrycount"

    invoke-virtual {p1, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 20
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/bykvm_19do/b;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    const-string v1, "applog_serverbusy_retrycount"

    invoke-virtual {p1, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method
