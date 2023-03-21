.class public Lcom/tr/comment/sdk/view/TrCommentView;
.super Lcom/apk/c90;
.source "TrCommentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/apk/lb0;
.implements Lcom/tr/comment/sdk/commons/widget/TrStateView$do;
.implements Lcom/apk/o80;
.implements Lcom/apk/p80;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tr/comment/sdk/view/TrCommentView$try;
    }
.end annotation


# instance fields
.field public abstract:I

.field public break:Ljava/lang/String;

.field public case:Landroid/view/View;

.field public catch:Ljava/lang/String;

.field public class:Ljava/lang/String;

.field public const:I

.field public default:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

.field public do:Lcom/apk/za0;

.field public else:Landroid/widget/ImageView;

.field public extends:Lcom/tr/comment/sdk/bean/TrCommentBean;

.field public final:Lcom/apk/i80;

.field public finally:I

.field public for:Landroid/widget/FrameLayout;

.field public goto:Landroid/widget/EditText;

.field public if:Landroidx/fragment/app/FragmentActivity;

.field public import:Ljava/lang/String;

.field public native:I

.field public new:Landroidx/recyclerview/widget/RecyclerView;

.field public final package:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public private:Landroid/view/View;

.field public public:Landroid/widget/TextView;

.field public return:Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;

.field public static:Z

.field public super:Lcom/apk/kb0;

.field public switch:Landroid/widget/FrameLayout;

.field public this:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

.field public throw:Lcom/tr/comment/sdk/bean/TrSortType;

.field public throws:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

.field public try:Lcom/tr/comment/sdk/commons/widget/TrStateView;

