.class public Lcom/umeng/commonsdk/config/FieldManager;
.super Ljava/lang/Object;
.source "FieldManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/config/FieldManager$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "cfgfd"

.field public static b:Lcom/umeng/commonsdk/config/b;

.field public static c:Z

.field public static d:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/config/b;->b()Lcom/umeng/commonsdk/config/b;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/config/FieldManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/commonsdk/config/FieldManager;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p0, :cond_2

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "@"

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 43
    array-length v1, p0

    if-ge v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 44
    :try_start_0
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 45
    aget-object p0, p0, v3

    .line 46
    new-instance v3, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static a()Lcom/umeng/commonsdk/config/FieldManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager$a;->a()Lcom/umeng/commonsdk/config/FieldManager;

    move-result-object v0

    return-object v0
.end method

.method public static allow(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 3
    monitor-exit v0

    return p0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/umeng/commonsdk/config/b;->a(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 11

    const-string v0, "1001@3758096383,2147483647,262143,2047"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    const-class v2, Lcom/umeng/commonsdk/config/d$a;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/umeng/commonsdk/config/d$b;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Lcom/umeng/commonsdk/config/d$c;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Lcom/umeng/commonsdk/config/d$d;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "cfgfd"

    .line 7
    invoke-static {p1, v2, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object v2, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 9
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 10
    iget-object v5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 11
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    move-object v0, p1

    :cond_0
    const-string p1, ","

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 14
    array-length v0, p1

    if-lez v0, :cond_1

    .line 15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v6, Lcom/umeng/commonsdk/config/g;

    invoke-direct {v6}, Lcom/umeng/commonsdk/config/g;-><init>()V

    :goto_0
    if-ge v3, v0, :cond_1

    .line 17
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/umeng/commonsdk/config/e;

    aget-object v8, p1, v3

    sget-object v9, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    aget-object v10, v1, v3

    invoke-static {v10}, Lcom/umeng/commonsdk/config/d;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lcom/umeng/commonsdk/config/e;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_1
    sput-boolean v4, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    .line 20
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const-string p1, "1001@3758096383,2147483647,262143,2047"

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 21
    const-class v1, Lcom/umeng/commonsdk/config/d$a;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/umeng/commonsdk/config/d$b;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/umeng/commonsdk/config/d$c;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, Lcom/umeng/commonsdk/config/d$d;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 26
    sget-object v1, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v4, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    invoke-virtual {v4}, Lcom/umeng/commonsdk/config/b;->a()V

    if-eqz p2, :cond_0

    .line 28
    invoke-static {p2}, Lcom/umeng/commonsdk/config/FieldManager;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    .line 29
    iget-object v4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 30
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    move-object p1, p2

    :cond_0
    const-string p2, ","

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 33
    array-length p2, p1

    if-lez p2, :cond_1

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v5, Lcom/umeng/commonsdk/config/g;

    invoke-direct {v5}, Lcom/umeng/commonsdk/config/g;-><init>()V

    :goto_0
    if-ge v2, p2, :cond_1

    .line 36
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/umeng/commonsdk/config/e;

    aget-object v7, p1, v2

    sget-object v8, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    aget-object v9, v0, v2

    invoke-static {v9}, Lcom/umeng/commonsdk/config/d;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lcom/umeng/commonsdk/config/e;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_1
    sput-boolean v3, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    .line 39
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
