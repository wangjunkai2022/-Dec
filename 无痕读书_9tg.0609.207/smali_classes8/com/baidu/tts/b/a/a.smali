.class public Lcom/baidu/tts/b/a/a;
.super Ljava/lang/Object;
.source "EngineFactory.java"


# static fields
.field public static volatile a:Lcom/baidu/tts/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/baidu/tts/b/a/b/b;)Lcom/baidu/tts/b/a/a/d;
    .locals 1

    .line 11
    new-instance v0, Lcom/baidu/tts/b/a/a/c;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/a/c;-><init>()V

    .line 12
    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/a;->a(Lcom/baidu/tts/b/a/b/b;)V

    return-object v0
.end method

.method public static a()Lcom/baidu/tts/b/a/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/baidu/tts/b/a/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/baidu/tts/b/a/a;

    invoke-direct {v1}, Lcom/baidu/tts/b/a/a;-><init>()V

    sput-object v1, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/tts/b/a/a;->a:Lcom/baidu/tts/b/a/a;

    return-object v0
.end method

.method private b()Lcom/baidu/tts/b/a/a/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/tts/b/a/b/f;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/f;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/b/a/b/b;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/baidu/tts/b/a/a/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/tts/b/a/b/e;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/e;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/b/a/b/b;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/baidu/tts/b/a/a/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/tts/b/a/b/d;

    invoke-direct {v0}, Lcom/baidu/tts/b/a/b/d;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/a/a;->a(Lcom/baidu/tts/b/a/b/b;)Lcom/baidu/tts/b/a/a/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/tts/f/f;)Lcom/baidu/tts/b/a/a/d;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/tts/b/a/a$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/baidu/tts/b/a/a;->d()Lcom/baidu/tts/b/a/a/d;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/baidu/tts/b/a/a;->c()Lcom/baidu/tts/b/a/a/d;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/baidu/tts/b/a/a;->b()Lcom/baidu/tts/b/a/a/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method
