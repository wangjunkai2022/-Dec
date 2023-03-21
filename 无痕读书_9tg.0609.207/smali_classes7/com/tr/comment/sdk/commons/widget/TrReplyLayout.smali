.class public Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;
.super Lcom/apk/c90;
.source "TrReplyLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/apk/lb0;
.implements Lcom/tr/comment/sdk/commons/widget/TrStateView$do;
.implements Lcom/apk/o80;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tr/comment/sdk/commons/widget/TrReplyLayout$do;
    }
.end annotation


# instance fields
.field public break:Ljava/lang/String;

.field public case:Ljava/lang/String;

.field public catch:Ljava/lang/String;

.field public class:Ljava/lang/String;

.field public const:Lcom/apk/p80;

.field public do:Landroid/view/View;

.field public else:Ljava/lang/String;

.field public final:I

.field public for:Landroidx/recyclerview/widget/RecyclerView;

.field public goto:Ljava/lang/String;

.field public if:Landroid/widget/LinearLayout;

.field public import:Lcom/apk/i80;

.field public native:Lcom/apk/kb0;

.field public new:Lcom/tr/comment/sdk/commons/widget/TrStateView;

.field public public:Landroid/widget/FrameLayout$LayoutParams;

.field public super:I

.field public this:Ljava/lang/String;

.field public throw:I

.field public try:Landroidx/fragment/app/FragmentActivity;

