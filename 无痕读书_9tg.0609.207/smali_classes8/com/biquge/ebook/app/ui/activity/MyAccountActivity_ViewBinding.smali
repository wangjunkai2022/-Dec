.class public Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MyAccountActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public case:Landroid/view/View;

.field public do:Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;

.field public else:Landroid/view/View;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;

    .line 3
    const-class v0, Lcom/biquge/ebook/app/widget/CircleImageView;

    const v1, 0x7f09022e

    const-string v2, "field \'mHeadView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/CircleImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090232

    const-string v2, "field \'mNickNameTView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mNickNameTView:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090231

    const-string v2, "field \'mLoginNameTView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mLoginNameTView:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903c2

    const-string v2, "field \'mCompleInfoTitleTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mCompleInfoTitleTxt:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903c3

    const-string v2, "field \'mPhoneTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mPhoneTxt:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903c0

    const-string v2, "field \'mBandUserInfoTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mBandUserInfoTxt:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09022a

    const-string v2, "field \'mEmailTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mEmailTv:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903c7

    const-string v2, "field \'mUpdatePasswordTitleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mUpdatePasswordTitleTv:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903c5

    const-string v2, "field \'mUpdatePasswordBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mUpdatePasswordBtn:Landroid/widget/TextView;

    const v0, 0x7f0903bf

    const-string v1, "method \'menuClick\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->if:Landroid/view/View;

    .line 14
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding$do;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903c6

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->for:Landroid/view/View;

    .line 17
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding$if;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09022f

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->new:Landroid/view/View;

    .line 20
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding$for;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903c1

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->try:Landroid/view/View;

    .line 23
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding$new;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding$new;-><init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903c8

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->case:Landroid/view/View;

    .line 26
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding$try;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding$try;-><init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090233

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->else:Landroid/view/View;

    .line 29
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding$case;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding$case;-><init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mNickNameTView:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mLoginNameTView:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mCompleInfoTitleTxt:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mPhoneTxt:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mBandUserInfoTxt:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mEmailTv:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mUpdatePasswordTitleTv:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mUpdatePasswordBtn:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->if:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->for:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->new:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->try:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->case:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->else:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity_ViewBinding;->else:Landroid/view/View;

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
