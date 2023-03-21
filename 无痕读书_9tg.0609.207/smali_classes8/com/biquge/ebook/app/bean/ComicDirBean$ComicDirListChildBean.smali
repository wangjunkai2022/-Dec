.class public Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListChildBean;
.super Ljava/lang/Object;
.source "ComicDirBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/bean/ComicDirBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComicDirListChildBean"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x63f213e5e519a51L


# instance fields
.field public hasContent:I

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHasContent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListChildBean;->hasContent:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListChildBean;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListChildBean;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setHasContent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListChildBean;->hasContent:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListChildBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ComicDirBean$ComicDirListChildBean;->name:Ljava/lang/String;

    return-void
.end method
