.class public Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;
.super Lcom/apk/g6;
.source "BookSearchFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;
    }
.end annotation


# static fields
.field public static final native:[I


# instance fields
.field public break:Z

.field public case:I

.field public final catch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;"
        }
    .end annotation
.end field

.field public class:Lcom/apk/hf;

.field public const:Lcom/apk/hf;

.field public do:Lcom/apk/xp0;

.field public else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

.field public fastLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ac
    .end annotation
.end field

.field public fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ad
    .end annotation
.end field

.field public final:Lcom/biquge/ebook/app/bean/Book;

.field public for:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

.field public goto:Lcom/apk/v3;

.field public if:Lcom/biquge/ebook/app/adapter/HotSearchAdapter;

.field public final import:Lcom/apk/nt$do;

.field public mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ab
    .end annotation
.end field

.field public mForBooksLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ba
    .end annotation
.end field

.field public mForBooksTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904bb
    .end annotation
.end field

.field public mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b0
    .end annotation
.end field

.field public mHotSearchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b2
    .end annotation
.end field

.field public mModuleIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b6
    .end annotation
.end field

.field public mMoreTagView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904be
    .end annotation
.end field

.field public mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046d
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048c
    .end annotation
.end field

.field public mResultLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b9
    .end annotation
.end field

.field public mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b4
    .end annotation
.end field

.field public mSelectFinishBT:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c2
    .end annotation
.end field

.field public mSpinnerTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b8
    .end annotation
.end field

.field public new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/SearchPlatform;",
            ">;"
        }
    .end annotation
.end field

.field public final super:Lcom/apk/u5;

.field public this:Lcom/apk/x4;

.field public final throw:Lcom/apk/w5;

.field public try:Lcom/biquge/ebook/app/bean/SearchPlatform;

.field public while:Lcom/apk/final;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const-string v1, "#3498DB"

    .line 1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#FD032C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "#FC9943"

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const-string v1, "#67CB99"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->native:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->case:I

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->catch:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$else;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$else;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->super:Lcom/apk/u5;

    .line 5
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->throw:Lcom/apk/w5;

    .line 6
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->import:Lcom/apk/nt$do;

    return-void
.end method

