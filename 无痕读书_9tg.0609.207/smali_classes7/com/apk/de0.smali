.class public final Lcom/apk/de0;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lcom/apk/be0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/be0<",
        "TR;>;"
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

.field public final if:Lcom/apk/id0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/id0<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/be0;Lcom/apk/id0;)V
    .locals 1
    .param p1    # Lcom/apk/be0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/id0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/be0<",
            "+TT;>;",
            "Lcom/apk/id0<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/de0;->do:Lcom/apk/be0;

    iput-object p2, p0, Lcom/apk/de0;->if:Lcom/apk/id0;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/de0$do;

    invoke-direct {v0, p0}, Lcom/apk/de0$do;-><init>(Lcom/apk/de0;)V

    return-object v0
.end method
