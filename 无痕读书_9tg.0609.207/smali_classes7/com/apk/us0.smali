.class public Lcom/apk/us0;
.super Ljava/lang/Object;
.source "ColorObservableEmitter.java"

# interfaces
.implements Lcom/apk/ts0;


# instance fields
.field public do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/vs0;",
            ">;"
        }
    .end annotation
.end field

.field public if:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apk/us0;->do:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/vs0;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apk/us0;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public for(IZZ)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/apk/us0;->if:I

    .line 2
    iget-object v0, p0, Lcom/apk/us0;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/vs0;

    .line 3
    invoke-interface {v1, p1, p2, p3}, Lcom/apk/vs0;->do(IZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/us0;->if:I

    return v0
.end method

.method public if(Lcom/apk/vs0;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apk/us0;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
