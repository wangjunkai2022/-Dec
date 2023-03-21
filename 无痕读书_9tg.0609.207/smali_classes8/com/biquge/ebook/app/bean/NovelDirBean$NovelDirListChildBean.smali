.class public Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListChildBean;
.super Ljava/lang/Object;
.source "NovelDirBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/bean/NovelDirBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NovelDirListChildBean"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x6ff3e82792501445L


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
    iget v0, p0, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListChildBean;->hasContent:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListChildBean;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListChildBean;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setHasContent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListChildBean;->hasContent:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListChildBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/NovelDirBean$NovelDirListChildBean;->name:Ljava/lang/String;

    return-void
.end method
