.class public Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WantReadBookActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;

    .line 3
    const-class v0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    const v1, 0x7f09061a

    const-string v2, "field \'mMarqueeView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->mMarqueeView:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09036f

    const-string v2, "field \'lastWeekNumberTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->lastWeekNumberTv:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090370

    const-string v2, "field \'lastWeekPeopleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->lastWeekPeopleTv:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090568

    const-string v2, "field \'totalPeopleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->totalPeopleTv:Landroid/widget/TextView;

    .line 7
    const-class v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const v1, 0x7f0905f3

    const-string v2, "field \'indicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 8
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09061b

    const-string v2, "field \'mNameEt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->mNameEt:Landroid/widget/EditText;

    .line 9
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09061c

    const-string v2, "field \'mAuthorEt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->mAuthorEt:Landroid/widget/EditText;

    const v0, 0x7f090619

    const-string v1, "method \'menuClick\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity_ViewBinding;->if:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->mMarqueeView:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->lastWeekNumberTv:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->lastWeekPeopleTv:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->totalPeopleTv:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->mNameEt:Landroid/widget/EditText;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->mAuthorEt:Landroid/widget/EditText;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
