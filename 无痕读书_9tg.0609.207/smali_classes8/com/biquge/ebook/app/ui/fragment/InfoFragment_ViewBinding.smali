.class public Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;
.super Ljava/lang/Object;
.source "InfoFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public break:Landroid/view/View;

.field public case:Landroid/view/View;

.field public do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

.field public else:Landroid/view/View;

.field public for:Landroid/view/View;

.field public goto:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;

.field public this:Landroid/view/View;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    .line 3
    const-class v0, Lcom/biquge/ebook/app/widget/CircleImageView;

    const v1, 0x7f09022d

    const-string v2, "field \'mUserHeadView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/CircleImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUserHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090230

    const-string v2, "field \'mUserNameTView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUserNameTView:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090234

    const-string v2, "field \'mNickNameTView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mNickNameTView:Landroid/widget/TextView;

    const v0, 0x7f09025e

    const-string v1, "field \'mUploadTv\' and method \'menuClick\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mUploadTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUploadTv:Landroid/widget/TextView;

    .line 8
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->if:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f090260

    const-string v2, "field \'mWantProgressLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mWantProgressLayout:Landroid/widget/FrameLayout;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090261

    const-string v2, "field \'mWantProgressTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mWantProgressTv:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0902a9

    const-string v2, "field \'mSameTjLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 13
    const-class v0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    const v1, 0x7f09025d

    const-string v2, "field \'mNewShareEntranceView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mNewShareEntranceView:Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    .line 14
    const-class v0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeTextView;

    const v1, 0x7f0903cf

    const-string v2, "field \'mMyInfoMsgView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeTextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mMyInfoMsgView:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeTextView;

    .line 15
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090195

    const-string v2, "field \'mCompleRedTagView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mCompleRedTagView:Landroid/widget/ImageView;

    const v0, 0x7f090245

    const-string v1, "method \'menuClick\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->for:Landroid/view/View;

    .line 18
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$if;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090259

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->new:Landroid/view/View;

    .line 21
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$for;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090257

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->try:Landroid/view/View;

    .line 24
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$new;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$new;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090253

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->case:Landroid/view/View;

    .line 27
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$try;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$try;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09025c

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->else:Landroid/view/View;

    .line 30
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$case;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$case;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09025b

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->goto:Landroid/view/View;

    .line 33
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$else;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$else;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09025f

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->this:Landroid/view/View;

    .line 36
    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$goto;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$goto;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09025a

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->break:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$this;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding$this;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUserHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUserNameTView:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mNickNameTView:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUploadTv:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mWantProgressLayout:Landroid/widget/FrameLayout;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mWantProgressTv:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mNewShareEntranceView:Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    .line 10
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mMyInfoMsgView:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeTextView;

    .line 11
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mCompleRedTagView:Landroid/widget/ImageView;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->if:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->for:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->new:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->try:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->case:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->else:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->else:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->goto:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->goto:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->this:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->this:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->break:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment_ViewBinding;->break:Landroid/view/View;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
