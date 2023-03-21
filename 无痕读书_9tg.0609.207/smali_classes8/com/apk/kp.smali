.class public Lcom/apk/kp;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lcom/apk/qj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/qj<",
        "Lcom/apk/hp;",
        ">;"
    }
.end annotation


# instance fields
.field public final if:Lcom/apk/qj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/qj<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/qj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qj<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/apk/kp;->if:Lcom/apk/qj;

    return-void
.end method


# virtual methods
.method public do(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/kp;->if:Lcom/apk/qj;

    invoke-interface {v0, p1}, Lcom/apk/kj;->do(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/apk/kp;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/apk/kp;

    .line 3
    iget-object v0, p0, Lcom/apk/kp;->if:Lcom/apk/qj;

    iget-object p1, p1, Lcom/apk/kp;->if:Lcom/apk/qj;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/kp;->if:Lcom/apk/qj;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public if(Landroid/content/Context;Lcom/apk/gl;II)Lcom/apk/gl;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/gl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apk/gl<",
            "Lcom/apk/hp;",
            ">;II)",
            "Lcom/apk/gl<",
            "Lcom/apk/hp;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/apk/gl;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/hp;

    .line 2
    invoke-static {p1}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/apk/ii;->if:Lcom/apk/pl;

    .line 4
    invoke-virtual {v0}, Lcom/apk/hp;->if()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/apk/vn;

    invoke-direct {v3, v2, v1}, Lcom/apk/vn;-><init>(Landroid/graphics/Bitmap;Lcom/apk/pl;)V

    .line 6
    iget-object v1, p0, Lcom/apk/kp;->if:Lcom/apk/qj;

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/apk/qj;->if(Landroid/content/Context;Lcom/apk/gl;II)Lcom/apk/gl;

    move-result-object p1

    .line 7
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 8
    invoke-virtual {v3}, Lcom/apk/vn;->do()V

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/apk/gl;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 10
    iget-object p3, p0, Lcom/apk/kp;->if:Lcom/apk/qj;

    .line 11
    iget-object p4, v0, Lcom/apk/hp;->do:Lcom/apk/hp$do;

    iget-object p4, p4, Lcom/apk/hp$do;->do:Lcom/apk/lp;

    invoke-virtual {p4, p3, p1}, Lcom/apk/lp;->for(Lcom/apk/qj;Landroid/graphics/Bitmap;)V

    return-object p2
.end method
