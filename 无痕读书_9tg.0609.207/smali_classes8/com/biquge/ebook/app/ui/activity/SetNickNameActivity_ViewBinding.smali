.class public Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SetNickNameActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

    .line 3
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f0904ce

    const-string v2, "field \'mNickNameET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mNickNameET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904d1

    const-string v2, "field \'mAuditNickNameTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mAuditNickNameTv:Landroid/widget/TextView;

    const v0, 0x7f0904cf

    const-string v1, "field \'mSubmitTView\' and method \'menuClick\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mSubmitTView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mSubmitTView:Landroid/widget/TextView;

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding;->if:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904d0

    const-string v2, "field \'mTipsTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mTipsTv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mNickNameET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mAuditNickNameTv:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mSubmitTView:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mTipsTv:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
