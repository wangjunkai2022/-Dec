.class public Lcom/apk/mm;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lcom/apk/ym;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/mm$new;,
        Lcom/apk/mm$do;,
        Lcom/apk/mm$for;,
        Lcom/apk/mm$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/ym<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/mm$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/mm$if<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/mm$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/mm$if<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/mm;->do:Lcom/apk/mm$if;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, [B

    const/4 p1, 0x1

    return p1
.end method

.method public if(Ljava/lang/Object;IILcom/apk/mj;)Lcom/apk/ym$do;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, [B

    .line 2
    new-instance p2, Lcom/apk/ym$do;

    new-instance p3, Lcom/apk/vr;

    invoke-direct {p3, p1}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/apk/mm$for;

    iget-object v0, p0, Lcom/apk/mm;->do:Lcom/apk/mm$if;

    invoke-direct {p4, p1, v0}, Lcom/apk/mm$for;-><init>([BLcom/apk/mm$if;)V

    invoke-direct {p2, p3, p4}, Lcom/apk/ym$do;-><init>(Lcom/apk/kj;Lcom/apk/uj;)V

    return-object p2
.end method
