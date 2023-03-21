.class public Lcom/biquge/ebook/app/bean/WebConfBean;
.super Ljava/lang/Object;
.source "WebConfBean.java"


# instance fields
.field public az_xz_url:Ljava/lang/String;

.field public az_xz_url2:Ljava/lang/String;

.field public bdaivoice2:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public invitedq:Ljava/lang/String;

.field public invitenoad:Ljava/lang/String;

.field public ios_xz_url:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public qrcodedroid:Ljava/lang/String;

.field public qrcodeios:Ljava/lang/String;

.field public sharedomain:Ljava/lang/String;

.field public svasize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAz_xz_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->az_xz_url:Ljava/lang/String;

    return-object v0
.end method

.method public getAz_xz_url2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->az_xz_url2:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBdaivoice2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->bdaivoice2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://appdown-1258671120.file.myqcloud.com/baidu_tts_2.5.zip"

    .line 2
    iput-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->bdaivoice2:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->bdaivoice2:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitedq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->invitedq:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getInvitenoad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->invitenoad:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getIos_xz_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->ios_xz_url:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQrcodedroid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->qrcodedroid:Ljava/lang/String;

    return-object v0
.end method

.method public getQrcodeios()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->qrcodeios:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->sharedomain:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSvasize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->svasize:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "13.5M"

    .line 2
    iput-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->svasize:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->svasize:Ljava/lang/String;

    return-object v0
.end method

.method public setAz_xz_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->az_xz_url:Ljava/lang/String;

    return-void
.end method

.method public setAz_xz_url2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->az_xz_url2:Ljava/lang/String;

    return-void
.end method

.method public setBdaivoice2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->bdaivoice2:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->email:Ljava/lang/String;

    return-void
.end method

.method public setInvitedq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->invitedq:Ljava/lang/String;

    return-void
.end method

.method public setInvitenoad(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->invitenoad:Ljava/lang/String;

    return-void
.end method

.method public setIos_xz_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->ios_xz_url:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setQrcodedroid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->qrcodedroid:Ljava/lang/String;

    return-void
.end method

.method public setQrcodeios(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->qrcodeios:Ljava/lang/String;

    return-void
.end method

.method public setSharedomain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->sharedomain:Ljava/lang/String;

    return-void
.end method

.method public setSvasize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WebConfBean;->svasize:Ljava/lang/String;

    return-void
.end method
