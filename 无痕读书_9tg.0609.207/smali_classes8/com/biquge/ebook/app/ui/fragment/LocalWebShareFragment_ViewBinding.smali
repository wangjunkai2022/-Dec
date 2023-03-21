.class public Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;
.super Ljava/lang/Object;
.source "LocalWebShareFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    .line 3
    const-class v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const v1, 0x7f09008f

    const-string v2, "field \'mPtrClassicFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 4
    const-class v0, Landroid/widget/ScrollView;

    const v1, 0x7f090090

    const-string v2, "field \'mScrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->mScrollView:Landroid/widget/ScrollView;

    const v0, 0x7f0904dd

    const-string v1, "field \'share_code\' and method \'menuClk\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'share_code\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->share_code:Landroid/widget/TextView;

    .line 7
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;->if:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0901d0

    const-string v2, "field \'dialog_qrcode_imageview\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->dialog_qrcode_imageview:Landroid/widget/ImageView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09055e

    const-string v2, "field \'tips_title1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->tips_title1:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09056a

    const-string v2, "field \'tp_number\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->tp_number:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09009b

    const-string v2, "field \'ad_number\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->ad_number:Landroid/widget/TextView;

    .line 13
    const-class v0, Lcom/biquge/ebook/app/widget/AppProgressBar;

    const v1, 0x7f0901d1

    const-string v2, "field \'dialog_qrcode_progress_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/AppProgressBar;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->dialog_qrcode_progress_view:Lcom/biquge/ebook/app/widget/AppProgressBar;

    const v0, 0x7f090665

    const-string v1, "field \'yaoqing_number\' and method \'menuClk\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'yaoqing_number\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->yaoqing_number:Landroid/widget/TextView;

    .line 16
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;->for:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904ea

    const-string v1, "method \'menuClk\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 19
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;->new:Landroid/view/View;

    .line 20
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->share_code:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->dialog_qrcode_imageview:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->tips_title1:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->tp_number:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->ad_number:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->dialog_qrcode_progress_view:Lcom/biquge/ebook/app/widget/AppProgressBar;

    .line 11
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->yaoqing_number:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;->if:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;->for:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment_ViewBinding;->new:Landroid/view/View;

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