.field public while:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/c90;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->try:Landroidx/fragment/app/FragmentActivity;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/tr/comment/sdk/R$layout;->tr_sdk_reply_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_reply_bg_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->do:Landroid/view/View;

    .line 5
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_reply_list_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->if:Landroid/widget/LinearLayout;

    .line 6
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_reply_bg_rv:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_reply_state_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tr/comment/sdk/commons/widget/TrStateView;

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->new:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    .line 8
    invoke-virtual {p1, p0}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->setReloadClickListener(Lcom/tr/comment/sdk/commons/widget/TrStateView$do;)V

    .line 9
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->do:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->if:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->if:Landroid/widget/LinearLayout;

    sget v0, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_bg_bottom_dialog_night:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 15
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/apk/k40;->for(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 17
    new-instance p1, Lcom/apk/i80;

    iget-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->try:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v1, p2, v0}, Lcom/apk/i80;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    .line 18
    sget v0, Lcom/tr/comment/sdk/R$layout;->tr_sdk_load_loading_layout:I

    invoke-virtual {p1, v0}, Lcom/apk/s80;->while(I)V

    .line 19
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    sget v0, Lcom/tr/comment/sdk/R$layout;->tr_sdk_load_failed_layout:I

    .line 20
    iget-object v1, p1, Lcom/apk/s80;->for:Landroid/content/Context;

    if-gtz v0, :cond_1

    move-object v0, p2

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 22
    :goto_0
    iput-object v0, p1, Lcom/apk/s80;->this:Landroid/view/View;

    .line 23
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    new-instance v0, Lcom/apk/i90;

    invoke-direct {v0, p0}, Lcom/apk/i90;-><init>(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;)V

    .line 24
    iput-object v0, p1, Lcom/apk/s80;->if:Lcom/apk/u90;

    .line 25
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 26
    new-instance p1, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout$do;

    invoke-direct {p1, p0, p2}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout$do;-><init>(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;Lcom/apk/h90;)V

    .line 27
    iget-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_like_layout:I

    invoke-virtual {p2, v0, p1}, Lcom/apk/b90;->native(ILcom/apk/r90;)V

    .line 28
    iget-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_reply_layout:I

    invoke-virtual {p2, v0, p1}, Lcom/apk/b90;->native(ILcom/apk/r90;)V

    .line 29
    iget-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_jubao_btn:I

    invoke-virtual {p2, v0, p1}, Lcom/apk/b90;->native(ILcom/apk/r90;)V

    .line 30
    new-instance p1, Lcom/apk/kb0;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/apk/kb0;-><init>(Landroid/content/Context;Lcom/apk/lb0;)V

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->native:Lcom/apk/kb0;

    .line 31
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->if:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/apk/h90;

    invoke-direct {p2, p0}, Lcom/apk/h90;-><init>(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic break(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->class(Z)V

    return-void
.end method

.method private setListHeight(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->public:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->if:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->public:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 3
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->public:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x50

    .line 5
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->if:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTopComment(Lcom/tr/comment/sdk/bean/TrCommentBean;)V
    .locals 3

    .line 1
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_reply_top_comment_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_shape_poster_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_poster_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_reply_tv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_avatar_iv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserFace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/ha0;->do(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_author_tv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_data_tv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->isUserAdd()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/tr/comment/sdk/R$string;->tr_sdk_comment_reply_date_just:I

    invoke-static {v1}, Lcom/apk/k40;->while(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/k40;->throws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_content_tv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;

    .line 13
    iget-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->try:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apk/la0;->if(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_like_tv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 15
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getCommendCount()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getCommendCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget p1, Lcom/tr/comment/sdk/R$string;->tr_sdk_comment_like_txt:I

    .line 16
    invoke-static {p1}, Lcom/apk/k40;->while(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic this(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->setListHeight(I)V

    return-void
.end method


# virtual methods
.method public case(Lcom/tr/comment/sdk/bean/TrCommentBean;)V
    .locals 0

    return-void
.end method

.method public catch()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->do:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v4, Lcom/apk/l90;

    invoke-direct {v4, p0}, Lcom/apk/l90;-><init>(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 6
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->if:Landroid/widget/LinearLayout;

    new-array v1, v1, [I

    iget v4, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->throw:I

    const/4 v5, 0x0

    aput v4, v1, v5

    const/4 v4, 0x1

    aput v5, v1, v4

    const-string v4, "height"

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 8
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    new-instance v1, Lcom/apk/m90;

    invoke-direct {v1, p0}, Lcom/apk/m90;-><init>(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final class(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->native:Lcom/apk/kb0;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->goto()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->while:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->native:Lcom/apk/kb0;

    iget-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->case:Ljava/lang/String;

    iget-object v2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->goto:Ljava/lang/String;

    iget-object v3, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->this:Ljava/lang/String;

    iget-object v4, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->break:Ljava/lang/String;

    iget-object v5, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->else:Ljava/lang/String;

    iget v6, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->while:I

    if-eqz v0, :cond_1

    .line 5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/fa0;->while()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/commentservice/comment/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v1, v3, v1, v4}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".html"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1, v6, p1}, Lcom/apk/kb0;->case(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public const(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tr/comment/sdk/bean/TrCommentBean;Lcom/apk/p80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->try:Landroidx/fragment/app/FragmentActivity;

    .line 2
    iput-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->case:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->else:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->goto:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->this:Ljava/lang/String;

    .line 6
    invoke-virtual {p6}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->break:Ljava/lang/String;

    .line 7
    invoke-virtual {p6}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->catch:Ljava/lang/String;

    .line 8
    invoke-virtual {p6}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->class:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->const:Lcom/apk/p80;

    .line 10
    invoke-direct {p0, p6}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->setTopComment(Lcom/tr/comment/sdk/bean/TrCommentBean;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    iget-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->do:Landroid/view/View;

    const/4 p3, 0x2

    new-array p4, p3, [F

    fill-array-data p4, :array_0

    const-string p5, "alpha"

    invoke-static {p2, p5, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 p4, 0x96

    .line 13
    invoke-virtual {p2, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 14
    new-instance p4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 16
    iget-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->if:Landroid/widget/LinearLayout;

    new-array p3, p3, [I

    aput p1, p3, p1

    iget p4, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->throw:I

    const/4 p5, 0x1

    aput p4, p3, p5

    const-string p4, "height"

    invoke-static {p2, p4, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 17
    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 p3, 0xfa

    .line 18
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 19
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    new-instance p1, Lcom/apk/j90;

    invoke-direct {p1, p0}, Lcom/apk/j90;-><init>(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;)V

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    new-instance p1, Lcom/apk/k90;

    invoke-direct {p1, p0}, Lcom/apk/k90;-><init>(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;)V

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public do()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->class(Z)V

    return-void
.end method

.method public else(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->break:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->break:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/apk/s80;->case(Ljava/lang/Object;I)V

    .line 3
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->new:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try()V

    :cond_1
    return-void
.end method

.method public for()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->new:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try()V

    :cond_0
    return-void
.end method

.method public getParentContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->class:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->break:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->catch:Ljava/lang/String;

    return-object v0
.end method

.method public goto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->new:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->new()V

    :cond_0
    return-void
.end method

.method public if(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->native:Lcom/apk/kb0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->case:Ljava/lang/String;

    iget-object v2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->goto:Ljava/lang/String;

    iget-object v3, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->this:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/apk/kb0;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public new(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    invoke-virtual {v0}, Lcom/apk/s80;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    invoke-virtual {v2, v1}, Lcom/apk/s80;->new(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tr/comment/sdk/bean/TrCommentBean;

    .line 4
    invoke-virtual {v2}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    invoke-virtual {p1, v1}, Lcom/apk/i80;->return(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_reply_bg_view:I

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->catch()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->final:I

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 3
    :cond_0
    iget v0, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->super:I

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public try(Ljava/util/List;IZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tr/comment/sdk/bean/TrCommentBean;",
            ">;IZZ)V"
        }
    .end annotation

    if-nez p4, :cond_3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->new:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->for()V

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-nez p4, :cond_1

    .line 4
    iget-object p4, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->new:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz p4, :cond_2

    .line 5
    sget v0, Lcom/tr/comment/sdk/R$string;->tr_sdk_comment_reply_empty_txt:I

    invoke-static {v0}, Lcom/apk/k40;->while(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->do(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p4, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->new:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz p4, :cond_2

    .line 7
    invoke-virtual {p4}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try()V

    :cond_2
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 8
    iput p2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->while:I

    .line 9
    iget-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {p2}, Lcom/apk/s80;->import()V

    .line 11
    iget-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    invoke-virtual {p2, p1}, Lcom/apk/s80;->break(Ljava/util/List;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object p4, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    if-eqz p4, :cond_5

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p4, Lcom/apk/s80;->this:Landroid/view/View;

    invoke-virtual {p4, p1}, Lcom/apk/s80;->try(Landroid/view/View;)V

    .line 14
    iget-object p1, p4, Lcom/apk/s80;->this:Landroid/view/View;

    new-instance p2, Lcom/apk/u80;

    invoke-direct {p2, p4}, Lcom/apk/u80;-><init>(Lcom/apk/s80;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 15
    iput p2, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->while:I

    .line 16
    invoke-virtual {p4, p1}, Lcom/apk/s80;->else(Ljava/util/List;)V

    :cond_5
    :goto_1
    if-nez p3, :cond_6

    .line 17
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/apk/s80;->super()V

    :cond_6
    return-void
.end method
