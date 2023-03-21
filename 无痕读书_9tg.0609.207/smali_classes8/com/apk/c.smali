.class public Lcom/apk/c;
.super Lcom/apk/f;
.source "FullVideoAdHelper.java"


# static fields
.field public static this:Lcom/apk/c;


# instance fields
.field public else:Lcom/apk/c60;

.field public goto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/apk/v60;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f;-><init>()V

    const-string v0, "full"

    .line 2
    iput-object v0, p0, Lcom/apk/f;->try:Ljava/lang/String;

    return-void
.end method

.method public static while()Lcom/apk/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/c;->this:Lcom/apk/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/c;->this:Lcom/apk/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/c;

    invoke-direct {v1}, Lcom/apk/c;-><init>()V

    sput-object v1, Lcom/apk/c;->this:Lcom/apk/c;

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
    sget-object v0, Lcom/apk/c;->this:Lcom/apk/c;

    return-object v0
.end method


# virtual methods
.method public case()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/c;->else:Lcom/apk/c60;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public const()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/apk/f;->goto()V

    .line 2
    iget-object v0, p0, Lcom/apk/c;->else:Lcom/apk/c60;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Lcom/apk/c60;->new:Lcom/apk/p50;

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/apk/c60;->if:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/apk/p50;->goto(Landroid/app/Activity;)Z

    move-result v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/c;->else:Lcom/apk/c60;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/apk/c;->else:Lcom/apk/c60;

    :cond_1
    return v1
.end method

.method public else(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/c;->else:Lcom/apk/c60;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/c60;

    iget-object v1, p0, Lcom/apk/f;->if:Landroid/app/Activity;

    new-instance v2, Lcom/apk/c$do;

    invoke-direct {v2, p0}, Lcom/apk/c$do;-><init>(Lcom/apk/c;)V

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/apk/c60;-><init>(Landroid/app/Activity;Lcom/apk/v60;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apk/c;->else:Lcom/apk/c60;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/c;->else:Lcom/apk/c60;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/apk/c60;->case(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public final(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/f;->goto()V

    .line 2
    iget-object v0, p0, Lcom/apk/c;->else:Lcom/apk/c60;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/c60;->goto(Landroid/app/Activity;)Z

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/apk/c;->else:Lcom/apk/c60;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apk/c;->else:Lcom/apk/c60;

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public import(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/v60;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f;->if:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "\u6ca1\u6709\u7ed1\u5b9a\u4e3b\u9875\u9762Activity"

    .line 2
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/c;->goto:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/c;->goto:Ljava/util/Map;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/c;->goto:Ljava/util/Map;

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-super {p0, p1, p2, p3, p5}, Lcom/apk/f;->new(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f;->if:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "\u6ca1\u6709\u7ed1\u5b9a\u4e3b\u9875\u9762Activity"

    .line 2
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/apk/f;->try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public super(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public throw(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/f;->do:Z

    .line 2
    iget-object v0, p0, Lcom/apk/c;->goto:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
