.class public Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BookDetailDirFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0903ec

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "top"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "bottom"

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->synchronized(I)V

    .line 5
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirSortView:Landroid/widget/ImageView;

    const v1, 0x7f08015e

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 8
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->synchronized(I)V

    .line 9
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirSortView:Landroid/widget/ImageView;

    const v2, 0x7f08015f

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 11
    throw p1
.end method
