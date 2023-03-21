.class public Lcom/apk/xo;
.super Ljava/lang/Object;
.source "BytesResource.java"

# interfaces
.implements Lcom/apk/gl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/gl<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final do:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/apk/xo;->do:[B

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    return-void
.end method

.method public for()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/xo;->do:[B

    array-length v0, v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/xo;->do:[B

    return-object v0
.end method

.method public new()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "[B>;"
        }
    .end annotation

    .line 1
    const-class v0, [B

    return-object v0
.end method
