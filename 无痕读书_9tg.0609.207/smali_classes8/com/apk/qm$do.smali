.class public Lcom/apk/qm$do;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lcom/apk/zm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/qm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/zm<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/qm$new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/qm$new<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/qm$new;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qm$new<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/qm$do;->do:Lcom/apk/qm$new;

    return-void
.end method


# virtual methods
.method public final do()V
    .locals 0

    return-void
.end method

.method public final for(Lcom/apk/cn;)Lcom/apk/ym;
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
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/apk/qm;

    iget-object v0, p0, Lcom/apk/qm$do;->do:Lcom/apk/qm$new;

    invoke-direct {p1, v0}, Lcom/apk/qm;-><init>(Lcom/apk/qm$new;)V

    return-object p1
.end method
