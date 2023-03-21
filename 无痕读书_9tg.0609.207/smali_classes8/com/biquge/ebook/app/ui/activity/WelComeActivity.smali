.class public Lcom/biquge/ebook/app/ui/activity/WelComeActivity;
.super Lcom/apk/f6;
.source "WelComeActivity.java"

# interfaces
.implements Lcom/apk/y5;


# instance fields
.field public case:Lcom/apk/e60;

.field public container:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09064e
    .end annotation
.end field

.field public do:Z

.field public else:Z

.field public for:Z

.field public goto:J

.field public if:Z

.field public new:Lcom/apk/q5;

.field public this:Lcom/swl/gg/ggs/SwlAdSplashView;

.field public try:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/biquge/ebook/app/ui/activity/WelComeActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->j()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0061

    return v0
.end method

.method public initData()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initData()V

    .line 2
    new-instance v0, Lcom/apk/q5;

    invoke-direct {v0, p0, p0}, Lcom/apk/q5;-><init>(Landroid/app/Activity;Lcom/apk/y5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->new:Lcom/apk/q5;

    .line 3
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/continue;->else()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lcom/apk/ze;->B()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/apk/ze;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "SP_SHOW_AGREENMENT_KEY"

    .line 5
    invoke-static {v2, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-nez v2, :cond_3

    .line 6
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    :try_start_0
    new-instance v2, Lcom/apk/lv;

    invoke-direct {v2}, Lcom/apk/lv;-><init>()V

    .line 8
    new-instance v3, Lcom/apk/n5;

    invoke-direct {v3, v0}, Lcom/apk/n5;-><init>(Lcom/apk/q5;)V

    .line 9
    iput-object v3, v2, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 10
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    iput-object v3, v2, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 12
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    iput-object v3, v2, Lcom/apk/lv;->if:Ljava/lang/Boolean;

    .line 14
    new-instance v3, Lcom/biquge/ebook/app/widget/SplashUserServiceDialog;

    iget-object v0, v0, Lcom/apk/p1;->do:Landroid/app/Activity;

    invoke-direct {v3, v0}, Lcom/biquge/ebook/app/widget/SplashUserServiceDialog;-><init>(Landroid/content/Context;)V

    .line 15
    sget-boolean v0, Lcom/apk/zu;->try:Z

    .line 16
    iput-boolean v0, v2, Lcom/apk/lv;->continue:Z

    .line 17
    iput-object v2, v3, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 18
    invoke-virtual {v3}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 20
    :cond_2
    throw v1

    .line 21
    :cond_3
    invoke-virtual {v0}, Lcom/apk/q5;->new()V

    .line 22
    :goto_1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_4

    return-void

    .line 23
    :cond_4
    throw v1
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initView()V

    .line 2
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lcom/biquge/ebook/app/app/AppContext;->new:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->try:J

    .line 5
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 8
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x404

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->for:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->for:Z

    .line 4
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->if:Z

    .line 5
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->do:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->k()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    .line 8
    :cond_2
    throw v1

    .line 9
    :cond_3
    throw v1
.end method

.method public final k()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->try:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->n()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v4, Lcom/apk/z6;

    invoke-direct {v4, p0}, Lcom/apk/z6;-><init>(Lcom/biquge/ebook/app/ui/activity/WelComeActivity;)V

    sub-long/2addr v2, v0

    invoke-virtual {p0, v4, v2, v3}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public l(ZLcom/apk/g;)V
    .locals 9

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/apk/m0;->if(Z)V

    .line 2
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    sget-object v1, Lcom/apk/i0;->do:Lcom/apk/i0;

    .line 3
    iget-object v0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p2, :cond_e

    .line 5
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 6
    :try_start_0
    invoke-static {}, Lcom/apk/w0;->default()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->container:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p2}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v3}, Lcom/swl/gg/sdk/TrAdSdk;->isTheAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12
    iget v5, p2, Lcom/apk/g;->for:I

    .line 13
    iget v6, p2, Lcom/apk/g;->new:I

    .line 14
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->else:Z

    .line 15
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 16
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->goto:J

    .line 18
    new-instance p2, Lcom/apk/e60;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->container:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/apk/r8;

    invoke-direct {v2, p0, v6, v5, v3}, Lcom/apk/r8;-><init>(Lcom/biquge/ebook/app/ui/activity/WelComeActivity;IILjava/lang/String;)V

    const-string v7, "open_v"

    invoke-direct {p2, p0, v0, v2, v7}, Lcom/apk/e60;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/apk/y60;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->case:Lcom/apk/e60;

    .line 19
    invoke-static {}, Lcom/apk/w0;->default()Z

    move-result p2

    if-nez p2, :cond_3

    .line 20
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->case:Lcom/apk/e60;

    invoke-static {}, Lcom/apk/eg;->static()I

    move-result v0

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz p2, :cond_2

    if-lez v0, :cond_4

    .line 21
    sput v0, Lcom/apk/n60$do;->new:I

    goto :goto_1

    .line 22
    :cond_2
    throw v1

    .line 23
    :cond_3
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->case:Lcom/apk/e60;

    const/4 v0, 0x1

    if-eqz p2, :cond_7

    .line 24
    sput-boolean v0, Lcom/apk/n60$do;->do:Z

    :cond_4
    :goto_1
    const-string p2, "SPLASH_AD_TIMEOUT_TIME_KEY"

    .line 25
    invoke-static {p2, p1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_6

    .line 26
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->case:Lcom/apk/e60;

    if-eqz p2, :cond_5

    if-lez p1, :cond_6

    .line 27
    sput p1, Lcom/apk/n60$do;->if:I

    goto :goto_2

    .line 28
    :cond_5
    throw v1

    .line 29
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->case:Lcom/apk/e60;

    const/4 v7, 0x0

    .line 30
    invoke-virtual/range {v2 .. v7}, Lcom/apk/e60;->try(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_3

    .line 31
    :cond_7
    throw v1

    .line 32
    :cond_8
    throw v1

    .line 33
    :cond_9
    throw v1

    :cond_a
    const-string p1, "swl"

    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 35
    new-instance p1, Lcom/swl/gg/ggs/SwlAdSplashView;

    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->container:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/apk/s8;

    invoke-direct {v0, p0}, Lcom/apk/s8;-><init>(Lcom/biquge/ebook/app/ui/activity/WelComeActivity;)V

    invoke-direct {p1, p0, p2, v0}, Lcom/swl/gg/ggs/SwlAdSplashView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/apk/s40;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->this:Lcom/swl/gg/ggs/SwlAdSplashView;

    .line 36
    invoke-virtual {p1, v4}, Lcom/swl/gg/ggs/SwlAdSplashView;->loadAd(Ljava/lang/String;)V

    goto :goto_3

    .line 37
    :cond_b
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 38
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->j()V

    goto :goto_3

    .line 39
    :cond_c
    throw v1

    .line 40
    :cond_d
    throw v1

    .line 41
    :cond_e
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->j()V

    :goto_3
    return-void
.end method

.method public synthetic m()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->n()V

    return-void
.end method

.method public final n()V
    .locals 2

    const-string v0, "SP_APP_AD_APPID_DATA_KEY"

    .line 1
    invoke-static {v0}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f010025

    const v1, 0x7f010024

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->do:Z

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->container:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->case:Lcom/apk/e60;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->case:Lcom/apk/e60;

    invoke-virtual {v0}, Lcom/apk/e60;->case()V

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->case:Lcom/apk/e60;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->this:Lcom/swl/gg/ggs/SwlAdSplashView;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->this:Lcom/swl/gg/ggs/SwlAdSplashView;

    invoke-virtual {v0}, Lcom/swl/gg/ggs/SwlAdSplashView;->onDestroy()V

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->this:Lcom/swl/gg/ggs/SwlAdSplashView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onPause()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->do:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/i6;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->if:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->do:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->k()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->do:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->else:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0

    :cond_1
    :goto_0
    return-void
.end method
