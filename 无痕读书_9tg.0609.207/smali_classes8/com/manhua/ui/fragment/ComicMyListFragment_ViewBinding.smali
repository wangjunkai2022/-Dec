.class public Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ComicMyListFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/manhua/ui/fragment/ComicMyListFragment;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicMyListFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding;->do:Lcom/manhua/ui/fragment/ComicMyListFragment;

    .line 3
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f09007c

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/manhua/ui/fragment/ComicMyListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    const-class v0, Lcom/apk/b40;

    const v1, 0x7f09007b

    const-string v2, "field \'mIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/b40;

    iput-object v0, p1, Lcom/manhua/ui/fragment/ComicMyListFragment;->mIndicator:Lcom/apk/b40;

    const v0, 0x7f0903c9

    const-string v1, "method \'menuClick\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 6
    iput-object p2, p0, Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding;->if:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding$do;-><init>(Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding;Lcom/manhua/ui/fragment/ComicMyListFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding;->do:Lcom/manhua/ui/fragment/ComicMyListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding;->do:Lcom/manhua/ui/fragment/ComicMyListFragment;

    .line 3
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicMyListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicMyListFragment;->mIndicator:Lcom/apk/b40;

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/manhua/ui/fragment/ComicMyListFragment_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
