.class public Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ChangePhoneActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0905f5

    const-string v2, "field \'mAccountTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mAccountTv:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0905f7

    const-string v2, "field \'mOldPhoneET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mOldPhoneET:Landroid/widget/EditText;

    .line 5
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0905f6

    const-string v2, "field \'mNewPhoneET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mNewPhoneET:Landroid/widget/EditText;

    .line 6
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09039c

    const-string v2, "field \'mMsgCodeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 7
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f0902a7

    const-string v2, "field \'mMsgCodeET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mMsgCodeET:Lcom/biquge/ebook/app/widget/ClearEditText;

    const v0, 0x7f09060a

    const-string v1, "field \'mMessageTimerView\' and method \'menuClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Lcom/biquge/ebook/app/widget/MessageTimerView;

    const-string v3, "field \'mMessageTimerView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/MessageTimerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mMessageTimerView:Lcom/biquge/ebook/app/widget/MessageTimerView;

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;->if:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090196

    const-string v1, "field \'mSubmitBt\' and method \'menuClick\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mSubmitBt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 14
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;->for:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090388

    const-string v1, "method \'menuClick\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 17
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;->new:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mAccountTv:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mOldPhoneET:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mNewPhoneET:Landroid/widget/EditText;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mMsgCodeET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mMessageTimerView:Lcom/biquge/ebook/app/widget/MessageTimerView;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;->if:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;->for:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity_ViewBinding;->new:Landroid/view/View;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
