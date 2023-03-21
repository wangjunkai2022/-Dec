.class public Lcom/manhua/data/bean/ComicBean$SameCategoryBooksNameBean;
.super Ljava/lang/Object;
.source "ComicBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/data/bean/ComicBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SameCategoryBooksNameBean"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x7c3b64403a62d0e4L


# instance fields
.field public Id:Ljava/lang/String;

.field public Img:Ljava/lang/String;

.field public Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean$SameCategoryBooksNameBean;->Id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean$SameCategoryBooksNameBean;->Img:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean$SameCategoryBooksNameBean;->Name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean$SameCategoryBooksNameBean;->Id:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean$SameCategoryBooksNameBean;->Img:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean$SameCategoryBooksNameBean;->Name:Ljava/lang/String;

    return-void
.end method