.method public static a(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;I)V
    .locals 3

    if-eqz p0, :cond_4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->new:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/SearchPlatform;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->try:Lcom/biquge/ebook/app/bean/SearchPlatform;

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    const v1, 0x7f1002d2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->try:Lcom/biquge/ebook/app/bean/SearchPlatform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSpinnerTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->try:Lcom/biquge/ebook/app/bean/SearchPlatform;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/SearchPlatform;->getSename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSpinnerTxt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSpinnerTxt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->s()V

    .line 12
    :cond_1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->case()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->try:Lcom/biquge/ebook/app/bean/SearchPlatform;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ge p1, v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/apk/w0;->strictfp(I)V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->this:Lcom/apk/x4;

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->this:Lcom/apk/x4;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apk/x4;->static(Z)V

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->this:Lcom/apk/x4;

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->m()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/apk/x4;->return(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 p0, 0x0

    .line 19
    throw p0
.end method

.method public static f(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;ZLjava/util/List;Z)V
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    .line 4
    iget p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->case:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->case:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 8
    iget p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->case:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->case:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_1
    return-void

    :cond_5
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static synthetic h(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->q(Z)V

    return-void
.end method

.method public static synthetic i(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V
    .locals 5

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->this:Lcom/apk/x4;

    iget v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->case:I

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->try:Lcom/biquge/ebook/app/bean/SearchPlatform;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/apk/x4;->package(Ljava/lang/String;ILjava/lang/String;Lcom/biquge/ebook/app/bean/SearchPlatform;)V

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    if-eqz v1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    .line 6
    iput-object v0, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->else:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 8
    throw p0
.end method

.method public static synchronized(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V
    .locals 5

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->case:I

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->this:Lcom/apk/x4;

    iget v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->case:I

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->try:Lcom/biquge/ebook/app/bean/SearchPlatform;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/apk/x4;->package(Ljava/lang/String;ILjava/lang/String;Lcom/biquge/ebook/app/bean/SearchPlatform;)V

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    if-eqz v1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    .line 7
    iput-object v0, p0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->else:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 9
    throw p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_d

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->for:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_d

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->for:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto/16 :goto_5

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->for:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    invoke-direct {v0}, Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->for:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    .line 10
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->for:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    new-instance v3, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$for;

    invoke-direct {v3, p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->for:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    if-eqz v0, :cond_2

    .line 13
    iput-object p1, v0, Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;->do:Ljava/lang/String;

    .line 14
    :cond_2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/apk/continue;->class:Lcom/biquge/ebook/app/bean/SrhConfBean;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 16
    sget-object v4, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "yes"

    if-eqz v4, :cond_3

    .line 17
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SrhConfBean;->getIs_close()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 18
    :cond_3
    sget-object v4, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SrhConfBean;->getMh_is_close()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 20
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_d

    .line 21
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->for:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_d

    .line 23
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->for:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto/16 :goto_5

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->goto:Lcom/apk/v3;

    if-eqz v0, :cond_c

    .line 25
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->m()Z

    move-result v0

    const-string v2, "&lx=1"

    const-string v4, "{page}"

    const-string v5, "{nameorauthor}"

    const/4 v6, 0x1

    if-eqz v0, :cond_8

    .line 26
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 27
    iget-object v0, v0, Lcom/apk/continue;->class:Lcom/biquge/ebook/app/bean/SrhConfBean;

    if-eqz v0, :cond_6

    .line 28
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SrhConfBean;->getSrh_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 29
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/w;->return()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_7
    invoke-virtual {v0, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 32
    :cond_8
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 33
    iget-object v0, v0, Lcom/apk/continue;->class:Lcom/biquge/ebook/app/bean/SrhConfBean;

    if-eqz v0, :cond_9

    .line 34
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SrhConfBean;->getMh_srh_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    move-object v0, v1

    .line 35
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/w;->public()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_a
    invoke-virtual {v0, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_3
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->goto:Lcom/apk/v3;

    if-eqz v2, :cond_b

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    const-wide/32 v4, 0x1b7740

    .line 40
    sget-object p1, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v1, Lcom/apk/a4;

    invoke-direct {v1, v2}, Lcom/apk/a4;-><init>(Lcom/apk/v3;)V

    invoke-static {v0, v4, v5, p1, v1}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    goto :goto_4

    .line 41
    :cond_b
    throw v1

    .line 42
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_d

    .line 43
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_d
    :goto_5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00b2

    return v0
.end method

.method public initData()V
    .locals 10

    .line 1
    new-instance v0, Lcom/apk/v3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->super:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->goto:Lcom/apk/v3;

    .line 2
    new-instance v0, Lcom/apk/x4;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->throw:Lcom/apk/w5;

    invoke-direct {v0, v1, v2}, Lcom/apk/x4;-><init>(Landroid/app/Activity;Lcom/apk/w5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->this:Lcom/apk/x4;

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/apk/finally;->q:Lorg/json/JSONObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/apk/finally;->final()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v0, Lcom/apk/finally;->q:Lorg/json/JSONObject;

    const-string v1, "searchnative"

    invoke-static {v0, v1}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {v1}, Lcom/biquge/ebook/app/bean/Book;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->final:Lcom/biquge/ebook/app/bean/Book;

    const/4 v4, 0x2

    .line 7
    invoke-virtual {v1, v4}, Lcom/biquge/ebook/app/bean/Book;->setItemType(I)V

    .line 8
    :cond_1
    new-instance v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v4

    iget-boolean v5, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->break:Z

    invoke-direct {v1, v4, v5, v0}, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->catch:Ljava/util/Map;

    .line 10
    iput-object v0, v1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->for:Ljava/util/Map;

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    new-instance v1, Lcom/apk/xa;

    invoke-direct {v1, p0}, Lcom/apk/xa;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    new-instance v1, Lcom/apk/ya;

    invoke-direct {v1, p0}, Lcom/apk/ya;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->this:Lcom/apk/x4;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->class:Lcom/apk/hf;

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->const:Lcom/apk/hf;

    if-eqz v0, :cond_c

    .line 16
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 19
    :goto_1
    invoke-static {v1}, Lcom/apk/ze;->d(Lcom/apk/hf;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 21
    iget-object v1, v1, Lcom/apk/continue;->case:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biquge/ebook/app/bean/StoreConfigBean;

    .line 24
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "movie"

    .line 25
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 26
    new-instance v8, Lcom/biquge/ebook/app/bean/SearchPlatform;

    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcom/biquge/ebook/app/bean/SearchPlatform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getSrh_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/biquge/ebook/app/bean/SearchPlatform;->setUrl(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v8, "tingshu"

    .line 29
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 30
    new-instance v8, Lcom/biquge/ebook/app/bean/SearchPlatform;

    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcom/biquge/ebook/app/bean/SearchPlatform;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getSrh_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/biquge/ebook/app/bean/SearchPlatform;->setUrl(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_7

    const/4 v1, 0x0

    .line 33
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 34
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biquge/ebook/app/bean/SearchPlatform;

    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/SearchPlatform;->getPid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 35
    :goto_4
    iget-object v4, v0, Lcom/apk/x4;->for:Lcom/apk/w5;

    if-eqz v4, :cond_8

    .line 36
    iget-object v0, v0, Lcom/apk/x4;->for:Lcom/apk/w5;

    invoke-virtual {v0, v5, v1}, Lcom/apk/w5;->if(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :cond_8
    :goto_5
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->while()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 39
    new-instance v0, Lcom/apk/final;

    invoke-direct {v0}, Lcom/apk/final;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->while:Lcom/apk/final;

    .line 40
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const v4, 0x7f0903d8

    invoke-virtual {p0, v4}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v0, v1, v4}, Lcom/apk/final;->if(Landroid/app/Activity;Landroid/view/ViewStub;)V

    .line 41
    :cond_9
    :try_start_1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 42
    iget-object v1, v0, Lcom/apk/finally;->return:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "rectznsearch"

    if-eqz v1, :cond_a

    :try_start_2
    invoke-virtual {v0}, Lcom/apk/finally;->final()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 43
    iget-object v0, v0, Lcom/apk/finally;->return:Lorg/json/JSONObject;

    invoke-static {v0, v4}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_b

    .line 44
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    new-instance v2, Lcom/apk/za;

    invoke-direct {v2, p0}, Lcom/apk/za;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->for(Landroid/app/Activity;Lcom/apk/d1;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_7
    return-void

    :cond_c
    const/4 v0, 0x0

    .line 46
    throw v0
.end method

.method public initView()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "createSource"

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/apk/hf;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->class:Lcom/apk/hf;

    if-eqz v2, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->break:Z

    :cond_0
    const-string v2, "selectPlatform"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/apk/hf;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->const:Lcom/apk/hf;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHotSearchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHotSearchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHotSearchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHotSearchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mResultLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 13
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v5}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 17
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v5}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    new-instance v5, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$new;

    invoke-direct {v5, p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$new;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {v0, v5}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 21
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->break:Z

    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mForBooksLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0904bc

    .line 23
    invoke-virtual {p0, v0}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-virtual {p0, v2}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->r(I)V

    goto/16 :goto_3

    .line 25
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apk/continue;->case()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 27
    invoke-static {}, Lcom/apk/ze;->e()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_3
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v5

    .line 29
    iget-object v5, v5, Lcom/apk/continue;->case:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 32
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v6

    .line 33
    iget-object v6, v6, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 34
    sget-object v7, Lcom/apk/hf;->do:Lcom/apk/hf;

    if-ne v6, v7, :cond_4

    const v6, 0x7f10013b

    .line 35
    invoke-static {v6}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_4
    sget-object v7, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v6, v7, :cond_5

    const v6, 0x7f1000f5

    .line 37
    invoke-static {v6}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biquge/ebook/app/bean/StoreConfigBean;

    .line 39
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xe

    if-le v5, v1, :cond_8

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-le v5, v7, :cond_7

    const/high16 v5, 0x428c0000    # 70.0f

    .line 42
    invoke-static {v5}, Lcom/apk/eg;->catch(F)I

    move-result v5

    goto :goto_2

    .line 43
    :cond_7
    iget-object v5, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mModuleIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v5, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    const/4 v5, 0x0

    .line 44
    :goto_2
    iget-object v7, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mModuleIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v8, Lcom/apk/nz;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v9

    invoke-direct {v8, v9, v0, v5}, Lcom/apk/nz;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v7, v8}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 45
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mModuleIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/16 v7, 0x28

    invoke-static {v0, v5, v7, v6}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    .line 46
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mModuleIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v5, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$try;

    invoke-direct {v5, p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$try;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {v0, v5}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnItemSelectListener(Lcom/apk/b40$new;)V

    .line 47
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mModuleIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_8
    const v0, 0x7f1002e1

    .line 48
    :try_start_0
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v5, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v7

    invoke-direct {v5, p0, v7, v1, v3}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;Landroid/content/Context;ILcom/biquge/ebook/app/ui/fragment/BookSearchFragment$new;)V

    .line 51
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v7

    invoke-direct {v1, p0, v7, v4, v3}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;Landroid/content/Context;ILcom/biquge/ebook/app/ui/fragment/BookSearchFragment$new;)V

    const/16 v3, 0xa

    const/16 v7, 0x11

    .line 52
    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v3, 0x13

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v2, v1, v3, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 54
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mForBooksTv:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 55
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mForBooksTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mForBooksTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public k()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mResultLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return v1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->try:Lcom/biquge/ebook/app/bean/SearchPlatform;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SearchPlatform;->getPid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 10
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0904a6,
            0x7f0904b8,
            0x7f0904af,
            0x7f0904b3,
            0x7f0904b1,
            0x7f0904c0,
            0x7f0904c2
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 2
    :sswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    if-eqz p1, :cond_3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p1, p1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->class:Lcom/apk/hf;

    sget-object v2, Lcom/apk/hf;->do:Lcom/apk/hf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "books"

    if-ne v1, v2, :cond_1

    .line 9
    :try_start_1
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_2

    .line 10
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/Book;

    .line 12
    invoke-static {v2}, Lcom/apk/eg;->this(Lcom/biquge/ebook/app/bean/Book;)Lcom/manhua/data/bean/ComicBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 14
    :goto_2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 15
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    :cond_3
    const/4 p1, 0x0

    .line 16
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 18
    :sswitch_1
    :try_start_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    .line 19
    iget-object v1, p1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->do:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 21
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 22
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->r(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 24
    :sswitch_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mMoreTagView:Landroid/view/View;

    .line 25
    new-instance v7, Lcom/apk/nt;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_6

    .line 28
    iget-object v5, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->new:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biquge/ebook/app/bean/SearchPlatform;

    .line 29
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/SearchPlatform;->getPid()Ljava/lang/String;

    move-result-object v6

    const-string v8, "movie"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 30
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/SearchPlatform;->getPid()Ljava/lang/String;

    move-result-object v6

    const-string v8, "tingshu"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 31
    new-instance v6, Lcom/apk/ot;

    invoke-direct {v6}, Lcom/apk/ot;-><init>()V

    .line 32
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/SearchPlatform;->getSename()Ljava/lang/String;

    move-result-object v8

    .line 33
    iput-object v8, v6, Lcom/apk/ot;->if:Ljava/lang/String;

    const v8, 0x7f08016a

    .line 34
    iput v8, v6, Lcom/apk/ot;->do:I

    .line 35
    sget-object v8, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->native:[I

    rem-int v9, v4, v1

    aget v8, v8, v9

    .line 36
    iput v8, v6, Lcom/apk/ot;->for:I

    .line 37
    iget-object v8, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSpinnerTxt:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/SearchPlatform;->getSename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 38
    iput-boolean v5, v6, Lcom/apk/ot;->new:Z

    .line 39
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 40
    :cond_6
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->import:Lcom/apk/nt$do;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/apk/nt;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/apk/nt$do;ZZ)V

    const/high16 v1, 0x42c80000    # 100.0f

    .line 41
    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/apk/nt;->if(I)V

    const/4 v1, 0x1

    .line 42
    iput-boolean v1, v7, Lcom/apk/nt;->for:Z

    .line 43
    invoke-virtual {v7, v1}, Lcom/apk/nt;->do(I)V

    .line 44
    invoke-virtual {v7, p1}, Lcom/apk/nt;->for(Landroid/view/View;)V

    .line 45
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->do:Lcom/apk/xp0;

    if-eqz p1, :cond_9

    .line 46
    invoke-virtual {p1, v0}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    .line 47
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_SEARCH_PLATFORM_RED_TAGKEY"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 48
    :sswitch_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->this:Lcom/apk/x4;

    if-eqz p1, :cond_9

    .line 49
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apk/x4;->static(Z)V

    goto :goto_4

    .line 50
    :sswitch_4
    :try_start_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    if-eqz p1, :cond_7

    .line 51
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 52
    :cond_7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->m()Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_8

    .line 53
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "search_history_key"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 54
    :cond_8
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "search_comic_history_key"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 56
    :sswitch_5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->s()V

    goto :goto_4

    .line 57
    :sswitch_6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->k()Z

    :cond_9
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0904a6 -> :sswitch_6
        0x7f0904af -> :sswitch_5
        0x7f0904b1 -> :sswitch_4
        0x7f0904b3 -> :sswitch_3
        0x7f0904b8 -> :sswitch_2
        0x7f0904c0 -> :sswitch_1
        0x7f0904c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final n(II)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/Book;

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 4
    :try_start_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->try:Lcom/biquge/ebook/app/bean/SearchPlatform;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->try:Lcom/biquge/ebook/app/bean/SearchPlatform;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/SearchPlatform;->getPid()Ljava/lang/String;

    move-result-object v3

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    const-class p2, Lcom/expand/videoplayer/bean/VideoDetail;

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/expand/videoplayer/bean/VideoDetail;

    .line 8
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    .line 9
    invoke-static {}, Lcom/apk/eg;->final()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {p2, v3, v0, p1}, Lcom/apk/eg;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/expand/videoplayer/bean/VideoDetail;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 13
    :try_start_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->try:Lcom/biquge/ebook/app/bean/SearchPlatform;

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->try:Lcom/biquge/ebook/app/bean/SearchPlatform;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/SearchPlatform;->getPid()Ljava/lang/String;

    move-result-object v3

    .line 15
    :cond_3
    invoke-static {v0}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    const-class p2, Lcom/expand/listen/bean/ListenDetail;

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/expand/listen/bean/ListenDetail;

    .line 17
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    .line 18
    invoke-static {}, Lcom/apk/eg;->const()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {p2, v3, v0, p1}, Lcom/apk/eg;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/expand/listen/bean/ListenDetail;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 20
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    :cond_4
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_7

    .line 21
    :try_start_5
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->break:Z

    if-eqz p1, :cond_5

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->if(I)I

    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->r(I)V

    goto/16 :goto_2

    .line 24
    :cond_5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result p1

    const/16 p2, 0x66

    if-ne p1, v2, :cond_6

    .line 25
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->n(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/Book;I)V

    goto/16 :goto_2

    .line 26
    :cond_6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result p1

    if-ne p1, v1, :cond_f

    .line 27
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/apk/mu;->final(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p1

    .line 28
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/manhua/data/bean/ComicBean;->setDesc(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/manhua/ui/activity/ComicDetailActivity;->l(Landroid/app/Activity;Lcom/manhua/data/bean/ComicBean;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception p1

    .line 30
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 31
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result p1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_a

    .line 32
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/apk/n2;->try(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 33
    :cond_8
    invoke-static {v0, v2}, Lcom/apk/n2;->u(Lcom/biquge/ebook/app/bean/Book;Z)V

    .line 34
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/Book;->setHaveShelf(Z)V

    .line 35
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 36
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    if-eqz p1, :cond_9

    goto :goto_0

    .line 37
    :cond_9
    throw v3

    .line 38
    :cond_a
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    move-result p1

    if-ne p1, v1, :cond_d

    .line 39
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/apk/mu;->case(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 40
    :cond_b
    invoke-static {v0}, Lcom/apk/eg;->this(Lcom/biquge/ebook/app/bean/Book;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p1

    .line 41
    invoke-static {p1, v2}, Lcom/apk/mu;->w(Lcom/manhua/data/bean/ComicBean;Z)V

    .line 42
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/Book;->setHaveShelf(Z)V

    .line 43
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 44
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    if-eqz p1, :cond_c

    goto :goto_0

    .line 45
    :cond_c
    throw v3

    .line 46
    :cond_d
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getItemType()I

    .line 47
    :goto_0
    invoke-static {}, Lcom/apk/ze;->V()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 48
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    :cond_e
    :goto_1
    return-void

    :catch_4
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_2
    return-void
.end method

.method public final o(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/ab;

    invoke-direct {v1, p0, p1}, Lcom/apk/ab;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;I)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->try()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->while:Lcom/apk/final;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/apk/final;->new()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->while:Lcom/apk/final;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->new()V

    :cond_2
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->s()V

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->l()Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->o(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->n(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mAdViewRectangle:Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->break:Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final p(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_0

    .line 3
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->while:Lcom/apk/final;

    if-eqz p1, :cond_3

    .line 5
    iput-boolean v0, p1, Lcom/apk/final;->if:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/adapter/SearchResultAdapter;->new:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    if-eqz p1, :cond_2

    .line 8
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->break:Z

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->while:Lcom/apk/final;

    if-eqz p1, :cond_3

    .line 10
    iput-boolean v0, p1, Lcom/apk/final;->if:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final q(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$case;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$case;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final r(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSelectFinishBT:Landroid/widget/Button;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f1001d1

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v1}, Lcom/apk/ow;->if(Landroid/view/View;)V

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mResultLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->fastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->for:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->for:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->for:Lcom/biquge/ebook/app/adapter/SearchFastResultAdapter;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const/4 v1, 0x1

    .line 14
    iput-byte v1, v0, Lcom/apk/ss;->do:B

    .line 15
    invoke-virtual {p0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->q(Z)V

    goto :goto_1

    :cond_4
    const v0, 0x7f1002df

    .line 16
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/k6;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->p(Z)V

    return-void
.end method
