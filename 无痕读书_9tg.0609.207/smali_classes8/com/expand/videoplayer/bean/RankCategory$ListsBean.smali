.class public Lcom/expand/videoplayer/bean/RankCategory$ListsBean;
.super Ljava/lang/Object;
.source "RankCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/videoplayer/bean/RankCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListsBean"
.end annotation


# instance fields
.field public NameDe:Ljava/lang/String;

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
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getNameDe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;->NameDe:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameDe(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/RankCategory$ListsBean;->NameDe:Ljava/lang/String;

    return-void
.end method
