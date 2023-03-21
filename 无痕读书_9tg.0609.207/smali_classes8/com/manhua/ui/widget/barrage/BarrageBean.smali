.class public Lcom/manhua/ui/widget/barrage/BarrageBean;
.super Ljava/lang/Object;
.source "BarrageBean.java"


# instance fields
.field public Addtime:Ljava/lang/String;

.field public BookId:Ljava/lang/String;

.field public ChapterId:Ljava/lang/String;

.field public Color:Ljava/lang/String;

.field public Content:Ljava/lang/String;

.field public bgcolor:Ljava/lang/String;

.field public c_extra:Ljava/lang/String;

.field public clickto:Ljava/lang/String;

.field public isMe:Z

.field public pkg:Ljava/lang/String;

.field public pre_Ico:Ljava/lang/String;

.field public pre_Str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->Content:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->Color:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddtime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->Addtime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBgcolor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->bgcolor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->BookId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getC_extra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->c_extra:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->ChapterId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getClickto()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->clickto:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->Color:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->Content:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->pkg:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPre_Ico()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->pre_Ico:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPre_Str()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->pre_Str:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isMe()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->isMe:Z

    return v0
.end method

.method public setAddtime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->Addtime:Ljava/lang/String;

    return-void
.end method

.method public setBgcolor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->bgcolor:Ljava/lang/String;

    return-void
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->BookId:Ljava/lang/String;

    return-void
.end method

.method public setC_extra(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->c_extra:Ljava/lang/String;

    return-void
.end method

.method public setChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->ChapterId:Ljava/lang/String;

    return-void
.end method

.method public setClickto(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->clickto:Ljava/lang/String;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->Color:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->Content:Ljava/lang/String;

    return-void
.end method

.method public setMe(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->isMe:Z

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setPre_Ico(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->pre_Ico:Ljava/lang/String;

    return-void
.end method

.method public setPre_Str(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageBean;->pre_Str:Ljava/lang/String;

    return-void
.end method
