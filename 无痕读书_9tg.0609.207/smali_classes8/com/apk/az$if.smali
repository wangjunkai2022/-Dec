.class public Lcom/apk/az$if;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public do:Z

.field public for:Lcom/apk/az$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/az<",
            "TE;>.if<TT;>;"
        }
    .end annotation
.end field

.field public if:Lcom/apk/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/bz<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/az;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/apk/az$if;->do:Z

    .line 3
    invoke-virtual {p0, p2}, Lcom/apk/az$if;->if(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/az$if;->if:Lcom/apk/bz;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/apk/az$if;->do:Z

    if-eqz v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/apk/bz;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public if(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/apk/az$if;->if:Lcom/apk/bz;

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/apk/bz;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/apk/bz;

    iput-object p1, p0, Lcom/apk/az$if;->if:Lcom/apk/bz;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/apk/az$if;->do:Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/apk/bz;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/apk/bz;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/apk/az$if;->if:Lcom/apk/bz;

    :goto_0
    return-void
.end method
