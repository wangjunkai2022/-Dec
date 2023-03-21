.class public Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;
.super Ljava/lang/Object;
.source "WebSearchResultLayout.java"

# interfaces
.implements Lcom/apk/kd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ILjava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebBook;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->catch:Ljava/util/List;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 6
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    :try_start_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 9
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 10
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 11
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    .line 12
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p1, :cond_0

    .line 13
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 14
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try:Ljava/util/List;

    .line 15
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 16
    iget p1, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->this:I

    .line 17
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mSearchResultTv:Landroid/widget/TextView;

    const v0, 0x7f1003fb

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-ne p3, v1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 20
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    .line 21
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 23
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    .line 24
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    :cond_2
    :goto_1
    return-void
.end method

.method public if(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebBook;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->mViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 5
    invoke-virtual {v1, p1, v0}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->try(ILjava/util/List;)Z

    :cond_0
    if-eqz p2, :cond_7

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    if-nez p3, :cond_1

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x4

    if-lt p1, p2, :cond_7

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 9
    iget-boolean p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->final:Z

    if-eqz p2, :cond_7

    .line 10
    iget p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->this:I

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->final:Z

    const-string p1, "SP_SHOW_WEB_SEARCH_POPUP_KEY"

    const/4 p3, 0x1

    .line 12
    invoke-static {p1, p3}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 13
    sget-object p3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p3, p1, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 15
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->catch:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 17
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->catch:Ljava/util/List;

    .line 18
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 19
    :goto_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 20
    new-instance p2, Lcom/apk/lv;

    invoke-direct {p2}, Lcom/apk/lv;-><init>()V

    .line 21
    sget-object p3, Lcom/apk/ov;->static:Lcom/apk/ov;

    .line 22
    iput-object p3, p2, Lcom/apk/lv;->this:Lcom/apk/ov;

    .line 23
    new-instance p3, Lcom/biquge/ebook/app/ui/webread/view/WebSearchGuidePopupView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 24
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchGuidePopupView;-><init>(Landroid/content/Context;Lcom/biquge/ebook/app/ui/webread/entity/WebBook;)V

    .line 25
    instance-of p1, p3, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz p1, :cond_3

    .line 26
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 27
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    goto :goto_1

    .line 28
    :cond_3
    instance-of p1, p3, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz p1, :cond_4

    .line 29
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 30
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    goto :goto_1

    .line 31
    :cond_4
    instance-of p1, p3, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz p1, :cond_5

    .line 32
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 33
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    goto :goto_1

    .line 34
    :cond_5
    instance-of p1, p3, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz p1, :cond_6

    .line 35
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 36
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    goto :goto_1

    .line 37
    :cond_6
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 38
    iput-boolean p1, p2, Lcom/apk/lv;->continue:Z

    .line 39
    :goto_1
    iput-object p2, p3, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 40
    invoke-virtual {p3}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_7
    return-void
.end method
