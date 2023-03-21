.class public final Lcom/apk/bk;
.super Ljava/lang/Object;
.source "InputStreamRewinder.java"

# interfaces
.implements Lcom/apk/vj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/bk$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/vj<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/oo;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/apk/nl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/oo;

    invoke-direct {v0, p1, p2}, Lcom/apk/oo;-><init>(Ljava/io/InputStream;Lcom/apk/nl;)V

    iput-object v0, p0, Lcom/apk/bk;->do:Lcom/apk/oo;

    const/high16 p1, 0x500000

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/oo;->mark(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic do()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/bk;->for()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public for()Ljava/io/InputStream;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/bk;->do:Lcom/apk/oo;

    invoke-virtual {v0}, Lcom/apk/oo;->reset()V

    .line 2
    iget-object v0, p0, Lcom/apk/bk;->do:Lcom/apk/oo;

    return-object v0
.end method

.method public if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/bk;->do:Lcom/apk/oo;

    invoke-virtual {v0}, Lcom/apk/oo;->try()V

    return-void
.end method
