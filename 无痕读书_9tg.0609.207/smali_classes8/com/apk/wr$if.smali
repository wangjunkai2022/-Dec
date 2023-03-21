.class public final Lcom/apk/wr$if;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/wr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final do:I

.field public final for:[B

.field public final if:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/wr$if;->for:[B

    .line 3
    iput p2, p0, Lcom/apk/wr$if;->do:I

    .line 4
    iput p3, p0, Lcom/apk/wr$if;->if:I

    return-void
.end method
