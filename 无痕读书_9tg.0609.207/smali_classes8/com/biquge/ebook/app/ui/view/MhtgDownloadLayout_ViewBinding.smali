.class public Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout_ViewBinding;
.super Ljava/lang/Object;
.source "MhtgDownloadLayout_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout_ViewBinding;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    .line 3
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090127

    const-string v2, "field \'closeView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->closeView:Landroid/widget/LinearLayout;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090129

    const-string v2, "field \'descTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->descTv:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09012a

    const-string v2, "field \'installBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->installBtn:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090128

    const-string v2, "field \'cancelBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->cancelBtn:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout_ViewBinding;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout_ViewBinding;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->closeView:Landroid/widget/LinearLayout;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->descTv:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->installBtn:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->cancelBtn:Landroid/widget/TextView;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
