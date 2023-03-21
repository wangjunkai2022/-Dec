.class public Lcom/apk/az$do;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public do:Lcom/apk/az$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/az<",
            "TE;>.if<TE;>;"
        }
    .end annotation
.end field

.field public for:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public if:Lcom/apk/az$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/az<",
            "TE;>.if<TE;>;"
        }
    .end annotation
.end field

.field public final synthetic new:Lcom/apk/az;


# direct methods
.method public constructor <init>(Lcom/apk/az;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/apk/az$do;->new:Lcom/apk/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/apk/az;->do()V

    .line 3
    :try_start_0
    iget-object v0, p1, Lcom/apk/az;->for:Lcom/apk/az$if;

    iget-object v0, v0, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    iput-object v0, p0, Lcom/apk/az$do;->do:Lcom/apk/az$if;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/apk/az$if;->do()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/az$do;->for:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/apk/az;->if()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/apk/az;->if()V

    .line 6
    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/az$do;->do:Lcom/apk/az$if;

    if-eqz v0, :cond_0

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
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/az$do;->new:Lcom/apk/az;

    invoke-virtual {v0}, Lcom/apk/az;->do()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/az$do;->do:Lcom/apk/az$if;

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/apk/az$do;->for:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/apk/az$do;->do:Lcom/apk/az$if;

    iput-object v1, p0, Lcom/apk/az$do;->if:Lcom/apk/az$if;

    .line 5
    iget-object v1, p0, Lcom/apk/az$do;->do:Lcom/apk/az$if;

    .line 6
    :goto_0
    iget-object v2, v1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    if-ne v2, v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/apk/az$do;->new:Lcom/apk/az;

    iget-object v1, v1, Lcom/apk/az;->for:Lcom/apk/az$if;

    iget-object v2, v1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/apk/az$if;->do()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/apk/az$do;->do:Lcom/apk/az$if;

    if-nez v2, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v2}, Lcom/apk/az$if;->do()Ljava/lang/Object;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/apk/az$do;->for:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v1, p0, Lcom/apk/az$do;->new:Lcom/apk/az;

    invoke-virtual {v1}, Lcom/apk/az;->if()V

    return-object v0

    .line 12
    :cond_4
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/apk/az$do;->new:Lcom/apk/az;

    invoke-virtual {v1}, Lcom/apk/az;->if()V

    .line 14
    throw v0
.end method

.method public remove()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/az$do;->if:Lcom/apk/az$if;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/apk/az$do;->new:Lcom/apk/az;

    invoke-virtual {v0}, Lcom/apk/az;->do()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/apk/az$do;->if:Lcom/apk/az$if;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/apk/az$do;->if:Lcom/apk/az$if;

    .line 5
    iget-object v1, p0, Lcom/apk/az$do;->new:Lcom/apk/az;

    iget-object v1, v1, Lcom/apk/az;->for:Lcom/apk/az$if;

    :cond_0
    iget-object v2, v1, Lcom/apk/az$if;->for:Lcom/apk/az$if;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/apk/az$do;->new:Lcom/apk/az;

    invoke-virtual {v0, v1, v2}, Lcom/apk/az;->case(Lcom/apk/az$if;Lcom/apk/az$if;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/az$do;->new:Lcom/apk/az;

    invoke-virtual {v0}, Lcom/apk/az;->if()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/apk/az$do;->new:Lcom/apk/az;

    invoke-virtual {v1}, Lcom/apk/az;->if()V

    .line 8
    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
