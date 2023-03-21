.class public Lcom/apk/hn$new;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lcom/apk/zm;
.implements Lcom/apk/hn$for;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/hn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/zm<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/apk/hn$for<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/hn$new;->do:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    return-void
.end method

.method public for(Lcom/apk/cn;)Lcom/apk/ym;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/cn;",
            ")",
            "Lcom/apk/ym<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/apk/hn;

    invoke-direct {p1, p0}, Lcom/apk/hn;-><init>(Lcom/apk/hn$for;)V

    return-object p1
.end method

.method public if(Landroid/net/Uri;)Lcom/apk/uj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/apk/uj<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/fk;

    iget-object v1, p0, Lcom/apk/hn$new;->do:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lcom/apk/fk;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method
