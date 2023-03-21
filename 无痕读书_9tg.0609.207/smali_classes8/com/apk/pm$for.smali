.class public final Lcom/apk/pm$for;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lcom/apk/zm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/zm<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/pm$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/pm$do<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/pm$for$do;

    invoke-direct {v0, p0}, Lcom/apk/pm$for$do;-><init>(Lcom/apk/pm$for;)V

    iput-object v0, p0, Lcom/apk/pm$for;->do:Lcom/apk/pm$do;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    return-void
.end method

.method public for(Lcom/apk/cn;)Lcom/apk/ym;
    .locals 1
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
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/apk/pm;

    iget-object v0, p0, Lcom/apk/pm$for;->do:Lcom/apk/pm$do;

    invoke-direct {p1, v0}, Lcom/apk/pm;-><init>(Lcom/apk/pm$do;)V

    return-object p1
.end method
