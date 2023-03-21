.class public Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ClipImageActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;

    .line 3
    const-class v0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;

    const v1, 0x7f09015c

    const-string v2, "field \'clipViewLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;->clipViewLayout:Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;

    const v0, 0x7f090121

    const-string v1, "method \'menuClick\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;->if:Landroid/view/View;

    .line 6
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding$do;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090120

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;->for:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;->clipViewLayout:Lcom/biquge/ebook/app/widget/clip/ClipViewLayout;

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;->if:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;->for:Landroid/view/View;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
