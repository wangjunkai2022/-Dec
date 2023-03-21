.class public Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ForgetPasswordActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09046e

    const-string v2, "field \'mAccountET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mAccountET:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090473

    const-string v2, "field \'mOldPasswordLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mOldPasswordLayout:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f090472

    const-string v2, "field \'mOldPasswordET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mOldPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 6
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f090475

    const-string v2, "field \'mPasswordET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 7
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f090470

    const-string v2, "field \'mAgainPasswordET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mAgainPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    const v0, 0x7f090477

    const-string v1, "method \'menuClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 9
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity_ViewBinding;->if:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mAccountET:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mOldPasswordLayout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mOldPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mAgainPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
