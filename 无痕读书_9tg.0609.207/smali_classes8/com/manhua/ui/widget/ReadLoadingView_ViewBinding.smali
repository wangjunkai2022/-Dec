.class public Lcom/manhua/ui/widget/ReadLoadingView_ViewBinding;
.super Ljava/lang/Object;
.source "ReadLoadingView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/manhua/ui/widget/ReadLoadingView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ReadLoadingView;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/widget/ReadLoadingView_ViewBinding;->do:Lcom/manhua/ui/widget/ReadLoadingView;

    .line 3
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09037a

    const-string v2, "field \'mReloadLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/manhua/ui/widget/ReadLoadingView;->mReloadLayout:Landroid/widget/LinearLayout;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09037b

    const-string v2, "field \'mLoadLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090295

    const-string v2, "field \'mLogingTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/manhua/ui/widget/ReadLoadingView;->mLogingTxt:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ReadLoadingView_ViewBinding;->do:Lcom/manhua/ui/widget/ReadLoadingView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/manhua/ui/widget/ReadLoadingView_ViewBinding;->do:Lcom/manhua/ui/widget/ReadLoadingView;

    .line 3
    iput-object v1, v0, Lcom/manhua/ui/widget/ReadLoadingView;->mLogingTxt:Landroid/widget/TextView;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
