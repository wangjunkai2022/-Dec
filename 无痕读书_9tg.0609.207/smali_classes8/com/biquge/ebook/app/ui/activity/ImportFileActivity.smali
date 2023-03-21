.class public Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;
.super Lcom/apk/f6;
.source "ImportFileActivity.java"


# static fields
.field public static final try:[Ljava/lang/String;


# instance fields
.field public final do:[Ljava/lang/String;

.field public for:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

.field public if:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

.field public mImportTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049b
    .end annotation
.end field

.field public mIndicator:Lcom/apk/b40;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049c
    .end annotation
.end field

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049d
    .end annotation
.end field

.field public final new:Lcom/apk/l1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f10016d

    .line 1
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f10016c

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->try:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    const-string v0, "_display_name"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->do:[Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->new:Lcom/apk/l1;

    return-void
.end method

.method public static i(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    invoke-static {}, Lcom/apk/mu;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->m()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x9c

    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->m()V

    :goto_0
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 9
    throw p0
.end method

.method public static j(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;)V
    .locals 6

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lcom/apk/zu$do;

    invoke-direct {v0, p0}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    iget-object v2, v0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v1, v2, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 4
    new-instance v1, Lcom/apk/u7;

    invoke-direct {v1, p0}, Lcom/apk/u7;-><init>(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;)V

    .line 5
    iget-object v2, v0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v1, v2, Lcom/apk/lv;->throw:Lcom/apk/yv;

    const v1, 0x7f100239

    .line 6
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100238

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 7
    invoke-static {}, Lcom/apk/ze;->extends()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/apk/t7;

    invoke-direct {v3, p0}, Lcom/apk/t7;-><init>(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;)V

    const/4 v4, 0x0

    const v5, 0x7f0c00a3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/apk/zu$do;->else(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/apk/uv;Lcom/apk/sv;I)Lcom/lxj/xpopup/impl/ConfirmPopupView;

    move-result-object p0

    const v0, 0x7f100234

    .line 9
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/lxj/xpopup/impl/ConfirmPopupView;->catch:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public static k(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;Ljava/util/LinkedHashMap;)Ljava/util/LinkedList;
    .locals 7

    if-eqz p0, :cond_2

    const-string p0, ""

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-direct {v2}, Lcom/biquge/ebook/app/bean/CollectBook;-><init>()V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/bean/CollectBook;->setCollectId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "."

    .line 8
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 9
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_1
    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/bean/CollectBook;->setName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, p0}, Lcom/biquge/ebook/app/bean/CollectBook;->setReadChapterId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p0}, Lcom/biquge/ebook/app/bean/CollectBook;->setReadChapterName(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/bean/CollectBook;->setReadPage(I)V

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setIcon(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, p0}, Lcom/biquge/ebook/app/bean/CollectBook;->setLastCapterName(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, p0}, Lcom/biquge/ebook/app/bean/CollectBook;->setLastCapterId(Ljava/lang/String;)V

    const-string v1, "0"

    .line 17
    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setFirstChapterId(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/apk/kg;->try()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setLastUpdateTime(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setSaveTime(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, p0}, Lcom/biquge/ebook/app/bean/CollectBook;->setStickTime(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v4}, Lcom/biquge/ebook/app/bean/CollectBook;->setNew(Z)V

    .line 22
    invoke-virtual {v2, p0}, Lcom/biquge/ebook/app/bean/CollectBook;->setAuthor(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, p0}, Lcom/biquge/ebook/app/bean/CollectBook;->setDesc(Ljava/lang/String;)V

    const-string v1, "\u672c\u5730\u5bfc\u5165"

    .line 24
    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/bean/CollectBook;->setBookType(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, p0}, Lcom/biquge/ebook/app/bean/CollectBook;->setLoginName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/bean/CollectBook;->setFileType(I)V

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    .line 29
    throw p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0043

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/yu;

    invoke-direct {v0, p0}, Lcom/apk/yu;-><init>(Landroid/app/Activity;)V

    .line 2
    sget-object v1, Lcom/apk/wu;->do:[Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/yu;->if([Ljava/lang/String;)Lcom/apk/yu;

    new-instance v1, Lcom/apk/s7;

    invoke-direct {v1, p0}, Lcom/apk/s7;-><init>(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/apk/yu;->for(Lcom/apk/vu;)V

    return-void
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f09049a

    const v1, 0x7f10016e

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->mIndicator:Lcom/apk/b40;

    const/16 v1, 0x2d

    const/16 v2, 0xe

    invoke-static {p0, v0, v1, v2}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public final l(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->for:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->for:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    const v2, 0x7f100168

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->mImportTxt:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->mImportTxt:Landroid/widget/TextView;

    const v0, 0x7f08022c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->mImportTxt:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "( "

    const-string v5, ")"

    invoke-static {v4, p1, v5}, Lcom/apk/goto;->instanceof(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->mImportTxt:Landroid/widget/TextView;

    const v0, 0x7f0801ca

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public final m()V
    .locals 5

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->new:Lcom/apk/l1;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->new:Lcom/apk/l1;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->try:Z

    .line 5
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->for:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    .line 6
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->new:Lcom/apk/l1;

    .line 7
    iput-object v2, v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->try:Lcom/apk/l1;

    .line 8
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->case:Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->for:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/apk/e40;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->mIndicator:Lcom/apk/b40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v1, v2, v3}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 13
    new-instance v2, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->try:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->l(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x9c

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->do:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 4
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;->do:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ".txt"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    :cond_0
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/v7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/apk/v7;-><init>(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    :cond_2
    return-void
.end method
