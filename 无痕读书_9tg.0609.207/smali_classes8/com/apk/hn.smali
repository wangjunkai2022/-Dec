.class public Lcom/apk/hn;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lcom/apk/ym;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/hn$do;,
        Lcom/apk/hn$if;,
        Lcom/apk/hn$new;,
        Lcom/apk/hn$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/ym<",
        "Landroid/net/Uri;",
        "TData;>;"
    }
.end annotation


# static fields
.field public static final if:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final do:Lcom/apk/hn$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/hn$for<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "file"

    const-string v2, "android.resource"

    const-string v3, "content"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/apk/hn;->if:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/apk/hn$for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/hn$for<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/hn;->do:Lcom/apk/hn$for;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    sget-object v0, Lcom/apk/hn;->if:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public if(Ljava/lang/Object;IILcom/apk/mj;)Lcom/apk/ym$do;
    .locals 0
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

    iget-object p4, p0, Lcom/apk/hn;->do:Lcom/apk/hn$for;

    invoke-interface {p4, p1}, Lcom/apk/hn$for;->if(Landroid/net/Uri;)Lcom/apk/uj;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/apk/ym$do;-><init>(Lcom/apk/kj;Lcom/apk/uj;)V

    return-object p2
.end method
