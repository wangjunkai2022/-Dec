.class public Lcom/apk/n$do;
.super Ljava/lang/Object;
.source "AppFrontBackHelper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public do:I

.field public final synthetic if:Lcom/apk/n;


# direct methods
.method public constructor <init>(Lcom/apk/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/n$do;->if:Lcom/apk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/apk/n$do;->do:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iget v0, v1, Lcom/apk/n$do;->do:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/apk/n$do;->do:I

    if-ne v0, v3, :cond_15

    .line 2
    iget-object v0, v1, Lcom/apk/n$do;->if:Lcom/apk/n;

    invoke-static {v0, v2}, Lcom/apk/n;->do(Lcom/apk/n;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, v1, Lcom/apk/n$do;->if:Lcom/apk/n;

    .line 4
    iget-object v0, v0, Lcom/apk/n;->do:Lcom/apk/n$if;

    if-eqz v0, :cond_15

    .line 5
    move-object v4, v0

    check-cast v4, Lcom/biquge/ebook/app/app/AppContext$do;

    .line 6
    iget-object v0, v4, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    .line 7
    iget v0, v0, Lcom/biquge/ebook/app/app/AppContext;->new:I

    const/4 v5, 0x0

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    throw v5

    .line 10
    :cond_2
    :goto_0
    iget-object v0, v4, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    const/4 v6, 0x0

    .line 11
    iput-boolean v6, v0, Lcom/biquge/ebook/app/app/AppContext;->try:Z

    .line 12
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->protected()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 13
    iget-object v0, v4, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    .line 14
    iget-object v0, v0, Lcom/biquge/ebook/app/app/AppContext;->do:Lcom/apk/static;

    if-eqz v0, :cond_12

    const-wide/16 v7, 0x0

    .line 15
    :try_start_0
    iget-object v9, v0, Lcom/apk/static;->do:Ljava/util/List;

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/apk/static;->do:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    iget-wide v9, v0, Lcom/apk/static;->try:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_6

    iget-wide v9, v0, Lcom/apk/static;->new:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_6

    iget-object v9, v0, Lcom/apk/static;->for:Lcom/apk/g;

    if-eqz v9, :cond_6

    .line 17
    iget-object v9, v0, Lcom/apk/static;->for:Lcom/apk/g;

    .line 18
    iget v9, v9, Lcom/apk/g;->for:I

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_4

    mul-int/lit16 v9, v9, 0x3e8

    .line 19
    :cond_4
    iget-wide v10, v0, Lcom/apk/static;->new:J

    int-to-long v12, v9

    cmp-long v9, v10, v12

    if-gez v9, :cond_5

    .line 20
    iput-wide v12, v0, Lcom/apk/static;->new:J

    .line 21
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/apk/static;->try:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/apk/static;->new:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v9, v11

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_12

    .line 23
    iget-object v0, v4, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    .line 24
    iput-boolean v3, v0, Lcom/biquge/ebook/app/app/AppContext;->try:Z

    const-string v0, "SPLASH_AD_FETCHDELAY_SHOW_KEY"

    .line 25
    invoke-static {v0, v6}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    int-to-long v9, v0

    cmp-long v0, v9, v7

    if-lez v0, :cond_10

    .line 26
    iget-object v0, v4, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    .line 27
    iget-object v0, v0, Lcom/biquge/ebook/app/app/AppContext;->do:Lcom/apk/static;

    .line 28
    iget-object v6, v0, Lcom/apk/static;->do:Ljava/util/List;

    if-eqz v6, :cond_10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v0, Lcom/apk/static;->for:Lcom/apk/g;

    if-nez v6, :cond_7

    goto/16 :goto_4

    .line 29
    :cond_7
    invoke-virtual {v6}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v12

    .line 30
    iget-object v6, v0, Lcom/apk/static;->for:Lcom/apk/g;

    invoke-virtual {v6}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v13

    .line 31
    invoke-static {v12}, Lcom/swl/gg/sdk/TrAdSdk;->isFullAdType(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "b_f"

    if-eqz v6, :cond_8

    .line 32
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v0

    invoke-virtual {v0, v12, v13, v7}, Lcom/apk/c;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 33
    :cond_8
    invoke-static {v12}, Lcom/swl/gg/sdk/TrAdSdk;->isRewardAdType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 34
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v0

    invoke-virtual {v0, v12, v13, v7}, Lcom/apk/e;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 35
    :cond_9
    invoke-static {v12}, Lcom/swl/gg/sdk/TrAdSdk;->isSplashAdType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 36
    iget-object v6, v0, Lcom/apk/static;->case:Lcom/apk/e60;

    if-eqz v6, :cond_a

    goto :goto_4

    .line 37
    :cond_a
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/apk/f;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_b

    goto :goto_4

    .line 38
    :cond_b
    new-instance v7, Lcom/apk/e60;

    new-instance v8, Lcom/apk/return;

    invoke-direct {v8, v0}, Lcom/apk/return;-><init>(Lcom/apk/static;)V

    const-string v11, ""

    invoke-direct {v7, v6, v5, v8, v11}, Lcom/apk/e60;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/apk/y60;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/apk/static;->case:Lcom/apk/e60;

    .line 39
    invoke-static {}, Lcom/apk/w0;->default()Z

    move-result v6

    if-nez v6, :cond_d

    .line 40
    iget-object v3, v0, Lcom/apk/static;->case:Lcom/apk/e60;

    invoke-static {}, Lcom/apk/eg;->static()I

    move-result v6

    const/high16 v7, 0x42a00000    # 80.0f

    invoke-static {v7}, Lcom/apk/eg;->catch(F)I

    move-result v7

    sub-int/2addr v6, v7

    if-eqz v3, :cond_c

    if-lez v6, :cond_e

    .line 41
    sput v6, Lcom/apk/n60$do;->new:I

    goto :goto_3

    .line 42
    :cond_c
    throw v5

    .line 43
    :cond_d
    iget-object v6, v0, Lcom/apk/static;->case:Lcom/apk/e60;

    if-eqz v6, :cond_f

    .line 44
    sput-boolean v3, Lcom/apk/n60$do;->do:Z

    .line 45
    :cond_e
    :goto_3
    iget-object v11, v0, Lcom/apk/static;->case:Lcom/apk/e60;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 46
    invoke-virtual/range {v11 .. v16}, Lcom/apk/e60;->try(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_4

    .line 47
    :cond_f
    throw v5

    .line 48
    :cond_10
    :goto_4
    iget-object v0, v4, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    .line 49
    iget-object v3, v0, Lcom/biquge/ebook/app/app/AppContext;->for:Lcom/biquge/ebook/app/app/AppContext$if;

    if-nez v3, :cond_11

    .line 50
    new-instance v3, Lcom/biquge/ebook/app/app/AppContext$if;

    iget-object v6, v4, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    .line 51
    iget-object v6, v6, Lcom/biquge/ebook/app/app/AppContext;->do:Lcom/apk/static;

    .line 52
    invoke-direct {v3, v6, v5}, Lcom/biquge/ebook/app/app/AppContext$if;-><init>(Lcom/apk/static;Lcom/biquge/ebook/app/app/AppContext$do;)V

    .line 53
    iput-object v3, v0, Lcom/biquge/ebook/app/app/AppContext;->for:Lcom/biquge/ebook/app/app/AppContext$if;

    .line 54
    :cond_11
    iget-object v0, v4, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    .line 55
    iget-object v0, v0, Lcom/biquge/ebook/app/app/AppContext;->for:Lcom/biquge/ebook/app/app/AppContext$if;

    .line 56
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x2766

    .line 57
    iput v4, v3, Landroid/os/Message;->what:I

    .line 58
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 60
    :cond_12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "SWITCH_FOREGROUND_KEY"

    invoke-static {v2, v0}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 62
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_5

    .line 63
    :cond_13
    throw v5

    .line 64
    :cond_14
    throw v5

    :cond_15
    :goto_5
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/apk/n$do;->do:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/apk/n$do;->do:I

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/apk/n$do;->if:Lcom/apk/n;

    invoke-static {v0, p1}, Lcom/apk/n;->do(Lcom/apk/n;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/apk/n$do;->if:Lcom/apk/n;

    .line 4
    iget-object p1, p1, Lcom/apk/n;->do:Lcom/apk/n$if;

    if-eqz p1, :cond_7

    .line 5
    check-cast p1, Lcom/biquge/ebook/app/app/AppContext$do;

    .line 6
    iget-object v0, p1, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    .line 7
    iget v0, v0, Lcom/biquge/ebook/app/app/AppContext;->new:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    throw v2

    .line 10
    :cond_2
    :goto_0
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->protected()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p1, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    .line 12
    iget-object v4, v0, Lcom/biquge/ebook/app/app/AppContext;->do:Lcom/apk/static;

    if-nez v4, :cond_3

    .line 13
    new-instance v4, Lcom/apk/static;

    invoke-direct {v4}, Lcom/apk/static;-><init>()V

    .line 14
    iput-object v4, v0, Lcom/biquge/ebook/app/app/AppContext;->do:Lcom/apk/static;

    .line 15
    :cond_3
    iget-object v0, p1, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    .line 16
    iget-object v0, v0, Lcom/biquge/ebook/app/app/AppContext;->do:Lcom/apk/static;

    .line 17
    iget-object v0, v0, Lcom/apk/static;->do:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p1, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    .line 19
    iget-object v0, v0, Lcom/biquge/ebook/app/app/AppContext;->do:Lcom/apk/static;

    .line 20
    iget-object v4, v0, Lcom/apk/static;->for:Lcom/apk/g;

    if-nez v4, :cond_5

    .line 21
    iget-object v4, v0, Lcom/apk/static;->do:Ljava/util/List;

    iget v5, v0, Lcom/apk/static;->if:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apk/g;

    iput-object v4, v0, Lcom/apk/static;->for:Lcom/apk/g;

    .line 22
    iget v4, v0, Lcom/apk/static;->if:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/apk/static;->if:I

    .line 23
    :cond_5
    iget-object p1, p1, Lcom/biquge/ebook/app/app/AppContext$do;->do:Lcom/biquge/ebook/app/app/AppContext;

    .line 24
    iget-object p1, p1, Lcom/biquge/ebook/app/app/AppContext;->do:Lcom/apk/static;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 26
    iput-wide v4, p1, Lcom/apk/static;->try:J

    .line 27
    :cond_6
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object p1

    .line 28
    iget p1, p1, Lcom/apk/continue;->try:I

    if-nez p1, :cond_7

    .line 29
    new-instance p1, Lcom/apk/q5;

    invoke-direct {p1, v2, v2}, Lcom/apk/q5;-><init>(Landroid/app/Activity;Lcom/apk/y5;)V

    .line 30
    iput-boolean v1, p1, Lcom/apk/q5;->try:Z

    .line 31
    invoke-virtual {p1, v3}, Lcom/apk/q5;->case(Z)V

    :cond_7
    return-void
.end method
