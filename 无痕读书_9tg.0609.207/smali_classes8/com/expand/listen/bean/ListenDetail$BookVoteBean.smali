.class public Lcom/expand/listen/bean/ListenDetail$BookVoteBean;
.super Ljava/lang/Object;
.source "ListenDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/listen/bean/ListenDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookVoteBean"
.end annotation


# instance fields
.field public BookId:I

.field public Score:D

.field public TotalScore:I

.field public VoterCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/expand/listen/bean/ListenDetail$BookVoteBean;->BookId:I

    return v0
.end method

.method public getScore()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/expand/listen/bean/ListenDetail$BookVoteBean;->Score:D

    return-wide v0
.end method

.method public getTotalScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/expand/listen/bean/ListenDetail$BookVoteBean;->TotalScore:I

    return v0
.end method

.method public getVoterCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/expand/listen/bean/ListenDetail$BookVoteBean;->VoterCount:I

    return v0
.end method

.method public setBookId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/expand/listen/bean/ListenDetail$BookVoteBean;->BookId:I

    return-void
.end method

.method public setScore(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/expand/listen/bean/ListenDetail$BookVoteBean;->Score:D

    return-void
.end method

.method public setTotalScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/expand/listen/bean/ListenDetail$BookVoteBean;->TotalScore:I

    return-void
.end method

.method public setVoterCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/expand/listen/bean/ListenDetail$BookVoteBean;->VoterCount:I

    return-void
.end method
