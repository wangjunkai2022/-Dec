.class public final Lcom/apk/ce0;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/apk/ud0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lcom/apk/ud0;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/be0;


# direct methods
.method public constructor <init>(Lcom/apk/be0;)V
    .locals 0

    iput-object p1, p0, Lcom/apk/ce0;->do:Lcom/apk/be0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/apk/ce0;->do:Lcom/apk/be0;

    invoke-interface {v0}, Lcom/apk/be0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
