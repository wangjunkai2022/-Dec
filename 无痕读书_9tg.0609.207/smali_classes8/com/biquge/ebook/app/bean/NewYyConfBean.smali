.class public Lcom/biquge/ebook/app/bean/NewYyConfBean;
.super Ljava/lang/Object;
.source "NewYyConfBean.java"


# instance fields
.field public bd_tts_err:Ljava/lang/String;

.field public extra_btn:Ljava/lang/String;

.field public not_jixing:Ljava/lang/String;

.field public vendor:Ljava/lang/String;

.field public wifi_tts_on:Z

.field public wifi_tts_tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBd_tts_err()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewYyConfBean;->bd_tts_err:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getExtra_btn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewYyConfBean;->extra_btn:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getNot_jixing()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewYyConfBean;->not_jixing:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewYyConfBean;->vendor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getWifi_tts_tips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NewYyConfBean;->wifi_tts_tips:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isWifi_tts_on()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/NewYyConfBean;->wifi_tts_on:Z

    return v0
.end method

.method public setBd_tts_err(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewYyConfBean;->bd_tts_err:Ljava/lang/String;

    return-void
.end method

.method public setExtra_btn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewYyConfBean;->extra_btn:Ljava/lang/String;

    return-void
.end method

.method public setNot_jixing(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewYyConfBean;->not_jixing:Ljava/lang/String;

    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewYyConfBean;->vendor:Ljava/lang/String;

    return-void
.end method

.method public setWifi_tts_on(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/NewYyConfBean;->wifi_tts_on:Z

    return-void
.end method

.method public setWifi_tts_tips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NewYyConfBean;->wifi_tts_tips:Ljava/lang/String;

    return-void
.end method
