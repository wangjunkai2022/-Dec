.class public Lcom/biquge/ebook/app/bean/BookMenuItem;
.super Ljava/lang/Object;
.source "BookMenuItem.java"


# instance fields
.field public indexTag:I

.field public isCheck:Z

.field public isSwitch:Z

.field public resId:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/biquge/ebook/app/bean/BookMenuItem;-><init>(ILjava/lang/String;ZZI)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->resId:I

    .line 4
    iput-object p2, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->title:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->isSwitch:Z

    .line 6
    iput-boolean p4, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->isCheck:Z

    .line 7
    iput p5, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->indexTag:I

    return-void
.end method


# virtual methods
.method public getIndexTag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->indexTag:I

    return v0
.end method

.method public getResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->resId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->isCheck:Z

    return v0
.end method

.method public isSwitch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->isSwitch:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->isCheck:Z

    return-void
.end method

.method public setIndexTag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->indexTag:I

    return-void
.end method

.method public setResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->resId:I

    return-void
.end method

.method public setSwitch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->isSwitch:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BookMenuItem;->title:Ljava/lang/String;

    return-void
.end method
