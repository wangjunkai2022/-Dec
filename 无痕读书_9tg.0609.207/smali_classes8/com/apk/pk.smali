.class public Lcom/apk/pk;
.super Ljava/lang/Object;
.source "DataCacheWriter.java"

# interfaces
.implements Lcom/apk/zl$if;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/zl$if;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/gj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gj<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final for:Lcom/apk/mj;

.field public final if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/gj;Ljava/lang/Object;Lcom/apk/mj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/gj<",
            "TDataType;>;TDataType;",
            "Lcom/apk/mj;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/pk;->do:Lcom/apk/gj;

    .line 3
    iput-object p2, p0, Lcom/apk/pk;->if:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/apk/pk;->for:Lcom/apk/mj;

    return-void
.end method
