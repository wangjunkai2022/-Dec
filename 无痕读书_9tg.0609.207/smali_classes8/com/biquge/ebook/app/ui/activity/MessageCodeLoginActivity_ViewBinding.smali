.class public Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MessageCodeLoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;

    .line 3
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f09046e

    const-string v2, "field \'mAccountET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 4
    const-class v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f090478

    const-string v2, "field \'mVCodeET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mVCodeET:Lcom/biquge/ebook/app/widget/ClearEditText;

    const v0, 0x7f09060a

    const-string v1, "field \'mMessageTimerView\' and method \'menuClick\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Lcom/biquge/ebook/app/widget/MessageTimerView;

    const-string v3, "field \'mMessageTimerView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/MessageTimerView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mMessageTimerView:Lcom/biquge/ebook/app/widget/MessageTimerView;

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;->if:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f090430

    const-string v2, "field \'mServiceCheckBox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mServiceCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f090477

    const-string v1, "method \'menuClick\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;->for:Landroid/view/View;

    .line 12
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding$if;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090388

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;->new:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mVCodeET:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mMessageTimerView:Lcom/biquge/ebook/app/widget/MessageTimerView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mServiceCheckBox:Landroid/widget/CheckBox;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;->if:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;->for:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity_ViewBinding;->new:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
