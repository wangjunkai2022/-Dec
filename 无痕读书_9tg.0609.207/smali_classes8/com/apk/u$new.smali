.class public final Lcom/apk/u$new;
.super Ljava/lang/Object;
.source "ImageUtils.java"

# interfaces
.implements Lcom/apk/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/u;->return(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/cr<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/j1;


# direct methods
.method public constructor <init>(Lcom/apk/j1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/u$new;->do:Lcom/apk/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/Object;Ljava/lang/Object;Lcom/apk/pr;Lcom/apk/dj;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object p1, p0, Lcom/apk/u$new;->do:Lcom/apk/j1;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/apk/j1;->do()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public new(Lcom/apk/bl;Ljava/lang/Object;Lcom/apk/pr;Z)Z
    .locals 0
    .param p1    # Lcom/apk/bl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/bl;",
            "Ljava/lang/Object;",
            "Lcom/apk/pr<",
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/apk/u$new;->do:Lcom/apk/j1;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/apk/j1;->if()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
