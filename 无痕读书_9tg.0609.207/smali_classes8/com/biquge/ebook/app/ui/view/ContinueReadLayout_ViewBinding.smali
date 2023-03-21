.class public Lcom/biquge/ebook/app/ui/view/ContinueReadLayout_ViewBinding;
.super Ljava/lang/Object;
.source "ContinueReadLayout_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout_ViewBinding;->do:Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;

    .line 3
    const-class v0, Lcom/biquge/ebook/app/ui/view/CoverImageView;

    const v1, 0x7f090289

    const-string v2, "field \'mContinueReadIcon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/view/CoverImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mContinueReadIcon:Lcom/biquge/ebook/app/ui/view/CoverImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09028a

    const-string v2, "field \'mContinueReadName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mContinueReadName:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090287

    const-string v2, "field \'mContinueReadChapter\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mContinueReadChapter:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090286

    const-string v2, "field \'mReadBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mReadBtn:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout_ViewBinding;->do:Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout_ViewBinding;->do:Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mContinueReadIcon:Lcom/biquge/ebook/app/ui/view/CoverImageView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mContinueReadName:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mContinueReadChapter:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mReadBtn:Landroid/widget/TextView;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
