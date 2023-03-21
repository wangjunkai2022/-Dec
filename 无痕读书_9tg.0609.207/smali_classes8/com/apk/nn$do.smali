.class public abstract Lcom/apk/nn$do;
.super Ljava/lang/Object;
.source "QMediaStoreUriLoader.java"

# interfaces
.implements Lcom/apk/zm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/nn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/zm<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final do:Landroid/content/Context;

.field public final if:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/nn$do;->do:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/apk/nn$do;->if:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final do()V
    .locals 0

    return-void
.end method

.method public final for(Lcom/apk/cn;)Lcom/apk/ym;
    .locals 5
    .param p1    # Lcom/apk/cn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/cn;",
            ")",
            "Lcom/apk/ym<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/nn;

    iget-object v1, p0, Lcom/apk/nn$do;->do:Landroid/content/Context;

    const-class v2, Ljava/io/File;

    iget-object v3, p0, Lcom/apk/nn$do;->if:Ljava/lang/Class;

    .line 2
    invoke-virtual {p1, v2, v3}, Lcom/apk/cn;->for(Ljava/lang/Class;Ljava/lang/Class;)Lcom/apk/ym;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    iget-object v4, p0, Lcom/apk/nn$do;->if:Ljava/lang/Class;

    .line 3
    invoke-virtual {p1, v3, v4}, Lcom/apk/cn;->for(Ljava/lang/Class;Ljava/lang/Class;)Lcom/apk/ym;

    move-result-object p1

    iget-object v3, p0, Lcom/apk/nn$do;->if:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/apk/nn;-><init>(Landroid/content/Context;Lcom/apk/ym;Lcom/apk/ym;Ljava/lang/Class;)V

    return-object v0
.end method
