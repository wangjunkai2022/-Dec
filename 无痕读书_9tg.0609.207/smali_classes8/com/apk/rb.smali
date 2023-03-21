.class public Lcom/apk/rb;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/biquge/ebook/app/ad/AdFloatView$for;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ad/AdFloatView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;Lcom/biquge/ebook/app/ad/AdFloatView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/apk/rb;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/rb;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/rb;->do:Lcom/biquge/ebook/app/ad/AdFloatView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
