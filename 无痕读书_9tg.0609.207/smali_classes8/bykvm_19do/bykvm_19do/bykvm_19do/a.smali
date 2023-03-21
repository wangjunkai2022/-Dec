.class public final Lbykvm_19do/bykvm_19do/bykvm_19do/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static c:Z = true

.field public static d:Lbykvm_19do/bykvm_19do/bykvm_19do/e0;

.field public static volatile e:Lbykvm_19do/bykvm_19do/bykvm_19do/d;

.field public static f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Lbykvm_19do/bykvm_19do/bykvm_19do/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/e0;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/e0;-><init>()V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->d:Lbykvm_19do/bykvm_19do/bykvm_19do/e0;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 19
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()V
    .locals 0

    .line 16
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->h()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/h;)V
    .locals 4

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Init Twice!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->s()Lbykvm_19do/bykvm_19do/bykvm_19do/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "need to involve setSensitiveInfoProvider!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->i()Lbykvm_19do/bykvm_19do/bykvm_19do/v1;

    move-result-object v0

    .line 7
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-direct {v1, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;-><init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/h;)V

    .line 8
    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    invoke-direct {v2, p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;-><init>(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;)V

    .line 9
    new-instance v3, Lbykvm_19do/bykvm_19do/bykvm_19do/j0;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/h;->o()Lbykvm_19do/bykvm_19do/bykvm_19do/f;

    move-result-object p1

    invoke-direct {v3, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j0;-><init>(Lbykvm_19do/bykvm_19do/bykvm_19do/f;)V

    .line 10
    invoke-virtual {v0, p0, v1, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->a(Landroid/app/Application;Lbykvm_19do/bykvm_19do/bykvm_19do/j2;Lbykvm_19do/bykvm_19do/bykvm_19do/k2;Lbykvm_19do/bykvm_19do/bykvm_19do/j0;)V

    .line 11
    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    .line 12
    sput-object v2, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    .line 13
    sget-object p1, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->J()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    new-instance p1, Lcom/bytedance/mapplog/collector/Collector;

    invoke-direct {p1}, Lcom/bytedance/mapplog/collector/Collector;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    const/4 p0, 0x0

    const-string p1, "Inited"

    .line 15
    invoke-static {p1, p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_19do/c;)V
    .locals 1

    .line 47
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->d:Lbykvm_19do/bykvm_19do/bykvm_19do/e0;

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/e0;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/c;)V

    return-void
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_19do/e;)V
    .locals 0

    .line 48
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/s0;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/e;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 40
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 45
    :goto_1
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 46
    :cond_1
    :goto_2
    invoke-static {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "eventName is empty"

    .line 37
    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "2"

    invoke-direct {v0, v3, v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/c0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V

    .line 39
    :cond_0
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/y;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v0, p0, v2, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/y;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/v1;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/u;)V

    return-void
.end method

.method public static a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 17
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->a(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 4

    .line 21
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->h()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "UTF-8"

    if-eqz v2, :cond_0

    .line 23
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :try_start_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    .line 25
    :cond_0
    :try_start_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    if-eqz v1, :cond_1

    .line 26
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 27
    :goto_1
    :try_start_5
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_1

    .line 28
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 29
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 30
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 31
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/bytedance/mapplog/util/TTEncryptUtils;->do([BI)[B

    move-result-object p0

    :cond_2
    return-object p0

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_3

    .line 33
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 34
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/l0;->a(Ljava/lang/Throwable;)V

    .line 35
    :cond_3
    :goto_3
    throw p0
.end method

.method public static b()Lorg/json/JSONObject;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->M()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->c:Z

    return v0
.end method

.method public static f()Lbykvm_19do/bykvm_19do/bykvm_19do/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->d:Lbykvm_19do/bykvm_19do/bykvm_19do/e0;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static i()Lbykvm_19do/bykvm_19do/bykvm_19do/d;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->e:Lbykvm_19do/bykvm_19do/bykvm_19do/d;

    return-object v0
.end method

.method public static j()Lbykvm_19do/bykvm_19do/bykvm_19do/b;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->g:Lbykvm_19do/bykvm_19do/bykvm_19do/b;

    return-object v0
.end method

.method public static k()Lbykvm_19do/bykvm_19do/bykvm_19do/h;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    if-eqz v0, :cond_0

    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->p()Lbykvm_19do/bykvm_19do/bykvm_19do/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static l()I
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_19do/j2;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/j2;->A()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/k2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/k2;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
