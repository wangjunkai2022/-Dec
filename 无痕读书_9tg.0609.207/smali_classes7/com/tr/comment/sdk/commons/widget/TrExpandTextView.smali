.class public Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;
.super Landroid/widget/FrameLayout;
.source "TrExpandTextView.java"


# instance fields
.field public case:I

.field public do:Landroid/widget/TextView;

.field public for:Z

.field public if:Landroid/widget/TextView;

.field public new:I

.field public try:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/tr/comment/sdk/R$layout;->tr_sdk_textview_expand_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    sget v1, Lcom/tr/comment/sdk/R$id;->tr_sdk_expand_content_tv:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    .line 4
    sget v1, Lcom/tr/comment/sdk/R$id;->tr_sdk_expand_more_btn:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    .line 5
    sget-object v1, Lcom/tr/comment/sdk/R$styleable;->TrCommentView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Lcom/tr/comment/sdk/R$styleable;->TrCommentView_tr_comment_sdk_tv_maxline:I

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->new:I

    .line 7
    sget p2, Lcom/tr/comment/sdk/R$styleable;->TrCommentView_tr_comment_sdk_tv_size:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tr/comment/sdk/R$dimen;->tr_sdk_comment_tv_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->try:F

    .line 10
    sget p2, Lcom/tr/comment/sdk/R$styleable;->TrCommentView_tr_comment_sdk_tv_color:I

    sget v1, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_333333:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->case:I

    .line 11
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    iget p2, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->try:F

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    iget p2, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->case:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    iget p2, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->new:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 14
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    new-instance p2, Lcom/apk/e90;

    invoke-direct {p2, p0}, Lcom/apk/e90;-><init>(Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    sget p2, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_reply_txt_night:I

    invoke-static {p2}, Lcom/apk/k40;->do(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    sget p2, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_night_bg:I

    invoke-static {p2}, Lcom/apk/k40;->do(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    sget p2, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_2e2e2e:I

    invoke-static {p2}, Lcom/apk/k40;->do(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    sget p2, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_day_bg:I

    invoke-static {p2}, Lcom/apk/k40;->do(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public static synthetic if(Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do()V

    return-void
.end method


# virtual methods
.method public final do()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->new:I

    const/16 v2, 0x8

    if-le v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->for:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 4
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    sget v1, Lcom/tr/comment/sdk/R$string;->tr_sdk_expand_more_txt:I

    invoke-static {v1}, Lcom/apk/k40;->while(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 9
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setExpand(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->for:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do()V

    .line 3
    new-instance p1, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView$do;

    invoke-direct {p1, p0}, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView$do;-><init>(Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
