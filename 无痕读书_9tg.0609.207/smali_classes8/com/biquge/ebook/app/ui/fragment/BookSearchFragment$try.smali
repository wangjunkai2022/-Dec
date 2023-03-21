.class public Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$try;
.super Ljava/lang/Object;
.source "BookSearchFragment.java"

# interfaces
.implements Lcom/apk/b40$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->a(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;I)V

    .line 2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/continue;->case()Z

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-ge p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-ge p2, v0, :cond_0

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$try;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mForBooksTv:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x4

    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
