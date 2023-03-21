.class public Lcom/tr/comment/sdk/bean/TrChapterCount;
.super Ljava/lang/Object;
.source "TrChapterCount.java"


# instance fields
.field public Count:I

.field public Index:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tr/comment/sdk/bean/TrChapterCount;->Index:I

    .line 3
    iput p2, p0, Lcom/tr/comment/sdk/bean/TrChapterCount;->Count:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tr/comment/sdk/bean/TrChapterCount;->Count:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tr/comment/sdk/bean/TrChapterCount;->Index:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tr/comment/sdk/bean/TrChapterCount;->Count:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tr/comment/sdk/bean/TrChapterCount;->Index:I

    return-void
.end method
