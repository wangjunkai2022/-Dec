.class public Lcom/apk/jn$do;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Lcom/apk/zm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/jn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/zm<",
        "Lcom/apk/rm;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/xm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/xm<",
            "Lcom/apk/rm;",
            "Lcom/apk/rm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/xm;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/apk/xm;-><init>(J)V

    iput-object v0, p0, Lcom/apk/jn$do;->do:Lcom/apk/xm;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    return-void
.end method

.method public for(Lcom/apk/cn;)Lcom/apk/ym;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/cn;",
            ")",
            "Lcom/apk/ym<",
            "Lcom/apk/rm;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/apk/jn;

    iget-object v0, p0, Lcom/apk/jn$do;->do:Lcom/apk/xm;

    invoke-direct {p1, v0}, Lcom/apk/jn;-><init>(Lcom/apk/xm;)V

    return-object p1
.end method
