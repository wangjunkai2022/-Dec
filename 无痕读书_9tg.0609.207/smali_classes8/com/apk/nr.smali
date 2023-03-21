.class public abstract Lcom/apk/nr;
.super Lcom/apk/gr;
.source "SimpleTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apk/gr<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final for:I

.field public final if:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/gr;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lcom/apk/nr;->if:I

    .line 3
    iput v0, p0, Lcom/apk/nr;->for:I

    return-void
.end method


# virtual methods
.method public final break(Lcom/apk/or;)V
    .locals 3
    .param p1    # Lcom/apk/or;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/apk/nr;->if:I

    iget v1, p0, Lcom/apk/nr;->for:I

    invoke-static {v0, v1}, Lcom/apk/gs;->const(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/apk/nr;->if:I

    iget v1, p0, Lcom/apk/nr;->for:I

    invoke-interface {p1, v0, v1}, Lcom/apk/or;->if(II)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apk/nr;->if:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apk/nr;->for:I

    const-string v2, ", either provide dimensions in the constructor or call override()"

    invoke-static {v0, v1, v2}, Lcom/apk/goto;->this(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public do(Lcom/apk/or;)V
    .locals 0
    .param p1    # Lcom/apk/or;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
