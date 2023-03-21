.class public abstract Lcom/apk/b7;
.super Lcom/apk/f6;
.source "BaseReadActivity.java"


# instance fields
.field public case:Lcom/biquge/ebook/app/bean/SameTjConfig;

.field public do:J

.field public else:Z

.field public for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

.field public goto:Z

.field public if:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

.field public final new:Landroid/content/ComponentCallbacks2;

.field public try:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/b7$do;

    invoke-direct {v0, p0}, Lcom/apk/b7$do;-><init>(Lcom/apk/b7;)V

    iput-object v0, p0, Lcom/apk/b7;->new:Landroid/content/ComponentCallbacks2;

    return-void
.end method

.method public static i(Lcom/apk/b7;Lcom/biquge/ebook/app/bean/MhtgTwoBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/f7;

    invoke-direct {v0, p0, p1}, Lcom/apk/f7;-><init>(Lcom/apk/b7;Lcom/biquge/ebook/app/bean/MhtgTwoBean;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j(Lcom/apk/b7;Lcom/biquge/ebook/app/bean/MhtgTwoBean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/h7;

    invoke-direct {v0, p0, p1}, Lcom/apk/h7;-><init>(Lcom/apk/b7;Lcom/biquge/ebook/app/bean/MhtgTwoBean;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initData()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/b7;->l(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/apk/b7;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOURCE_NOVEL_VALUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/apk/continue;->break:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apk/b7;->do:J

    .line 7
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/apk/e7;

    invoke-direct {v1, p0}, Lcom/apk/e7;-><init>(Lcom/apk/b7;)V

    .line 8
    iget-object v0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/apk/b7;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOURCE_CARTTON_VALUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/apk/continue;->this:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apk/b7;->do:J

    .line 14
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/apk/g7;

    invoke-direct {v1, p0}, Lcom/apk/g7;-><init>(Lcom/apk/b7;)V

    .line 15
    iget-object v0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/b7;->new:Landroid/content/ComponentCallbacks2;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public k(Ljava/lang/String;Z)V
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "search_"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wap_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/continue;->else:Lcom/biquge/ebook/app/bean/SameCommendBean;

    if-eqz v0, :cond_2

    .line 5
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/b7$if;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/apk/b7$if;-><init>(Lcom/apk/b7;ZLjava/lang/String;Lcom/biquge/ebook/app/bean/SameCommendBean;)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_2
    return-void
.end method

.method public l(Z)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    if-nez p1, :cond_0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->isForce_user()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object p1

    new-instance v1, Lcom/apk/b7$for;

    invoke-direct {v1, p0}, Lcom/apk/b7$for;-><init>(Lcom/apk/b7;)V

    .line 5
    iput-object v1, p1, Lcom/apk/p;->new:Lcom/apk/p$new;

    .line 6
    invoke-virtual {p1, v0}, Lcom/apk/p;->if(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v0
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public synthetic n(Ljava/util/List;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/zu$do;

    invoke-direct {v0, p0}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/apk/zu$do;->class(Ljava/lang/Boolean;)Lcom/apk/zu$do;

    move-result-object v0

    new-instance v1, Lcom/apk/d7;

    invoke-direct {v1, p0}, Lcom/apk/d7;-><init>(Lcom/apk/b7;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/zu$do;->const(Lcom/apk/yv;)Lcom/apk/zu$do;

    move-result-object v0

    new-instance v1, Lcom/expand/CommendMediaDialog;

    invoke-direct {v1, p0, p1}, Lcom/expand/CommendMediaDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/apk/zu$do;->this(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public o(ZZ)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/apk/b7;->try:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    iput-object v1, p0, Lcom/apk/b7;->try:Ljava/util/Timer;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/b7;->new:Landroid/content/ComponentCallbacks2;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 6
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object v0

    .line 7
    iput-object v1, v0, Lcom/apk/p;->new:Lcom/apk/p$new;

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/b7;->goto:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/apk/b7;->goto:Z

    return-void
.end method
