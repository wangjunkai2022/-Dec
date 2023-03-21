.class public abstract Lcom/apk/sy;
.super Ljava/lang/Object;
.source "DownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/sy<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/sy;->do:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract do(Lcom/apk/hy;)V
.end method

.method public abstract for(Lcom/apk/hy;)V
.end method

.method public abstract if(Ljava/lang/Object;Lcom/apk/hy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/apk/hy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract new(Lcom/apk/hy;)V
.end method

.method public abstract try(Lcom/apk/hy;)V
.end method
