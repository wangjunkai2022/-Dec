.class public Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;
.super Ljava/lang/Object;
.source "TitleIndicatorView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

.field public for:Landroid/view/View;

.field public if:Landroid/view/View;

.field public new:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/TitleIndicatorView;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090227

    const-string v2, "field \'mTitleTView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mTitleTView:Landroid/widget/TextView;

    .line 4
    const-class v0, Lcom/apk/b40;

    const v1, 0x7f090225

    const-string v2, "field \'mIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/b40;

    iput-object v0, p1, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mIndicator:Lcom/apk/b40;

    .line 5
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090240

    const-string v2, "field \'switchLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->switchLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090241

    const-string v1, "field \'mSwitchLeftLayout\' and method \'menuClick\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mSwitchLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    .line 8
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;->if:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;Lcom/biquge/ebook/app/widget/TitleIndicatorView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090242

    const-string v1, "field \'mSwitchMiddleLayout\' and method \'menuClick\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mSwitchMiddleLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    .line 12
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;->for:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding$if;-><init>(Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;Lcom/biquge/ebook/app/widget/TitleIndicatorView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090243

    const-string v1, "field \'mSwitchRightLayout\' and method \'menuClick\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 15
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mSwitchRightLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    .line 16
    iput-object p2, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;->new:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding$for;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding$for;-><init>(Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;Lcom/biquge/ebook/app/widget/TitleIndicatorView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mTitleTView:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mIndicator:Lcom/apk/b40;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->switchLayout:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchLeftLayout:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchMiddleLayout:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->mSwitchRightLayout:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;->if:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;->for:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;->new:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/biquge/ebook/app/widget/TitleIndicatorView_ViewBinding;->new:Landroid/view/View;

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
