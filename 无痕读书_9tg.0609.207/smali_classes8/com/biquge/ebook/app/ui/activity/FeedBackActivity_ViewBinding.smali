.class public Lcom/biquge/ebook/app/ui/activity/FeedBackActivity_ViewBinding;
.super Ljava/lang/Object;
.source "FeedBackActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    .line 3
    const-class v0, Lcom/google/android/flexbox/FlexboxLayout;

    const v1, 0x7f0901fe

    const-string v2, "field \'mAnsFlexboxLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->mAnsFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090191

    const-string v2, "field \'commit_tips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->commit_tips:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0902aa

    const-string v2, "field \'input_et\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->input_et:Landroid/widget/EditText;

    .line 6
    const-class v0, Landroid/widget/ScrollView;

    const v1, 0x7f09040b

    const-string v2, "field \'parent_sv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->parent_sv:Landroid/widget/ScrollView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903fa

    const-string v2, "field \'number_tips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->number_tips:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090476

    const-string v2, "field \'register_phone_et\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->register_phone_et:Landroid/widget/EditText;

    .line 9
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090479

    const-string v2, "field \'register_weixin_qq_et\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->register_weixin_qq_et:Landroid/widget/EditText;

    const v0, 0x7f090190

    const-string v1, "method \'menuClk\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity_ViewBinding;->if:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity_ViewBinding$do;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity_ViewBinding$do;-><init>(Lcom/biquge/ebook/app/ui/activity/FeedBackActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity_ViewBinding;->do:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->mAnsFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->commit_tips:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->input_et:Landroid/widget/EditText;

    .line 6
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->parent_sv:Landroid/widget/ScrollView;

    .line 7
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->number_tips:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->register_phone_et:Landroid/widget/EditText;

    .line 9
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->register_weixin_qq_et:Landroid/widget/EditText;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity_ViewBinding;->if:Landroid/view/View;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
