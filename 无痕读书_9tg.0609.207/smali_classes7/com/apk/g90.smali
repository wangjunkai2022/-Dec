.class public Lcom/apk/g90;
.super Landroid/widget/FrameLayout;
.source "TrFeedBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/g90$if;
    }
.end annotation


# instance fields
.field public do:Landroid/widget/ImageView;

.field public for:Lcom/tr/comment/sdk/bean/TrCommentBean;

.field public if:Landroid/widget/ImageView;

.field public new:Lcom/apk/o80;

.field public try:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/tr/comment/sdk/R$layout;->tr_sdk_comment_feedback_layout:I

    invoke-virtual {p1, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_feedback_top_jt:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/apk/g90;->do:Landroid/widget/ImageView;

    .line 4
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_feedback_bottom_jt:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/apk/g90;->if:Landroid/widget/ImageView;

    .line 5
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_facekeyboard_rv:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    new-instance v1, Lcom/tr/comment/sdk/commons/widget/view/TrFullyLinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tr/comment/sdk/commons/widget/view/TrFullyLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/apk/k40;->for(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tr/comment/sdk/R$array;->tr_sdk_feedback_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    .line 11
    array-length v3, v1

    if-lez v3, :cond_0

    .line 12
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 13
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/apk/g90$if;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/apk/g90$if;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 15
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    new-instance v1, Lcom/apk/f90;

    invoke-direct {v1, p0}, Lcom/apk/f90;-><init>(Lcom/apk/g90;)V

    .line 17
    iput-object v1, v0, Lcom/apk/y80;->throw:Lcom/apk/s90;

    .line 18
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/apk/g90;->do:Landroid/widget/ImageView;

    sget v1, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_comment_top_jt_night:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v0, p0, Lcom/apk/g90;->if:Landroid/widget/ImageView;

    sget v1, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_comment_bottom_jt_night:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    sget v0, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_center_dialog_bg_night:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public do(Landroid/app/Activity;Lcom/apk/g90;Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, p2, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/apk/g90;->try:Landroid/widget/PopupWindow;

    .line 5
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/apk/g90;->try:Landroid/widget/PopupWindow;

    sget v1, Lcom/tr/comment/sdk/R$style;->tr_sdk_comment_popwindow_anim_style:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7
    invoke-static {p3, p2}, Lcom/apk/sb0;->if(Landroid/view/View;Landroid/view/View;)Lcom/apk/vb0;

    move-result-object p2

    .line 8
    iget-boolean v0, p2, Lcom/apk/vb0;->do:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/apk/g90;->if:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/apk/g90;->do:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :cond_2
    :goto_0
    iget-object p2, p2, Lcom/apk/vb0;->if:[I

    .line 14
    aget v0, p2, v2

    add-int/lit8 v0, v0, -0x14

    aput v0, p2, v2

    .line 15
    iget-object v0, p0, Lcom/apk/g90;->try:Landroid/widget/PopupWindow;

    const v1, 0x800033

    aget v2, p2, v2

    aget p2, p2, v3

    invoke-virtual {v0, p3, v1, v2, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 16
    iget-object p2, p0, Lcom/apk/g90;->try:Landroid/widget/PopupWindow;

    new-instance p3, Lcom/apk/g90$do;

    invoke-direct {p3, p1}, Lcom/apk/g90$do;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public if(Lcom/tr/comment/sdk/bean/TrCommentBean;Lcom/apk/o80;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/apk/g90;->for:Lcom/tr/comment/sdk/bean/TrCommentBean;

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iput-object p2, p0, Lcom/apk/g90;->new:Lcom/apk/o80;

    :cond_1
    return-void
.end method
