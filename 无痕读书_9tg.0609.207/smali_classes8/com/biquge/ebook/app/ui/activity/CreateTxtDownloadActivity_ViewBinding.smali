.class public Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CreateTxtDownloadActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;

    .line 3
    const-class v0, Landroidx/appcompat/widget/AppCompatEditText;

    const v1, 0x7f0901a3

    const-string v2, "field \'mTitleET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;->mTitleET:Landroidx/appcompat/widget/AppCompatEditText;

    .line 4
    const-class v0, Landroidx/appcompat/widget/AppCompatEditText;

    const v1, 0x7f0901a4

    const-string v2, "field \'mUrlET\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;->mUrlET:Landroidx/appcompat/widget/AppCompatEditText;

    const v0, 0x7f0901a2

    const-string v1, "method \'menuClick\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 6
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity_ViewBinding;->if:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;->mTitleET:Landroidx/appcompat/widget/AppCompatEditText;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;->mUrlET:Landroidx/appcompat/widget/AppCompatEditText;

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
