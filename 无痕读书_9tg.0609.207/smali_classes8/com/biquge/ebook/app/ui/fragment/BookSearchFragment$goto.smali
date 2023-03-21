.class public Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;
.super Lcom/apk/w5;
.source "BookSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-direct {p0}, Lcom/apk/w5;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;Z)V"
        }
    .end annotation

    const-string p1, "WEB_SEARCH_SHOW_GUIDE_POP_KEY"

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->try:Lcom/biquge/ebook/app/bean/SearchPlatform;

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 4
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->final:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 7
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->final:Lcom/biquge/ebook/app/bean/Book;

    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v2, -0x2

    .line 9
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_1

    .line 10
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 11
    iget-object v3, v3, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->final:Lcom/biquge/ebook/app/bean/Book;

    .line 12
    invoke-interface {p2, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 15
    iget v2, v2, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->case:I

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 16
    :goto_2
    invoke-static {v1, v2, p2, p3}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->f(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;ZLjava/util/List;Z)V

    .line 17
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 18
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->else:Lcom/biquge/ebook/app/adapter/SearchResultAdapter;

    .line 19
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p2

    if-nez p2, :cond_4

    const p2, 0x7f1002dd

    .line 20
    invoke-static {p2}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 21
    invoke-static {p1, v3}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 22
    sget-object p2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p2, p1, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    new-instance p2, Lcom/apk/ha;

    invoke-direct {p2, p0}, Lcom/apk/ha;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, p2, v1, v2}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 25
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->this:Lcom/apk/x4;

    if-eqz p1, :cond_5

    .line 26
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 27
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->this:Lcom/apk/x4;

    .line 28
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 29
    invoke-virtual {p2}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->m()Z

    move-result p2

    .line 30
    invoke-virtual {p1, p2}, Lcom/apk/x4;->return(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->h(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;Z)V

    return-void
.end method

.method public else()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    .line 2
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 3
    invoke-static {}, Lcom/apk/eg;->static()I

    move-result v1

    const/high16 v2, 0x43020000    # 130.0f

    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 4
    iput v1, v0, Lcom/apk/lv;->default:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/apk/lv;->finally:Z

    .line 6
    new-instance v1, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 7
    invoke-virtual {v2}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;-><init>(Landroid/content/Context;)V

    .line 8
    instance-of v2, v1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v2, :cond_0

    .line 9
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 10
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 11
    :cond_0
    instance-of v2, v1, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v2, :cond_1

    .line 12
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 13
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 14
    :cond_1
    instance-of v2, v1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v2, :cond_2

    .line 15
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 16
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 17
    :cond_2
    instance-of v2, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v2, :cond_3

    .line 18
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 19
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 20
    :cond_3
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    .line 22
    :goto_0
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 23
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public for(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0c0129

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09031a

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 7
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v4, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto$if;

    invoke-direct {v4, p0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHistoryFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public if(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/SearchPlatform;",
            ">;I)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 2
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->new:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 4
    iget-boolean v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->break:Z

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const-string p1, "SP_SEARCH_PLATFORM_RED_TAGKEY"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    new-instance v1, Lcom/apk/xp0;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-virtual {v2}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/apk/xp0;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->do:Lcom/apk/xp0;

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 9
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->do:Lcom/apk/xp0;

    .line 10
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSpinnerTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    const/high16 v1, 0x40800000    # 4.0f

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/apk/sb0;->switch(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p1, Lcom/apk/xp0;->case:F

    .line 12
    invoke-virtual {p1}, Lcom/apk/xp0;->if()V

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 v1, -0x1

    .line 14
    invoke-virtual {p1, v1}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x41200000    # 10.0f

    .line 15
    invoke-virtual {p1, v1, v2, v0}, Lcom/apk/xp0;->this(FFZ)Lcom/apk/vp0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mModuleIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mModuleIndicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p1, p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setCurrentItem(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->a(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public new(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/SearchTop;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->if:Lcom/biquge/ebook/app/adapter/HotSearchAdapter;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    new-instance v1, Lcom/biquge/ebook/app/adapter/HotSearchAdapter;

    invoke-direct {v1}, Lcom/biquge/ebook/app/adapter/HotSearchAdapter;-><init>()V

    .line 4
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->if:Lcom/biquge/ebook/app/adapter/HotSearchAdapter;

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 6
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->if:Lcom/biquge/ebook/app/adapter/HotSearchAdapter;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mHotSearchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 8
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->if:Lcom/biquge/ebook/app/adapter/HotSearchAdapter;

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 11
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->if:Lcom/biquge/ebook/app/adapter/HotSearchAdapter;

    .line 12
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$goto;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 14
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->if:Lcom/biquge/ebook/app/adapter/HotSearchAdapter;

    const/16 v1, 0xa

    .line 15
    invoke-static {p1, v1}, Lcom/apk/ze;->final(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
