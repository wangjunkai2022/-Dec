.class public Lcom/swl/gg/ggs/SwlAdAdInsert;
.super Ljava/lang/Object;
.source "SwlAdAdInsert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;
    }
.end annotation


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final mInsertListenner:Lcom/apk/p40;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/p40;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdInsert;->mActivity:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdAdInsert;->mInsertListenner:Lcom/apk/p40;

    return-void
.end method

.method public static synthetic access$000(Lcom/swl/gg/ggs/SwlAdAdInsert;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/swl/gg/ggs/SwlAdAdInsert;->setInsert(Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/swl/gg/ggs/SwlAdAdInsert;)Lcom/apk/p40;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert;->mInsertListenner:Lcom/apk/p40;

    return-object p0
.end method

.method private setInsert(Lcom/swl/gg/bean/SwlAdView;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    iput-object v1, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 5
    new-instance v1, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;

    iget-object v2, p0, Lcom/swl/gg/ggs/SwlAdAdInsert;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/swl/gg/ggs/SwlAdAdInsert;->mInsertListenner:Lcom/apk/p40;

    invoke-direct {v1, v2, p1, v3}, Lcom/swl/gg/ggs/SwlAdAdInsert$SwlSdkInsertScreenAd;-><init>(Landroid/app/Activity;Lcom/swl/gg/bean/SwlAdView;Lcom/apk/p40;)V

    .line 6
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 7
    iput-boolean p1, v0, Lcom/apk/lv;->continue:Z

    .line 8
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 9
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    .line 10
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdInsert;->mInsertListenner:Lcom/apk/p40;

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdInsert;->mInsertListenner:Lcom/apk/p40;

    check-cast p1, Lcom/apk/extends;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public loadAd(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdAdInsert;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdInsert;->mInsertListenner:Lcom/apk/p40;

    if-eqz p1, :cond_1

    .line 3
    check-cast p1, Lcom/apk/extends;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    throw v1

    :cond_1
    :goto_0
    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/apk/k40;->strictfp()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdAdInsert;->mInsertListenner:Lcom/apk/p40;

    if-eqz p1, :cond_4

    .line 7
    check-cast p1, Lcom/apk/extends;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    throw v1

    :cond_4
    :goto_1
    return-void

    .line 9
    :cond_5
    new-instance v0, Lcom/apk/l40;

    invoke-direct {v0}, Lcom/apk/l40;-><init>()V

    new-instance v1, Lcom/swl/gg/ggs/SwlAdAdInsert$1;

    invoke-direct {v1, p0, p1}, Lcom/swl/gg/ggs/SwlAdAdInsert$1;-><init>(Lcom/swl/gg/ggs/SwlAdAdInsert;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/l40;->do(Lcom/apk/m40;)Lcom/apk/l40;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
