.class public Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public case:Landroid/view/View;

.field public do:Lcom/biquge/ebook/app/ui/activity/LoginActivity;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/LoginActivity;

    .line 3
    const-class v0, Lcom/biquge/ebook/app/widget/HeaderView;

    const v1, 0x7f090385

    const-string v2, "field \'headerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/HeaderView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->headerView:Lcom/biquge/ebook/app/widget/HeaderView;

    .line 4
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f090384

    const-string v2, "field \'mAccountET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 5
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f09038d

    const-string v2, "field \'mPasswordET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    const v0, 0x7f09038b

    const-string v1, "field \'mMsgLoginTv\' and method \'menuClick\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mMsgLoginTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->if:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09038e

    const-string v1, "field \'mRegisterTv\' and method \'menuClick\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mRegisterTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->for:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090386

    const-string v1, "field \'mAutoLoginTv\' and method \'menuClick\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mAutoLoginTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mAutoLoginTv:Landroid/widget/TextView;

    .line 16
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->new:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090430

    const-string v2, "field \'mServiceCheckBox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mServiceCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f09038a

    const-string v1, "method \'menuClick\'"

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->try:Landroid/view/View;

    .line 21
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding$new;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding$new;-><init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/LoginActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09038f

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 23
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->case:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding$try;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding$try;-><init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/LoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/LoginActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/LoginActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->headerView:Lcom/biquge/ebook/app/widget/HeaderView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mAutoLoginTv:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mServiceCheckBox:Landroid/widget/CheckBox;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->if:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->for:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->new:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->try:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity_ViewBinding;->case:Landroid/view/View;

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
