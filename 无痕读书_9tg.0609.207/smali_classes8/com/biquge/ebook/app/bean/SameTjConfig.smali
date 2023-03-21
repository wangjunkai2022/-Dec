.class public Lcom/biquge/ebook/app/bean/SameTjConfig;
.super Lorg/litepal/crud/LitePalSupport;
.source "SameTjConfig.java"


# instance fields
.field public rewardTime:J

.field public showCount:I

.field public tId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getRewardTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/biquge/ebook/app/bean/SameTjConfig;->rewardTime:J

    return-wide v0
.end method

.method public getShowCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/SameTjConfig;->showCount:I

    return v0
.end method

.method public gettId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/SameTjConfig;->tId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setRewardTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/biquge/ebook/app/bean/SameTjConfig;->rewardTime:J

    return-void
.end method

.method public setShowCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/SameTjConfig;->showCount:I

    return-void
.end method

.method public settId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/SameTjConfig;->tId:Ljava/lang/String;

    return-void
.end method
