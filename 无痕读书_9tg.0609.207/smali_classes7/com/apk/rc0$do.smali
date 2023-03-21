.class public Lcom/apk/rc0$do;
.super Ljava/lang/Object;
.source "AbstractList.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/apk/ud0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/rc0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Lcom/apk/ud0;"
    }
.end annotation


# instance fields
.field public do:I

.field public final synthetic if:Lcom/apk/rc0;


# direct methods
.method public constructor <init>(Lcom/apk/rc0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/rc0$do;->if:Lcom/apk/rc0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/rc0$do;->do:I

    iget-object v1, p0, Lcom/apk/rc0$do;->if:Lcom/apk/rc0;

    .line 2
    invoke-virtual {v1}, Lcom/apk/qc0;->do()I

    move-result v1

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
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/rc0$do;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/rc0$do;->if:Lcom/apk/rc0;

    iget v1, p0, Lcom/apk/rc0$do;->do:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/apk/rc0$do;->do:I

    invoke-virtual {v0, v1}, Lcom/apk/rc0;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
