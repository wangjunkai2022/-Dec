.class public Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;
.super Ljava/lang/Object;
.source "WantBookBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/bean/WantBookBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WantProgressBean"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x9905ac77caf5d58L


# instance fields
.field public Author:Ljava/lang/String;

.field public BookId:Ljava/lang/String;

.field public BookName:Ljava/lang/String;

.field public Count:I

.field public CreateTime:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public IsPass:I

.field public Threshold:I

.field public Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->Author:Ljava/lang/String;

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->BookId:Ljava/lang/String;

    return-object v0
.end method

.method public getBookName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->BookName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->Count:I

    return v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->CreateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPass()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->IsPass:I

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->Threshold:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->Author:Ljava/lang/String;

    return-void
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->BookId:Ljava/lang/String;

    return-void
.end method

.method public setBookName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->BookName:Ljava/lang/String;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->Count:I

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->CreateTime:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->Id:Ljava/lang/String;

    return-void
.end method

.method public setIsPass(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->IsPass:I

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->Threshold:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->Type:Ljava/lang/String;

    return-void
.end method
