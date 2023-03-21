.class public Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;
.super Lcom/apk/f6;
.source "ToforegroundActivity.java"


# instance fields
.field public container:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09064e
    .end annotation
.end field

.field public do:J

.field public final for:Lcom/apk/y60;

.field public if:Lcom/apk/e60;

.field public new:Lcom/swl/gg/ggs/SwlAdSplashView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->for:Lcom/apk/y60;

    return-void
.end method

.method public static i(Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;)V
    .locals 6

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->do:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/apk/y6;

    invoke-direct {v5, p0}, Lcom/apk/y6;-><init>(Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;)V

    sub-long/2addr v2, v0

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "adType"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "adId"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x282e

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f010023

    const p2, 0x7f010024

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0061

    return v0
.end method

.method public initData()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "adType"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "adId"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    :try_start_0
    invoke-static {}, Lcom/apk/w0;->default()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->container:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/swl/gg/sdk/TrAdSdk;->isTheAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 8
    :try_start_1
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->for:Lcom/apk/y60;

    .line 10
    iget-object v0, v0, Lcom/biquge/ebook/app/app/AppContext;->do:Lcom/apk/static;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 11
    iget-object v7, v0, Lcom/apk/static;->case:Lcom/apk/e60;

    if-eqz v7, :cond_1

    .line 12
    iput-object v1, v0, Lcom/apk/static;->else:Lcom/apk/y60;

    .line 13
    :cond_1
    iget-object v0, v0, Lcom/apk/static;->case:Lcom/apk/e60;

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 14
    :goto_1
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->if:Lcom/apk/e60;

    if-eqz v0, :cond_3

    .line 15
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/apk/e60;->else(Landroid/view/ViewGroup;)V

    goto/16 :goto_4

    .line 16
    :cond_3
    new-instance v0, Lcom/apk/e60;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->container:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->for:Lcom/apk/y60;

    const-string v8, "toforeground"

    invoke-direct {v0, p0, v1, v7, v8}, Lcom/apk/e60;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/apk/y60;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->if:Lcom/apk/e60;

    .line 17
    invoke-static {}, Lcom/apk/w0;->default()Z

    move-result v0

    if-nez v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->if:Lcom/apk/e60;

    invoke-static {}, Lcom/apk/eg;->static()I

    move-result v1

    const/high16 v7, 0x42a00000    # 80.0f

    invoke-static {v7}, Lcom/apk/eg;->catch(F)I

    move-result v7

    sub-int/2addr v1, v7

    if-eqz v0, :cond_4

    if-lez v1, :cond_6

    .line 19
    sput v1, Lcom/apk/n60$do;->new:I

    goto :goto_2

    .line 20
    :cond_4
    throw v2

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->if:Lcom/apk/e60;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 22
    sput-boolean v1, Lcom/apk/n60$do;->do:Z

    :cond_6
    :goto_2
    const-string v0, "SPLASH_AD_TIMEOUT_TIME_KEY"

    const/4 v1, 0x0

    .line 23
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_8

    .line 24
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->if:Lcom/apk/e60;

    if-eqz v1, :cond_7

    if-lez v0, :cond_8

    .line 25
    sput v0, Lcom/apk/n60$do;->if:I

    goto :goto_3

    .line 26
    :cond_7
    throw v2

    .line 27
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->if:Lcom/apk/e60;

    const/4 v7, 0x0

    .line 28
    invoke-virtual/range {v2 .. v7}, Lcom/apk/e60;->try(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_4

    .line 29
    :cond_9
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_a
    const-string v0, "swl"

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    new-instance v0, Lcom/swl/gg/ggs/SwlAdSplashView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->container:Landroid/view/ViewGroup;

    new-instance v2, Lcom/apk/p8;

    invoke-direct {v2, p0}, Lcom/apk/p8;-><init>(Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/swl/gg/ggs/SwlAdSplashView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/apk/s40;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->new:Lcom/swl/gg/ggs/SwlAdSplashView;

    .line 33
    invoke-virtual {v0, v4}, Lcom/swl/gg/ggs/SwlAdSplashView;->loadAd(Ljava/lang/String;)V

    goto :goto_4

    .line 34
    :cond_b
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto :goto_4

    .line 35
    :cond_c
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    :goto_4
    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->do:J

    .line 2
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x404

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    .line 9
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_3

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldError;->printStackTrace()V

    goto :goto_3

    .line 11
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_3
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

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->new:Lcom/swl/gg/ggs/SwlAdSplashView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->new:Lcom/swl/gg/ggs/SwlAdSplashView;

    invoke-virtual {v0}, Lcom/swl/gg/ggs/SwlAdSplashView;->onDestroy()V

    .line 4
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->new:Lcom/swl/gg/ggs/SwlAdSplashView;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->if:Lcom/apk/e60;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->if:Lcom/apk/e60;

    invoke-virtual {v0}, Lcom/apk/e60;->case()V

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->if:Lcom/apk/e60;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
