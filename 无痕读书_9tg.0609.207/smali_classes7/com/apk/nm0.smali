.class public Lcom/apk/nm0;
.super Ljava/lang/Object;
.source "ChildBreaks.java"


# instance fields
.field public do:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/apk/ln0;",
            ">;"
        }
    .end annotation
.end field

.field public if:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/apk/ln0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/apk/nm0;->do:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/apk/nm0;->if:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/nm0;->if:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apk/nm0;->if:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/ln0;

    iget v0, v0, Lcom/apk/ln0;->do:I

    :goto_0
    return v0
.end method

.method public if()Lcom/apk/ln0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/nm0;->if:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/apk/nm0;->do:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/ln0;

    return-object v0
.end method
