.class public Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SetActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public break:Landroid/view/View;

.field public case:Landroid/view/View;

.field public catch:Landroid/view/View;

.field public do:Lcom/biquge/ebook/app/ui/activity/SetActivity;

.field public else:Landroid/view/View;

.field public for:Landroid/view/View;

.field public goto:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;

.field public this:Landroid/view/View;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/SetActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904c9

    const-string v2, "field \'mBookCacheSizeTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/SetActivity;->mBookCacheSizeTxt:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904ca

    const-string v2, "field \'mComicCacheSizeTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/SetActivity;->mComicCacheSizeTxt:Landroid/widget/TextView;

    const v0, 0x7f090256

    const-string v1, "field \'mNightDayTView\' and method \'menuClick\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mNightDayTView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/SetActivity;->mNightDayTView:Landroid/widget/TextView;

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->if:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090255

    const-string v1, "method \'menuClick\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->for:Landroid/view/View;

    .line 11
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$for;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c8

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->new:Landroid/view/View;

    .line 14
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$new;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$new;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c4

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->try:Landroid/view/View;

    .line 17
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$try;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$try;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c6

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->case:Landroid/view/View;

    .line 20
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$case;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$case;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090158

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->else:Landroid/view/View;

    .line 23
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$else;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$else;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090159

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->goto:Landroid/view/View;

    .line 26
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$goto;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$goto;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09015a

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->this:Landroid/view/View;

    .line 29
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$this;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$this;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090082

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->break:Landroid/view/View;

    .line 32
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$break;

    invoke-direct {v2, p0, p1}, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$break;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904cc

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->catch:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/SetActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/SetActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->mBookCacheSizeTxt:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->mComicCacheSizeTxt:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->mNightDayTView:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->if:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->for:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->new:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->try:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->case:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->case:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->else:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->else:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->goto:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->goto:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->this:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->this:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->break:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->break:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->catch:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity_ViewBinding;->catch:Landroid/view/View;

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
