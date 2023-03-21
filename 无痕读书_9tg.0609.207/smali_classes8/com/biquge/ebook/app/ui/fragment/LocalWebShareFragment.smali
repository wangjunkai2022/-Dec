.class public Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;
.super Lcom/apk/g6;
.source "LocalWebShareFragment.java"


# static fields
.field public static final new:[J


# instance fields
.field public ad_number:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009b
    .end annotation
.end field

.field public dialog_qrcode_imageview:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d0
    .end annotation
.end field

.field public dialog_qrcode_progress_view:Lcom/biquge/ebook/app/widget/AppProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d1
    .end annotation
.end field

.field public do:Landroid/view/View;

.field public for:Z

.field public if:Landroid/graphics/Bitmap;

.field public mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09008f
    .end annotation
.end field

.field public mScrollView:Landroid/widget/ScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090090
    .end annotation
.end field

.field public share_code:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904dd
    .end annotation
.end field

.field public tips_title1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09055e
    .end annotation
.end field

.field public tp_number:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09056a
    .end annotation
.end field

.field public yaoqing_number:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090665
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 1
    sput-object v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->new:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->j()V

    return-void
.end method

.method public static synchronized(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V
    .locals 6

    if-eqz p0, :cond_2

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->new:[J

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    sget-object v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->new:[J

    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v4, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->new:[J

    aget-wide v3, v4, v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v0, v3

    if-gtz v5, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->for:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v2, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->for:Z

    .line 6
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-string v1, "\u5206\u4eab\u68c0\u6d4b"

    const-string v2, "101"

    invoke-static {v0, v1, v2}, Lcom/biquge/ebook/app/ui/activity/FragmentManagerActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    new-instance v1, Lcom/apk/wb;

    invoke-direct {v1, p0}, Lcom/apk/wb;-><init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 8
    throw p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0171

    return v0
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/w0;->class()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/yb;

    invoke-direct {v1, p0}, Lcom/apk/yb;-><init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$for;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$new;-><init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public initData()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->j()V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-virtual {p0, p0}, Lcom/apk/g6;->registerEventBus(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->tips_title1:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getTg_tips()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getBase_by()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "="

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    array-length v2, v1

    if-lez v2, :cond_0

    .line 8
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->tp_number:Landroid/widget/TextView;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->ad_number:Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    .line 12
    iput-boolean v0, v1, Lcom/apk/ss;->throw:Z

    .line 13
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V

    invoke-virtual {v1, v0}, Lcom/apk/ss;->setPtrHandler(Lcom/apk/ts;)V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->dialog_qrcode_imageview:Landroid/widget/ImageView;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->yaoqing_number:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f100227

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    invoke-static {}, Lcom/apk/w0;->catch()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public menuClk(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0904dd,
            0x7f0904ea,
            0x7f090665
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090665

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    const v0, 0x7f100225

    .line 3
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "10"

    .line 4
    invoke-static {p1, v0, v1}, Lcom/biquge/ebook/app/ui/activity/FragmentManagerActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904ea

    if-ne v0, v1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->do:Landroid/view/View;

    if-nez p1, :cond_1

    const p1, 0x7f0903db

    .line 7
    invoke-virtual {p0, p1}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->do:Landroid/view/View;

    const/4 v0, 0x4

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->do:Landroid/view/View;

    const/4 v1, 0x0

    .line 11
    invoke-static {p1, v0, v1, v1}, Lcom/apk/w0;->interface(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0904dd

    if-ne p1, v0, :cond_3

    .line 13
    invoke-static {}, Lcom/apk/w0;->class()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/yb;

    invoke-direct {v0, p0}, Lcom/apk/yb;-><init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V

    invoke-virtual {p1, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/g6;->unRegisterEventBus(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->if:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v0, "REFRESH_NEW_SHARE_LINK_USEAR"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->j()V

    :cond_0
    return-void
.end method
