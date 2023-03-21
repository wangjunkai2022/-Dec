.class public final Lcom/apk/zd0;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lcom/apk/be0;
.implements Lcom/apk/ae0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/be0<",
        "TT;>;",
        "Lcom/apk/ae0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/be0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/be0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final if:I


# direct methods
.method public constructor <init>(Lcom/apk/be0;I)V
    .locals 1
    .param p1    # Lcom/apk/be0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/be0<",
            "+TT;>;I)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/zd0;->do:Lcom/apk/be0;

    iput p2, p0, Lcom/apk/zd0;->if:I

    if-ltz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "count must be non-negative, but was "

    .line 2
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/apk/zd0;->if:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public do(I)Lcom/apk/be0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apk/be0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/apk/zd0;->if:I

    add-int/2addr v0, p1

    if-gez v0, :cond_0

    new-instance v0, Lcom/apk/zd0;

    invoke-direct {v0, p0, p1}, Lcom/apk/zd0;-><init>(Lcom/apk/be0;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/apk/zd0;

    iget-object v1, p0, Lcom/apk/zd0;->do:Lcom/apk/be0;

    invoke-direct {p1, v1, v0}, Lcom/apk/zd0;-><init>(Lcom/apk/be0;I)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/zd0$do;

    invoke-direct {v0, p0}, Lcom/apk/zd0$do;-><init>(Lcom/apk/zd0;)V

    return-object v0
.end method
