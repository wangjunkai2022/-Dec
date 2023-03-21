.class public Lcom/biquge/ebook/app/bean/User;
.super Lorg/litepal/crud/LitePalSupport;
.source "User.java"


# instance fields
.field public Balance:Ljava/lang/String;

.field public KPTime:Ljava/lang/String;

.field public KingPower:Z

.field public NeedChanagePwd:Z

.field public avatar:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public extInfo:Ljava/lang/String;

.field public isFirstLogin:Z

.field public isNoAd:Z

.field public loginType:I

.field public messageCode:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public noAdTitle:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public pwd:Ljava/lang/String;

.field public signDate:Ljava/lang/String;

.field public signHistory:Ljava/lang/String;

.field public signdays:I

.field public userid:Ljava/lang/String;

.field public vipLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->avatar:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBalance()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->Balance:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->email:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->extInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getKPTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->KPTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLoginType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/User;->loginType:I

    return v0
.end method

.method public getMessageCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->messageCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->nickName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getNoAdTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->noAdTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->phone:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->pwd:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSignDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->signDate:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSignHistory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->signHistory:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSigndays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/User;->signdays:I

    return v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/User;->userid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getVipLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/User;->vipLevel:I

    return v0
.end method

.method public isFirstLogin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/User;->isFirstLogin:Z

    return v0
.end method

.method public isKingPower()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/User;->KingPower:Z

    return v0
.end method

.method public isNeedChanagePwd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/User;->NeedChanagePwd:Z

    return v0
.end method

.method public isNoAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/User;->isNoAd:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBalance(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->Balance:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->email:Ljava/lang/String;

    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->extInfo:Ljava/lang/String;

    return-void
.end method

.method public setFirstLogin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/User;->isFirstLogin:Z

    return-void
.end method

.method public setKPTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->KPTime:Ljava/lang/String;

    return-void
.end method

.method public setKingPower(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/User;->KingPower:Z

    return-void
.end method

.method public setLoginType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/User;->loginType:I

    return-void
.end method

.method public setMessageCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->messageCode:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->name:Ljava/lang/String;

    return-void
.end method

.method public setNeedChanagePwd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/User;->NeedChanagePwd:Z

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setNoAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/User;->isNoAd:Z

    return-void
.end method

.method public setNoAdTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->noAdTitle:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->pwd:Ljava/lang/String;

    return-void
.end method

.method public setSignDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->signDate:Ljava/lang/String;

    return-void
.end method

.method public setSignHistory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->signHistory:Ljava/lang/String;

    return-void
.end method

.method public setSigndays(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/User;->signdays:I

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/User;->userid:Ljava/lang/String;

    return-void
.end method

.method public setVipLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/User;->vipLevel:I

    return-void
.end method
