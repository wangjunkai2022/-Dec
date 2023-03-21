.class public Lcom/apk/r8;
.super Ljava/lang/Object;
.source "WelComeActivity.java"

# interfaces
.implements Lcom/apk/y60;


# instance fields
.field public final synthetic do:I

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:I

.field public final synthetic new:Lcom/biquge/ebook/app/ui/activity/WelComeActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/WelComeActivity;IILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/r8;->new:Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    iput p2, p0, Lcom/apk/r8;->do:I

    iput p3, p0, Lcom/apk/r8;->if:I

    iput-object p4, p0, Lcom/apk/r8;->for:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/r8;->new:Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->i(Lcom/biquge/ebook/app/ui/activity/WelComeActivity;)V

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/r8;->new:Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->else:Z

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/apk/w0;->super()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "SP_SAVE_SPLASH_AD_SHOW_MAX_KEY"

    .line 6
    invoke-static {v0}, Lcom/apk/w0;->continue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    .line 8
    :cond_1
    throw v1

    .line 9
    :cond_2
    throw v1
.end method

.method public else()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/r8;->new:Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->i(Lcom/biquge/ebook/app/ui/activity/WelComeActivity;)V

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public for()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/apk/r8;->for:Ljava/lang/String;

    invoke-static {v0}, Lcom/swl/gg/sdk/TrAdSdk;->isFullAdType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v2, "SPLASH_TIPS_SHOW_MAX_KEY"

    .line 3
    invoke-static {v2, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    const-string v0, "SPLASH_TIPS_SHOW_COUNT_KEY"

    .line 4
    invoke-static {v0, v4}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v2, :cond_1

    .line 5
    invoke-static {v0, v4}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v3

    .line 6
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v5, v0, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 7
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const v2, 0x7f10030b

    .line 8
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPLASH_AD_VIDEO_TIPS_KEY"

    .line 9
    invoke-static {v3, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 12
    :cond_2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v2, p0, Lcom/apk/r8;->new:Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    .line 13
    iget-wide v2, v2, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->goto:J

    if-eqz v0, :cond_3

    return-void

    .line 14
    :cond_3
    throw v1

    .line 15
    :cond_4
    throw v1
.end method

.method public if(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/apk/r8;->new:Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    .line 3
    iget-wide v1, v0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->goto:J

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->j()V

    return-void

    .line 5
    :cond_0
    throw p2

    .line 6
    :cond_1
    throw p2
.end method

.method public onAdClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/r8;->new:Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->else:Z

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public onAdDismiss()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/r8;->new:Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->else:Z

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->j()V

    return-void

    .line 6
    :cond_0
    throw v1

    .line 7
    :cond_1
    throw v1
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/r8;->new:Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->else:Z

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/apk/w0;->super()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "SP_SAVE_SPLASH_AD_SHOW_MAX_KEY"

    .line 6
    invoke-static {v0}, Lcom/apk/w0;->continue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    .line 8
    :cond_1
    throw v1

    .line 9
    :cond_2
    throw v1
.end method

.method public onZoomOut()V
    .locals 2

    const-string v0, "SPLASH_V_PLUS_ZOOMOUT_KEY"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
