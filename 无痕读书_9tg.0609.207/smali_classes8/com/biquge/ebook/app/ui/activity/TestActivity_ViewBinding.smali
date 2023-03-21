.class public Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TestActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public break:Landroid/view/View;

.field public case:Landroid/view/View;

.field public do:Lcom/biquge/ebook/app/ui/activity/TestActivity;

.field public else:Landroid/view/View;

.field public for:Landroid/view/View;

.field public goto:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;

.field public this:Landroid/view/View;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/TestActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/TestActivity;

    .line 3
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f090075

    const-string v2, "field \'mGdtAdLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/TestActivity;->mGdtAdLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f090543

    const-string v1, "field \'mDeviceInfoTv\' and method \'menuClick\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mDeviceInfoTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/TestActivity;->mDeviceInfoTv:Landroid/widget/TextView;

    .line 6
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->if:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/TestActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09039e

    const-string v1, "method \'menuClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->for:Landroid/view/View;

    .line 10
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$if;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/TestActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090077

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->new:Landroid/view/View;

    .line 13
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$for;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/TestActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090092

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->try:Landroid/view/View;

    .line 16
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$new;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$new;-><init>(Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/TestActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090095

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->case:Landroid/view/View;

    .line 19
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$try;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$try;-><init>(Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/TestActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090091

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->else:Landroid/view/View;

    .line 22
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$case;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$case;-><init>(Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/TestActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090559

    .line 23
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->goto:Landroid/view/View;

    .line 25
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$else;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$else;-><init>(Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/TestActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090558

    .line 26
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->this:Landroid/view/View;

    .line 28
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$goto;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$goto;-><init>(Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/TestActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903eb

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->break:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$this;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding$this;-><init>(Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/TestActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/TestActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/TestActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/TestActivity;->mDeviceInfoTv:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->if:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->for:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->new:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->try:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->case:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->else:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->else:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->goto:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->goto:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->this:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->this:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->break:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity_ViewBinding;->break:Landroid/view/View;

    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
