.class public final Lcom/apk/gp;
.super Ljava/lang/Object;
.source "GifBitmapProvider.java"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder$do;


# instance fields
.field public final do:Lcom/apk/pl;

.field public final if:Lcom/apk/nl;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/pl;Lcom/apk/nl;)V
    .locals 0
    .param p2    # Lcom/apk/nl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/gp;->do:Lcom/apk/pl;

    .line 3
    iput-object p2, p0, Lcom/apk/gp;->if:Lcom/apk/nl;

    return-void
.end method


# virtual methods
.method public do(I)[B
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/gp;->if:Lcom/apk/nl;

    if-nez v0, :cond_0

    .line 2
    new-array p1, p1, [B

    return-object p1

    .line 3
    :cond_0
    const-class v1, [B

    invoke-interface {v0, p1, v1}, Lcom/apk/nl;->case(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method
