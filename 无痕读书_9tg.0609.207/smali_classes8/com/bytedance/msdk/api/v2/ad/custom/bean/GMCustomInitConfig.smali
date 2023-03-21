.class public Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;
.super Ljava/lang/Object;
.source "GMCustomInitConfig.java"


# static fields
.field public static final CUSTOM_TYPE:Ljava/lang/String; = "1"


# instance fields
.field public final break:Ljava/lang/String;

.field public final case:Ljava/lang/String;

.field public final catch:Ljava/lang/String;

.field public final class:Ljava/lang/String;

.field public final do:Ljava/lang/String;

.field public final else:Ljava/lang/String;

.field public final for:Ljava/lang/String;

.field public final goto:Ljava/lang/String;

.field public final if:Ljava/lang/String;

.field public final new:Ljava/lang/String;

.field public final this:Ljava/lang/String;

.field public final try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->for:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->do:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->if:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->new:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->try:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->case:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->else:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->goto:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->this:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->break:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->catch:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->class:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->for:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->do:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->if:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->new:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->try:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->case:Ljava/lang/String;

    .line 21
    iput-object p7, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->else:Ljava/lang/String;

    .line 22
    iput-object p8, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->goto:Ljava/lang/String;

    .line 23
    iput-object p9, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->this:Ljava/lang/String;

    .line 24
    iput-object p10, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->break:Ljava/lang/String;

    .line 25
    iput-object p11, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->catch:Ljava/lang/String;

    .line 26
    iput-object p12, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->class:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getADNName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->for:Ljava/lang/String;

    return-object v0
.end method

.method public getAdnInitClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->new:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->if:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName(II)Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;
    .locals 2

    const-class v0, Lcom/bytedance/msdk/api/v2/ad/custom/fullvideo/GMCustomFullVideoAdapter;

    const-class v1, Lcom/bytedance/msdk/api/v2/ad/custom/interstitial/GMCustomInterstitialAdapter;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1
    new-instance p1, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;

    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->case:Ljava/lang/String;

    invoke-direct {p1, p2, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 2
    new-instance p1, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;

    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->goto:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    .line 3
    :cond_1
    :pswitch_2
    new-instance p1, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;

    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->catch:Ljava/lang/String;

    const-class v0, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAdapter;

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    .line 4
    :pswitch_3
    new-instance p1, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;

    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->goto:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    .line 5
    :pswitch_4
    new-instance p1, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;

    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->else:Ljava/lang/String;

    const-class v0, Lcom/bytedance/msdk/api/v2/ad/custom/reward/GMCustomRewardAdapter;

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;

    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->break:Ljava/lang/String;

    const-class v0, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAdapter;

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;

    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->this:Ljava/lang/String;

    const-class v0, Lcom/bytedance/msdk/api/v2/ad/custom/splash/GMCustomSplashAdapter;

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    .line 8
    :pswitch_7
    new-instance p1, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;

    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->case:Ljava/lang/String;

    invoke-direct {p1, p2, v1}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    .line 9
    :pswitch_8
    new-instance p1, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;

    iget-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->try:Ljava/lang/String;

    const-class v0, Lcom/bytedance/msdk/api/v2/ad/custom/banner/GMCustomBannerAdapter;

    invoke-direct {p1, p2, v0}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomAdConfig;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isCustom()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->class:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "GMCustomInitConfig{mAppId=\'"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->do:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mAppKey=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->if:Ljava/lang/String;

    const-string v3, ", mADNName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->for:Ljava/lang/String;

    const-string v3, ", mAdnInitClassName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->new:Ljava/lang/String;

    const-string v3, ", mBannerClassName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->try:Ljava/lang/String;

    const-string v3, ", mInterstitialClassName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->case:Ljava/lang/String;

    const-string v3, ", mRewardClassName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->else:Ljava/lang/String;

    const-string v3, ", mFullVideoClassName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->goto:Ljava/lang/String;

    const-string v3, ", mSplashClassName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->this:Ljava/lang/String;

    const-string v3, ", mDrawClassName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->catch:Ljava/lang/String;

    const-string v3, ", mFeedClassName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->break:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
