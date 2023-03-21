.class public Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;
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
    name = "BookVoteNameBean"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x7166508d3e481780L


# instance fields
.field public BookId:Ljava/lang/String;

.field public Score:F

.field public TotalScore:Ljava/lang/String;

.field public VoterCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;->BookId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getScore()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;->Score:F

    return v0
.end method

.method public getTotalScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;->TotalScore:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getVoterCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;->VoterCount:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;->BookId:Ljava/lang/String;

    return-void
.end method

.method public setScore(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;->Score:F

    return-void
.end method

.method public setTotalScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;->TotalScore:Ljava/lang/String;

    return-void
.end method

.method public setVoterCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/data/bean/ComicBean$BookVoteNameBean;->VoterCount:Ljava/lang/String;

    return-void
.end method