.field public while:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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
    sget-object v1, Lcom/tr/comment/sdk/bean/TrSortType;->HOT:Lcom/tr/comment/sdk/bean/TrSortType;

    iput-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->throw:Lcom/tr/comment/sdk/bean/TrSortType;

    .line 3
    iput v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->finally:I

    .line 4
    new-instance v1, Lcom/tr/comment/sdk/view/TrCommentView$for;

    invoke-direct {v1, p0}, Lcom/tr/comment/sdk/view/TrCommentView$for;-><init>(Lcom/tr/comment/sdk/view/TrCommentView;)V

    iput-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->package:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5
    sget-object v1, Lcom/tr/comment/sdk/R$styleable;->TrCommentView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    sget v1, Lcom/tr/comment/sdk/R$styleable;->TrCommentView_tr_comment_sdk_idea_type:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->while:Z

    .line 7
    :cond_0
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/tr/comment/sdk/R$layout;->tr_sdk_commentview:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_content_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->for:Landroid/widget/FrameLayout;

    .line 10
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_state_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tr/comment/sdk/commons/widget/TrStateView;

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->try:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    .line 11
    invoke-virtual {p1, p0}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->setReloadClickListener(Lcom/tr/comment/sdk/commons/widget/TrStateView$do;)V

    .line 12
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_reply_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->this:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    .line 13
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_rv:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->new:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    .line 14
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 15
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->new:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->new:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lcom/apk/k40;->for(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 17
    iget-boolean p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->while:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 18
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_idea_input_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 20
    sget v1, Lcom/tr/comment/sdk/R$id;->tr_sdk_idea_bottom_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 21
    :cond_1
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_facekeyboard_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->case:Landroid/view/View;

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->case:Landroid/view/View;

    sget v1, Lcom/tr/comment/sdk/R$id;->tr_sdk_send_msg_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->else:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :goto_0
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    sget p1, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_night_bg:I

    invoke-static {p1}, Lcom/apk/k40;->do(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 28
    :cond_2
    sget p1, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_day_bg:I

    invoke-static {p1}, Lcom/apk/k40;->do(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 29
    :goto_1
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_topad_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->switch:Landroid/widget/FrameLayout;

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->package:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 31
    new-instance p1, Lcom/apk/i80;

    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v1, v0, p2}, Lcom/apk/i80;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    .line 32
    sget p2, Lcom/tr/comment/sdk/R$layout;->tr_sdk_load_loading_layout:I

    invoke-virtual {p1, p2}, Lcom/apk/s80;->while(I)V

    .line 33
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    sget p2, Lcom/tr/comment/sdk/R$layout;->tr_sdk_load_failed_layout:I

    .line 34
    iget-object v1, p1, Lcom/apk/s80;->for:Landroid/content/Context;

    if-gtz p2, :cond_3

    move-object p2, v0

    goto :goto_2

    .line 35
    :cond_3
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 36
    :goto_2
    iput-object p2, p1, Lcom/apk/s80;->this:Landroid/view/View;

    .line 37
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    new-instance p2, Lcom/apk/qb0;

    invoke-direct {p2, p0}, Lcom/apk/qb0;-><init>(Lcom/tr/comment/sdk/view/TrCommentView;)V

    .line 38
    iput-object p2, p1, Lcom/apk/s80;->if:Lcom/apk/u90;

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/tr/comment/sdk/R$layout;->tr_sdk_idea_header_view:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 40
    sget p2, Lcom/tr/comment/sdk/R$id;->tr_sdk_idea_header_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->public:Landroid/widget/TextView;

    .line 41
    sget p2, Lcom/tr/comment/sdk/R$id;->tr_sdk_idea_header_sort_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;

    iput-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->return:Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;

    .line 42
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    invoke-virtual {p2, p1}, Lcom/apk/s80;->this(Landroid/view/View;)V

    .line 43
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->return:Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;

    new-instance p2, Lcom/apk/rb0;

    invoke-direct {p2, p0}, Lcom/apk/rb0;-><init>(Lcom/tr/comment/sdk/view/TrCommentView;)V

    invoke-virtual {p1, p2}, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->setOnTrSortListenner(Lcom/tr/comment/sdk/commons/widget/TrSortChangeView$do;)V

    .line 44
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->return:Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;

    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->throw:Lcom/tr/comment/sdk/bean/TrSortType;

    invoke-virtual {p2}, Lcom/tr/comment/sdk/bean/TrSortType;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->setSortType(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->new:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 46
    new-instance p1, Lcom/tr/comment/sdk/view/TrCommentView$try;

    invoke-direct {p1, p0, v0}, Lcom/tr/comment/sdk/view/TrCommentView$try;-><init>(Lcom/tr/comment/sdk/view/TrCommentView;Lcom/apk/pb0;)V

    .line 47
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_reply_layout:I

    invoke-virtual {p2, v0, p1}, Lcom/apk/b90;->native(ILcom/apk/r90;)V

    .line 48
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_like_layout:I

    invoke-virtual {p2, v0, p1}, Lcom/apk/b90;->native(ILcom/apk/r90;)V

    .line 49
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_jubao_btn:I

    invoke-virtual {p2, v0, p1}, Lcom/apk/b90;->native(ILcom/apk/r90;)V

    .line 50
    new-instance p1, Lcom/apk/kb0;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/apk/kb0;-><init>(Landroid/content/Context;Lcom/apk/lb0;)V

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->super:Lcom/apk/kb0;

    return-void
.end method

.method private setDescendant(Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x20000

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/tr/comment/sdk/view/TrCommentView;->setDescendant(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic this(Lcom/tr/comment/sdk/view/TrCommentView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tr/comment/sdk/view/TrCommentView;->final(Z)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final break(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tr/comment/sdk/bean/TrCommentBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->static:Z

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/apk/cb0;->this:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/apk/cb0;->else:I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 4
    iput v2, v0, Lcom/apk/cb0;->goto:I

    goto :goto_0

    .line 5
    :cond_1
    iget p2, v0, Lcom/apk/cb0;->goto:I

    add-int/2addr p2, v3

    iput p2, v0, Lcom/apk/cb0;->goto:I

    .line 6
    :goto_0
    iget p2, v0, Lcom/apk/cb0;->goto:I

    rem-int/2addr p2, v1

    if-nez p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object v0

    .line 8
    iget v0, v0, Lcom/apk/cb0;->case:I

    if-lt p2, v0, :cond_4

    .line 9
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object p2

    .line 10
    iget v0, p2, Lcom/apk/cb0;->break:I

    iget-object v1, p2, Lcom/apk/cb0;->this:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 11
    iget-object v1, p2, Lcom/apk/cb0;->this:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 12
    iget v1, p2, Lcom/apk/cb0;->break:I

    add-int/2addr v1, v3

    iput v1, p2, Lcom/apk/cb0;->break:I

    .line 13
    new-instance p2, Lcom/tr/comment/sdk/bean/TrCommentBean;

    invoke-direct {p2}, Lcom/tr/comment/sdk/bean/TrCommentBean;-><init>()V

    .line 14
    invoke-virtual {p2, v0}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setItemType(I)V

    .line 15
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    invoke-virtual {v1}, Lcom/apk/s80;->goto()I

    move-result v1

    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object v2

    .line 16
    iget v2, v2, Lcom/apk/cb0;->case:I

    add-int/2addr v1, v2

    .line 17
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object v2

    .line 18
    iget v2, v2, Lcom/apk/cb0;->case:I

    .line 19
    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-ne v0, v3, :cond_3

    .line 20
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object p1

    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, p2, v1}, Lcom/apk/cb0;->if(Landroid/app/Activity;I)Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    goto :goto_2

    :cond_3
    const/4 p1, 0x2

    if-ne v0, p1, :cond_4

    .line 21
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object p1

    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, p2, v1}, Lcom/apk/cb0;->new(Landroid/app/Activity;I)Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;

    :cond_4
    :goto_2
    return-void
.end method

.method public case(Lcom/tr/comment/sdk/bean/TrCommentBean;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->private:Landroid/view/View;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/tr/comment/sdk/R$layout;->tr_sdk_official_top_msg_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->private:Landroid/view/View;

    .line 3
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    invoke-virtual {v1, v0}, Lcom/apk/s80;->this(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->private:Landroid/view/View;

    sget v1, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_avatar_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->private:Landroid/view/View;

    sget v2, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_author_tv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7
    iget-object v2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->private:Landroid/view/View;

    sget v3, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_content_tv:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tr/comment/sdk/commons/widget/view/TrDayNightTextView;

    .line 8
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserFace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    sget v3, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_face_official:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserFace()Ljava/lang/String;

    move-result-object v3

    .line 11
    sget-object v4, Lcom/apk/fa0;->do:Lcom/apk/m80;

    if-eqz v4, :cond_1

    .line 12
    invoke-static {v3, v0}, Lcom/apk/u;->final(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance v0, Lcom/tr/comment/sdk/view/TrCommentView$new;

    invoke-direct {v0, p0, p1}, Lcom/tr/comment/sdk/view/TrCommentView$new;-><init>(Lcom/tr/comment/sdk/view/TrCommentView;Lcom/tr/comment/sdk/bean/TrCommentBean;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public catch(Z)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->do:Lcom/apk/za0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v3, v0, Lcom/apk/za0;->new:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    const-wide/16 v4, 0x96

    const-string v6, "alpha"

    const/4 v7, 0x2

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, v0, Lcom/apk/za0;->new:Landroid/view/View;

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    new-instance v4, Lcom/apk/oa0;

    invoke-direct {v4, v0}, Lcom/apk/oa0;-><init>(Lcom/apk/za0;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 8
    :cond_0
    iget-object v3, v0, Lcom/apk/za0;->case:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, v0, Lcom/apk/za0;->case:Landroid/view/View;

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 11
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    new-instance v4, Lcom/apk/pa0;

    invoke-direct {v4, v0}, Lcom/apk/pa0;-><init>(Lcom/apk/za0;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez p1, :cond_3

    if-nez v0, :cond_3

    .line 14
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->this:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->catch()V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move v0, v1

    :cond_3
    return v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public synthetic class()V
    .locals 2

    .line 1
    invoke-direct {p0, p0}, Lcom/tr/comment/sdk/view/TrCommentView;->setDescendant(Landroid/view/ViewGroup;)V

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 5
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public const(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    .line 2
    iput-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->break:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/tr/comment/sdk/view/TrCommentView;->catch:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/tr/comment/sdk/view/TrCommentView;->class:Ljava/lang/String;

    .line 5
    iget-boolean p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->while:Z

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->case:Landroid/view/View;

    .line 7
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->do:Lcom/apk/za0;

    if-nez p2, :cond_0

    .line 8
    sget p2, Lcom/tr/comment/sdk/R$id;->tr_sdk_face_text_et:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    .line 9
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    sget p2, Lcom/tr/comment/sdk/R$id;->tr_sdk_ftil_keyboard:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;

    .line 11
    iget-object p3, p0, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    .line 12
    iput-object p3, p2, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;->do:Landroid/widget/EditText;

    .line 13
    sget p3, Lcom/tr/comment/sdk/R$id;->tr_sdk_face_text_emotion:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 14
    sget p4, Lcom/tr/comment/sdk/R$id;->tr_sdk_ftil_userface:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout;

    .line 15
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_head_iv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 16
    new-instance v0, Lcom/apk/za0$do;

    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/apk/za0$do;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->for:Landroid/widget/FrameLayout;

    .line 17
    iput-object v1, v0, Lcom/apk/za0$do;->if:Landroid/view/View;

    .line 18
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    .line 19
    iput-object v1, v0, Lcom/apk/za0$do;->for:Landroid/widget/EditText;

    .line 20
    iput-object p2, v0, Lcom/apk/za0$do;->new:Landroid/view/View;

    .line 21
    iput-object p3, v0, Lcom/apk/za0$do;->try:Landroid/view/View;

    .line 22
    iput-object p4, v0, Lcom/apk/za0$do;->case:Landroid/view/View;

    .line 23
    iput-object p1, v0, Lcom/apk/za0$do;->else:Landroid/view/View;

    .line 24
    new-instance p1, Lcom/apk/pb0;

    invoke-direct {p1, p0}, Lcom/apk/pb0;-><init>(Lcom/tr/comment/sdk/view/TrCommentView;)V

    .line 25
    iput-object p1, v0, Lcom/apk/za0$do;->this:Lcom/apk/za0$if;

    .line 26
    iget-object p1, v0, Lcom/apk/za0$do;->do:Landroid/app/Activity;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, v0, Lcom/apk/za0$do;->goto:Landroid/view/inputmethod/InputMethodManager;

    .line 27
    iget-object p1, v0, Lcom/apk/za0$do;->do:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x13

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 29
    new-instance p1, Lcom/apk/za0;

    invoke-direct {p1, v0}, Lcom/apk/za0;-><init>(Lcom/apk/za0$do;)V

    .line 30
    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->do:Lcom/apk/za0;

    .line 31
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    new-instance p2, Lcom/apk/ob0;

    invoke-direct {p2, p0}, Lcom/apk/ob0;-><init>(Lcom/tr/comment/sdk/view/TrCommentView;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/tr/comment/sdk/view/TrCommentView;->final(Z)V

    .line 33
    sget-object p2, Lcom/apk/fa0;->do:Lcom/apk/m80;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 34
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object p2

    .line 35
    iget-object p2, p2, Lcom/apk/continue;->public:Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    move-object p2, p3

    :goto_0
    const-string p4, "top_flowlist"

    const-string v0, "top_banner"

    const/4 v1, 0x1

    if-eqz p2, :cond_6

    .line 36
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object p2

    .line 37
    sget-object v2, Lcom/apk/fa0;->do:Lcom/apk/m80;

    if-eqz v2, :cond_2

    .line 38
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v2

    .line 39
    iget-object v2, v2, Lcom/apk/continue;->public:Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    if-eqz p2, :cond_5

    if-eqz v2, :cond_6

    .line 40
    iget-boolean v3, p2, Lcom/apk/cb0;->do:Z

    if-nez v3, :cond_6

    .line 41
    iput-boolean v1, p2, Lcom/apk/cb0;->do:Z

    .line 42
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p2, Lcom/apk/cb0;->if:Lorg/json/JSONObject;

    .line 43
    invoke-virtual {v2, p4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p2, Lcom/apk/cb0;->for:Lorg/json/JSONObject;

    const-string v3, "item_flowlist"

    .line 44
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p2, Lcom/apk/cb0;->new:Lorg/json/JSONObject;

    const-string v3, "item_rect"

    .line 45
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p2, Lcom/apk/cb0;->try:Lorg/json/JSONObject;

    const-string v3, "after_items"

    .line 46
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/apk/cb0;->case:I

    const-string v3, "by_page"

    .line 47
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/apk/cb0;->else:I

    const-string v3, "rect_vs_list"

    .line 48
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p2, Lcom/apk/cb0;->this:Ljava/util/List;

    const-string v3, ":"

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 52
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_6

    if-nez v3, :cond_3

    .line 53
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_4

    .line 54
    iget-object v6, p2, Lcom/apk/cb0;->this:Ljava/util/List;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    if-ne v3, v1, :cond_4

    .line 55
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_4

    .line 56
    iget-object v6, p2, Lcom/apk/cb0;->this:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 57
    :cond_5
    throw p3

    .line 58
    :cond_6
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object p1

    .line 59
    iget-object p1, p1, Lcom/apk/cb0;->for:Lorg/json/JSONObject;

    if-eqz p1, :cond_a

    .line 60
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_top_bangdan:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->default:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    if-eqz p1, :cond_c

    .line 62
    invoke-virtual {p1, v1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->setLoadSuccessVisible(Z)V

    .line 63
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object p1

    .line 64
    iget-object p1, p1, Lcom/apk/cb0;->for:Lorg/json/JSONObject;

    .line 65
    invoke-static {p1}, Lcom/apk/cb0;->try(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 66
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_ad_close_bt:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->default:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    invoke-virtual {p2, p1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->setCloseBtn(Landroid/widget/ImageView;)V

    .line 69
    :cond_7
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->default:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object v0

    .line 70
    iget-object v0, v0, Lcom/apk/cb0;->for:Lorg/json/JSONObject;

    if-eqz p1, :cond_9

    if-nez v0, :cond_8

    goto :goto_5

    .line 71
    :cond_8
    iput-object p2, p1, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->if:Landroid/app/Activity;

    .line 72
    iput-object p4, p1, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->for:Ljava/lang/String;

    .line 73
    new-instance p2, Lcom/apk/bb0;

    invoke-direct {p2}, Lcom/apk/bb0;-><init>()V

    new-instance p3, Lcom/apk/w90;

    invoke-direct {p3, p1, v0}, Lcom/apk/w90;-><init>(Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;Lorg/json/JSONObject;)V

    invoke-virtual {p2, p3}, Lcom/apk/bb0;->do(Lcom/apk/ab0;)Lcom/apk/bb0;

    goto :goto_5

    .line 74
    :cond_9
    throw p3

    .line 75
    :cond_a
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object p1

    .line 76
    iget-object p1, p1, Lcom/apk/cb0;->if:Lorg/json/JSONObject;

    if-eqz p1, :cond_c

    .line 77
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_top_banner:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->throws:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

    if-eqz p1, :cond_c

    .line 79
    invoke-virtual {p1, v1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;->setLoadSuccessVisible(Z)V

    .line 80
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object p1

    .line 81
    iget-object p1, p1, Lcom/apk/cb0;->if:Lorg/json/JSONObject;

    .line 82
    invoke-static {p1}, Lcom/apk/cb0;->try(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 83
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_ad_close_bt:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 84
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->throws:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

    invoke-virtual {p2, p1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;->setCloseBtn(Landroid/widget/ImageView;)V

    .line 86
    :cond_b
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->throws:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object p3

    .line 87
    iget-object p3, p3, Lcom/apk/cb0;->if:Lorg/json/JSONObject;

    .line 88
    invoke-virtual {p1, p2, p3, v0}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;->for(Landroid/app/Activity;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 3
    iget-object v2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->new:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 4
    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    aget v6, v5, v3

    .line 6
    aget v5, v5, v4

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v5

    if-lt v1, v5, :cond_0

    if-gt v1, v2, :cond_0

    if-lt v0, v6, :cond_0

    if-gt v0, v7, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/fa0;->goto(Landroid/view/View;)Z

    move-result v3

    :cond_2
    if-nez v3, :cond_3

    .line 13
    invoke-virtual {p0, v4}, Lcom/tr/comment/sdk/view/TrCommentView;->catch(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/apk/fa0;->case(Landroid/app/Activity;)V

    return v4

    .line 15
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public do()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/tr/comment/sdk/view/TrCommentView;->final(Z)V

    return-void
.end method

.method public else(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->this:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->this:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-virtual {v0, p1, p2}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->else(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0}, Lcom/apk/s80;->case(Ljava/lang/Object;I)V

    .line 6
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->new:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->try:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try()V

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_3

    const-string p2, ""

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/apk/fa0;->case(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method

.method public final final(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->super:Lcom/apk/kb0;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tr/comment/sdk/view/TrCommentView;->goto()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->const:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->super:Lcom/apk/kb0;

    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->break:Ljava/lang/String;

    iget-object v2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->catch:Ljava/lang/String;

    iget-object v3, p0, Lcom/tr/comment/sdk/view/TrCommentView;->class:Ljava/lang/String;

    iget-object v4, p0, Lcom/tr/comment/sdk/view/TrCommentView;->return:Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v4}, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->getSortType()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/tr/comment/sdk/view/TrCommentView;->throw:Lcom/tr/comment/sdk/bean/TrSortType;

    invoke-virtual {v4}, Lcom/tr/comment/sdk/bean/TrSortType;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget v5, p0, Lcom/tr/comment/sdk/view/TrCommentView;->const:I

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v1, v2, v3, v4, v5}, Lcom/apk/fa0;->try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, p1}, Lcom/apk/kb0;->case(Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public for()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->try:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try()V

    :cond_0
    return-void
.end method

.method public goto()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->try:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->do:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->try:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    invoke-virtual {v0}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->new()V

    :cond_1
    return-void
.end method

.method public if(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->super:Lcom/apk/kb0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->break:Ljava/lang/String;

    iget-object v2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->catch:Ljava/lang/String;

    iget-object v3, p0, Lcom/tr/comment/sdk/view/TrCommentView;->class:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/apk/kb0;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public new(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    invoke-virtual {v0}, Lcom/apk/s80;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

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
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    invoke-virtual {p1, v1}, Lcom/apk/i80;->return(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/apk/tb0;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/tr/comment/sdk/R$id;->tr_sdk_send_msg_btn:I

    if-ne v0, v1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->try:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    .line 4
    iget-object p1, p1, Lcom/tr/comment/sdk/commons/widget/TrStateView;->do:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 8
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->super:Lcom/apk/kb0;

    if-eqz v1, :cond_6

    .line 9
    iget-object v2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->break:Ljava/lang/String;

    iget-object v3, p0, Lcom/tr/comment/sdk/view/TrCommentView;->catch:Ljava/lang/String;

    iget-object v4, p0, Lcom/tr/comment/sdk/view/TrCommentView;->class:Ljava/lang/String;

    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->extends:Lcom/tr/comment/sdk/bean/TrCommentBean;

    .line 10
    invoke-static {p1, v0}, Lcom/apk/la0;->for(Ljava/lang/String;Lcom/tr/comment/sdk/bean/TrCommentBean;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->this:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-virtual {p1}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->getParentId()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/apk/kb0;->try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/tr/comment/sdk/R$id;->tr_sdk_idea_bottom_layout:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 13
    invoke-virtual {p0, v2}, Lcom/tr/comment/sdk/view/TrCommentView;->throw(Lcom/tr/comment/sdk/bean/TrCommentBean;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_ad_close_bt:I

    if-ne p1, v0, :cond_6

    .line 15
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->switch:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->default:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->for()V

    .line 18
    iput-object v2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->default:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->throws:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;->new()V

    .line 21
    iput-object v2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->throws:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

    :cond_6
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iput p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->abstract:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->else:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setSortType(Lcom/tr/comment/sdk/bean/TrSortType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->throw:Lcom/tr/comment/sdk/bean/TrSortType;

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->return:Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrSortType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->setSortType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public super(ILjava/lang/String;)V
    .locals 3

    .line 1
    iput-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->import:Ljava/lang/String;

    .line 2
    iput p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->native:I

    .line 3
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->public:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/apk/s80;->goto()I

    move-result p1

    :cond_0
    if-lez p1, :cond_1

    .line 6
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->public:Landroid/widget/TextView;

    sget v0, Lcom/tr/comment/sdk/R$string;->tr_sdk_idea_comment_count_txt:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/apk/k40;->case(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final throw(Lcom/tr/comment/sdk/bean/TrCommentBean;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->import:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->this:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-virtual {v1}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 3
    sget v3, Lcom/tr/comment/sdk/R$string;->tr_sdk_comment_idea_reply_user_txt:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v4, " //@"

    .line 5
    invoke-static {v4, v0}, Lcom/apk/la0;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 6
    invoke-static {v3, v1}, Lcom/apk/k40;->case(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    sget v3, Lcom/tr/comment/sdk/R$string;->tr_sdk_comment_idea_reply_user_txt:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tr/comment/sdk/view/TrCommentView;->this:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    .line 8
    invoke-virtual {v4}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->getParentUserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrCommentView;->this:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-virtual {v0}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->getParentContent()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 9
    invoke-static {v3, v1}, Lcom/apk/k40;->case(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v4, v0

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 11
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    iput-object v1, v0, Lcom/apk/lv;->super:Ljava/lang/Boolean;

    .line 14
    new-instance v1, Lcom/tr/comment/sdk/view/TrCommentView$if;

    invoke-direct {v1, p0}, Lcom/tr/comment/sdk/view/TrCommentView$if;-><init>(Lcom/tr/comment/sdk/view/TrCommentView;)V

    .line 15
    iput-object v1, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 16
    new-instance v10, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tr/comment/sdk/view/TrCommentView;->break:Ljava/lang/String;

    iget-object v6, p0, Lcom/tr/comment/sdk/view/TrCommentView;->catch:Ljava/lang/String;

    iget-object v7, p0, Lcom/tr/comment/sdk/view/TrCommentView;->class:Ljava/lang/String;

    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->this:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    .line 18
    invoke-virtual {v1}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->getParentId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/tr/comment/sdk/view/TrCommentView$do;

    invoke-direct {v9, p0}, Lcom/tr/comment/sdk/view/TrCommentView$do;-><init>(Lcom/tr/comment/sdk/view/TrCommentView;)V

    move-object v1, v10

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/g80;)V

    .line 19
    instance-of p1, v10, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz p1, :cond_2

    .line 20
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean p1, v0, Lcom/apk/lv;->continue:Z

    goto :goto_1

    .line 22
    :cond_2
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 23
    iput-boolean p1, v0, Lcom/apk/lv;->continue:Z

    .line 24
    :goto_1
    iput-object v0, v10, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 25
    invoke-virtual {v10}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public try(Ljava/util/List;IZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tr/comment/sdk/bean/TrCommentBean;",
            ">;IZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->try:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->for()V

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/tr/comment/sdk/view/TrCommentView;->private:Landroid/view/View;

    if-nez p4, :cond_1

    .line 4
    iget-object p4, p0, Lcom/tr/comment/sdk/view/TrCommentView;->try:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz p4, :cond_2

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p4, v2}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->do(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/tr/comment/sdk/view/TrCommentView;->break(Ljava/util/List;Z)V

    .line 7
    iget-object p4, p0, Lcom/tr/comment/sdk/view/TrCommentView;->try:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz p4, :cond_2

    .line 8
    invoke-virtual {p4}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try()V

    :cond_2
    :goto_0
    add-int/2addr p2, v1

    .line 9
    iput p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->const:I

    .line 10
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    invoke-virtual {p2, p1}, Lcom/apk/s80;->break(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    .line 12
    iget-object p2, p1, Lcom/apk/s80;->this:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/apk/s80;->try(Landroid/view/View;)V

    .line 13
    iget-object p2, p1, Lcom/apk/s80;->this:Landroid/view/View;

    new-instance p4, Lcom/apk/u80;

    invoke-direct {p4, p1}, Lcom/apk/u80;-><init>(Lcom/apk/s80;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    add-int/2addr p2, v1

    .line 14
    iput p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->const:I

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/tr/comment/sdk/view/TrCommentView;->break(Ljava/util/List;Z)V

    .line 16
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    invoke-virtual {p2, p1}, Lcom/apk/s80;->else(Ljava/util/List;)V

    :cond_5
    :goto_1
    if-nez p3, :cond_6

    .line 17
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    invoke-virtual {p1}, Lcom/apk/s80;->super()V

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->import:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->public:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->native:I

    if-nez p1, :cond_8

    .line 19
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->final:Lcom/apk/i80;

    if-eqz p1, :cond_7

    .line 20
    invoke-virtual {p1}, Lcom/apk/s80;->goto()I

    move-result p1

    iput p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->native:I

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->public:Landroid/widget/TextView;

    sget p2, Lcom/tr/comment/sdk/R$string;->tr_sdk_idea_comment_count_txt:I

    new-array p3, v1, [Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tr/comment/sdk/view/TrCommentView;->native:I

    const-string v2, ""

    invoke-static {p4, v1, v2}, Lcom/apk/goto;->this(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v0

    invoke-static {p2, p3}, Lcom/apk/k40;->case(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method
