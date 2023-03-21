.class public final Lcom/apk/vm;
.super Ljava/lang/Object;
.source "MediaStoreFileLoader.java"

# interfaces
.implements Lcom/apk/ym;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/vm$do;,
        Lcom/apk/vm$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/ym<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/vm;->do:Landroid/content/Context;

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
    check-cast p1, Landroid/net/Uri;

    .line 2
    invoke-static {p1}, Lcom/apk/eg;->transient(Landroid/net/Uri;)Z

    move-result p1

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
    check-cast p1, Landroid/net/Uri;

    .line 2
    new-instance p2, Lcom/apk/ym$do;

    new-instance p3, Lcom/apk/vr;

    invoke-direct {p3, p1}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/apk/vm$if;

    iget-object v0, p0, Lcom/apk/vm;->do:Landroid/content/Context;

    invoke-direct {p4, v0, p1}, Lcom/apk/vm$if;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p2, p3, p4}, Lcom/apk/ym$do;-><init>(Lcom/apk/kj;Lcom/apk/uj;)V

    return-object p2
.end method
