.class public Lcom/manhua/utils/image/DesGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "DesGlideModule.java"


# annotations
.annotation build Lcom/bumptech/glide/annotation/GlideModule;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/content/Context;Lcom/apk/ji;)V
    .locals 4

    .line 1
    new-instance p1, Lcom/apk/dr;

    invoke-direct {p1}, Lcom/apk/dr;-><init>()V

    sget-object v0, Lcom/apk/ej;->do:Lcom/apk/ej;

    invoke-virtual {p1, v0}, Lcom/apk/xq;->class(Lcom/apk/ej;)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/dr;

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Lcom/apk/ki;

    invoke-direct {v0, p2, p1}, Lcom/apk/ki;-><init>(Lcom/apk/ji;Lcom/apk/dr;)V

    const-string p1, "Argument must not be null"

    .line 3
    invoke-static {v0, p1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object v0, p2, Lcom/apk/ji;->class:Lcom/apk/ii$do;

    const/high16 p1, 0x40000000    # 2.0f

    .line 5
    new-instance v0, Lcom/apk/cm;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/a6;->case()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/apk/cm;-><init>(Ljava/lang/String;J)V

    .line 6
    iput-object v0, p2, Lcom/apk/ji;->goto:Lcom/apk/zl$do;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public if(Landroid/content/Context;Lcom/apk/ii;Lcom/apk/oi;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/ii;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/oi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class p1, Ljava/lang/String;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/apk/o30$do;

    invoke-direct {v0}, Lcom/apk/o30$do;-><init>()V

    .line 2
    iget-object v1, p3, Lcom/apk/oi;->do:Lcom/apk/an;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v1, Lcom/apk/an;->do:Lcom/apk/cn;

    .line 5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    new-instance v3, Lcom/apk/cn$if;

    invoke-direct {v3, p1, p2, v0}, Lcom/apk/cn$if;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)V

    .line 7
    iget-object p1, v2, Lcom/apk/cn;->do:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v2

    .line 9
    iget-object p1, v1, Lcom/apk/an;->if:Lcom/apk/an$do;

    .line 10
    iget-object p1, p1, Lcom/apk/an$do;->do:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    monitor-exit v1

    .line 12
    const-class p1, Lcom/apk/rm;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/apk/q30$do;

    invoke-direct {v0}, Lcom/apk/q30$do;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/apk/oi;->this(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_3
    monitor-exit v2

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v1

    throw p1
.end method
