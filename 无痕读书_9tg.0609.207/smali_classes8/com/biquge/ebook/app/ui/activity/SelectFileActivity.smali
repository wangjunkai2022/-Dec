.class public Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;
.super Lcom/apk/f6;
.source "SelectFileActivity.java"


# static fields
.field public static final new:[Ljava/lang/String;


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

.field public for:Lcom/apk/l1;

.field public if:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

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

    sput-object v0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->new:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->for:Lcom/apk/l1;

    return-void
.end method

.method public static i(Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;)V
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
    new-instance v1, Lcom/apk/j8;

    invoke-direct {v1, p0}, Lcom/apk/j8;-><init>(Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;)V

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

    new-instance v3, Lcom/apk/i8;

    invoke-direct {v3, p0}, Lcom/apk/i8;-><init>(Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;)V

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


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0052

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->do:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->for:Lcom/apk/l1;

    .line 3
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->new:Lcom/apk/l1;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->try:Z

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    if-eqz v0, :cond_0

    .line 6
    iput-boolean v1, v0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->new:Z

    .line 7
    :cond_0
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    .line 8
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->for:Lcom/apk/l1;

    .line 9
    iput-object v2, v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->try:Lcom/apk/l1;

    .line 10
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->case:Z

    .line 11
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->if:Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;

    if-eqz v0, :cond_1

    .line 12
    iput-boolean v1, v0, Lcom/biquge/ebook/app/widget/filepicker/FilePickerAdapter;->new:Z

    .line 13
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->do:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 17
    new-instance v1, Lcom/apk/e40;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->mIndicator:Lcom/apk/b40;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v1, v2, v3}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 18
    new-instance v2, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->new:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->j(I)V

    .line 20
    new-instance v0, Lcom/apk/yu;

    invoke-direct {v0, p0}, Lcom/apk/yu;-><init>(Landroid/app/Activity;)V

    .line 21
    sget-object v1, Lcom/apk/wu;->do:[Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Lcom/apk/yu;->if([Ljava/lang/String;)Lcom/apk/yu;

    new-instance v1, Lcom/apk/h8;

    invoke-direct {v1, p0}, Lcom/apk/h8;-><init>(Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;)V

    .line 23
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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->mIndicator:Lcom/apk/b40;

    const/16 v1, 0x2d

    const/16 v2, 0xe

    invoke-static {p0, v0, v1, v2}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    return-void
.end method

.method public final j(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->if:Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/FilePickerFragment;->new:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->do:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

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
    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->mImportTxt:Landroid/widget/TextView;

    const v0, 0x7f08022c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;->mImportTxt:Landroid/widget/TextView;

    const v0, 0x7f0801ca

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method
