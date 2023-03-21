.class public final Lcom/apk/hq0$do;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/hq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:I

.field public for:I

.field public if:I

.field public new:Z

.field public final synthetic try:Lcom/apk/hq0;


# direct methods
.method public constructor <init>(Lcom/apk/hq0;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/apk/hq0$do;->try:Lcom/apk/hq0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/apk/hq0$do;->new:Z

    .line 3
    iput p2, p0, Lcom/apk/hq0$do;->do:I

    .line 4
    check-cast p1, Lcom/apk/fq0$do;

    .line 5
    iget-object p1, p1, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    iget p1, p1, Lcom/apk/iq0;->for:I

    .line 6
    iput p1, p0, Lcom/apk/hq0$do;->if:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/hq0$do;->for:I

    iget v1, p0, Lcom/apk/hq0$do;->if:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/hq0$do;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/hq0$do;->try:Lcom/apk/hq0;

    iget v1, p0, Lcom/apk/hq0$do;->for:I

    iget v2, p0, Lcom/apk/hq0$do;->do:I

    invoke-virtual {v0, v1, v2}, Lcom/apk/hq0;->do(II)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/apk/hq0$do;->for:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/apk/hq0$do;->for:I

    .line 4
    iput-boolean v2, p0, Lcom/apk/hq0$do;->new:Z

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/hq0$do;->new:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/apk/hq0$do;->for:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/apk/hq0$do;->for:I

    .line 3
    iget v1, p0, Lcom/apk/hq0$do;->if:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/apk/hq0$do;->if:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/apk/hq0$do;->new:Z

    .line 5
    iget-object v1, p0, Lcom/apk/hq0$do;->try:Lcom/apk/hq0;

    check-cast v1, Lcom/apk/fq0$do;

    .line 6
    iget-object v1, v1, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    invoke-virtual {v1, v0}, Lcom/apk/iq0;->this(I)Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
