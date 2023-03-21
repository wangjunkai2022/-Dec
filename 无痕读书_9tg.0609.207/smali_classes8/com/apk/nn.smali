.class public final Lcom/apk/nn;
.super Ljava/lang/Object;
.source "QMediaStoreUriLoader.java"

# interfaces
.implements Lcom/apk/ym;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/nn$do;,
        Lcom/apk/nn$if;,
        Lcom/apk/nn$for;,
        Lcom/apk/nn$new;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/ym<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final do:Landroid/content/Context;

.field public final for:Lcom/apk/ym;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/ym<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final if:Lcom/apk/ym;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/ym<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final new:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apk/ym;Lcom/apk/ym;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apk/ym<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lcom/apk/ym<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/nn;->do:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/apk/nn;->if:Lcom/apk/ym;

    .line 4
    iput-object p3, p0, Lcom/apk/nn;->for:Lcom/apk/ym;

    .line 5
    iput-object p4, p0, Lcom/apk/nn;->new:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/apk/eg;->transient(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public if(Ljava/lang/Object;IILcom/apk/mj;)Lcom/apk/ym$do;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    .line 2
    new-instance p1, Lcom/apk/ym$do;

    new-instance v9, Lcom/apk/vr;

    invoke-direct {v9, v4}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lcom/apk/nn$new;

    iget-object v1, p0, Lcom/apk/nn;->do:Landroid/content/Context;

    iget-object v2, p0, Lcom/apk/nn;->if:Lcom/apk/ym;

    iget-object v3, p0, Lcom/apk/nn;->for:Lcom/apk/ym;

    iget-object v8, p0, Lcom/apk/nn;->new:Ljava/lang/Class;

    move-object v0, v10

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/apk/nn$new;-><init>(Landroid/content/Context;Lcom/apk/ym;Lcom/apk/ym;Landroid/net/Uri;IILcom/apk/mj;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v10}, Lcom/apk/ym$do;-><init>(Lcom/apk/kj;Lcom/apk/uj;)V

    return-object p1
.end method
