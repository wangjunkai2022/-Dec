.class public Lcom/tr/comment/sdk/commons/widget/TrStateView;
.super Landroid/widget/FrameLayout;
.source "TrStateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tr/comment/sdk/commons/widget/TrStateView$do;
    }
.end annotation


# instance fields
.field public break:Lcom/tr/comment/sdk/commons/widget/TrStateView$do;

.field public final case:Landroid/widget/ImageView;

.field public final do:Landroid/view/View;

.field public final else:Landroid/widget/TextView;

.field public final for:Landroid/view/View;

.field public goto:I

.field public final if:Landroid/widget/TextView;

.field public final new:Landroid/widget/TextView;

.field public this:I

.field public final try:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/tr/comment/sdk/R$layout;->tr_sdk_state_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_state_loading:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->do:Landroid/view/View;

    .line 4
    sget p2, Lcom/tr/comment/sdk/R$id;->tr_sdk_state_empty:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->for:Landroid/view/View;

    .line 5
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_state_failed:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try:Landroid/view/View;

    .line 6
    sget v1, Lcom/tr/comment/sdk/R$id;->tr_sdk_state_loading_msg_tv:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->if:Landroid/widget/TextView;

    .line 7
    sget v2, Lcom/tr/comment/sdk/R$id;->tr_sdk_state_empty_text:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->new:Landroid/widget/TextView;

    .line 8
    sget v3, Lcom/tr/comment/sdk/R$id;->tr_sdk_state_failed_img:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->case:Landroid/widget/ImageView;

    .line 9
    sget v3, Lcom/tr/comment/sdk/R$id;->tr_sdk_state_failed_tv:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->else:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    sget p1, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_reply_txt_night:I

    invoke-static {p1}, Lcom/apk/k40;->do(I)I

    move-result p1

    .line 15
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try()V

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/apk/n90;

    invoke-direct {p2, p0}, Lcom/apk/n90;-><init>(Lcom/tr/comment/sdk/commons/widget/TrStateView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->new:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->do:Landroid/view/View;

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try:Landroid/view/View;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->for:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->if(Landroid/view/View;)V

    return-void
.end method

.method public for()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->else:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->do:Landroid/view/View;

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->for:Landroid/view/View;

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->if(Landroid/view/View;)V

    return-void
.end method

.method public final if(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public new()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->if:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->for:Landroid/view/View;

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try:Landroid/view/View;

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->do:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->if(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_state_failed:I

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {}, Lcom/apk/tb0;->do()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->break:Lcom/tr/comment/sdk/commons/widget/TrStateView$do;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/tr/comment/sdk/commons/widget/TrStateView$do;->do()V

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->goto:I

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 3
    :cond_0
    iget v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->this:I

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setReloadClickListener(Lcom/tr/comment/sdk/commons/widget/TrStateView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->break:Lcom/tr/comment/sdk/commons/widget/TrStateView$do;

    return-void
.end method

.method public try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->do:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
