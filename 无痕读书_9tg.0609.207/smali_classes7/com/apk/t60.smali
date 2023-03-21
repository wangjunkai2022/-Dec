.class public Lcom/apk/t60;
.super Ljava/lang/Object;
.source "BaseAdHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/b70;)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x14439

    const-string v1, "\u6ca1\u6709\u627e\u5230\u5339\u914d\u7684adType"

    .line 1
    invoke-interface {p1, v0, v1}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public for(Lcom/apk/b70;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/apk/k40;->case:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getCsjAppId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/apk/k40;->static(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    const v0, 0x14052

    const-string v2, "\u4f20\u5165\u7684\u7a7f\u5c71\u7532appId\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u521d\u59cb\u5316\uff0c\u53bb\u8bf7\u6c42\u5e7f\u544a"

    .line 5
    invoke-interface {p1, v0, v2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public if(Ljava/lang/String;Lcom/apk/b70;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0xea61

    .line 1
    invoke-interface {p2, v0, p1}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public new(Lcom/apk/b70;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/apk/k40;->for:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getGdtAppId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/apk/k40;->const(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    const v0, 0x14051

    const-string v2, "\u4f20\u5165\u7684\u5e7f\u70b9\u901aappId\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u521d\u59cb\u5316\uff0c\u53bb\u8bf7\u6c42\u5e7f\u544a"

    .line 5
    invoke-interface {p1, v0, v2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public try(Lcom/apk/b70;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/apk/k40;->new:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getGroMoreAppId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/apk/k40;->native(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    const v0, 0x14053

    const-string v2, "\u4f20\u5165\u7684GroMoreappId\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u521d\u59cb\u5316\uff0c\u53bb\u8bf7\u6c42\u5e7f\u544a"

    .line 5
    invoke-interface {p1, v0, v2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    return v2
.end method
