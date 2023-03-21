.class public Lcom/apk/e;
.super Lcom/apk/f;
.source "RewardVideoAdHelper.java"


# static fields
.field public static this:Lcom/apk/e;


# instance fields
.field public else:Lcom/apk/g60;

.field public goto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/apk/z60;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f;-><init>()V

    const-string v0, "jl"

    .line 2
    iput-object v0, p0, Lcom/apk/f;->try:Ljava/lang/String;

    return-void
.end method

.method public static while()Lcom/apk/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/e;->this:Lcom/apk/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/e;->this:Lcom/apk/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/e;

    invoke-direct {v1}, Lcom/apk/e;-><init>()V

    sput-object v1, Lcom/apk/e;->this:Lcom/apk/e;

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
    sget-object v0, Lcom/apk/e;->this:Lcom/apk/e;

    return-object v0
.end method


# virtual methods
.method public case()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/e;->else:Lcom/apk/g60;

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
    iget-object v0, p0, Lcom/apk/e;->else:Lcom/apk/g60;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Lcom/apk/g60;->new:Lcom/apk/m60;

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/apk/g60;->if:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/apk/m60;->else(Landroid/app/Activity;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/e;->else:Lcom/apk/g60;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/apk/e;->else:Lcom/apk/g60;

    :cond_1
    return v1
.end method

.method public else(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/e;->else:Lcom/apk/g60;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/g60;

    iget-object v1, p0, Lcom/apk/f;->if:Landroid/app/Activity;

    new-instance v2, Lcom/apk/e$do;

    invoke-direct {v2, p0}, Lcom/apk/e$do;-><init>(Lcom/apk/e;)V

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/apk/g60;-><init>(Landroid/app/Activity;Lcom/apk/z60;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apk/e;->else:Lcom/apk/g60;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/e;->else:Lcom/apk/g60;

    if-eqz v0, :cond_6

    .line 4
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    iget-object p1, v0, Lcom/apk/g60;->for:Lcom/apk/z60;

    invoke-virtual {v0, p1}, Lcom/apk/p70;->if(Lcom/apk/b70;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/apk/k40;->extends()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object p1, v0, Lcom/apk/g60;->for:Lcom/apk/z60;

    invoke-virtual {v0, p1}, Lcom/apk/p70;->for(Lcom/apk/b70;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, v0, Lcom/apk/g60;->if:Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 9
    iget-object p1, v0, Lcom/apk/g60;->for:Lcom/apk/z60;

    invoke-virtual {v0, p1}, Lcom/apk/p70;->do(Lcom/apk/b70;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, v0, Lcom/apk/g60;->for:Lcom/apk/z60;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/apk/p70;->new(IILcom/apk/b70;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenLog()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a\u5f00\u59cb\u52a0\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/k40;->final(Ljava/lang/String;)V

    .line 13
    :cond_5
    new-instance v1, Lcom/apk/m60;

    invoke-direct {v1}, Lcom/apk/m60;-><init>()V

    iput-object v1, v0, Lcom/apk/g60;->new:Lcom/apk/m60;

    .line 14
    iget-object v2, v0, Lcom/apk/g60;->if:Landroid/app/Activity;

    iget-object v0, v0, Lcom/apk/g60;->try:Lcom/apk/z60;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/apk/m60;->case(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;)V

    :goto_0
    return-void

    :cond_6
    const/4 p1, 0x0

    .line 15
    throw p1
.end method

.method public final(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/e;->const()Z

    const/4 p1, 0x0

    return p1
.end method

.method public import(Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/apk/e;->goto:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/e;->goto:Ljava/util/Map;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/e;->goto:Ljava/util/Map;

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    .line 6
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/apk/f;->new(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/apk/e;->goto:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
