.class public Lcom/biquge/ebook/app/ui/fragment/InfoFragment;
.super Lcom/apk/g6;
.source "InfoFragment.java"

# interfaces
.implements Lcom/apk/rz;


# instance fields
.field public break:I

.field public case:I

.field public catch:I

.field public final class:Lcom/apk/u5;

.field public do:Lcom/apk/xp0;

.field public else:I

.field public for:Lcom/apk/xp0;

.field public final goto:Lcom/apk/r5;

.field public if:Landroid/view/View;

.field public mCompleRedTagView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090195
    .end annotation
.end field

.field public mMyInfoMsgView:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903cf
    .end annotation
.end field

.field public mNewShareEntranceView:Lcom/biquge/ebook/app/widget/NewShareEntranceView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025d
    .end annotation
.end field

.field public mNickNameTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090234
    .end annotation
.end field

.field public mUploadTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025e
    .end annotation
.end field

.field public mUserHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09022d
    .end annotation
.end field

.field public mUserNameTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090230
    .end annotation
.end field

.field public mWantProgressLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090260
    .end annotation
.end field

.field public mWantProgressTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090261
    .end annotation
.end field

.field public new:Lcom/apk/xp0;

.field public this:Lcom/apk/v3;

.field public try:Lcom/apk/z2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$if;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->goto:Lcom/apk/r5;

    .line 3
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$for;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->class:Lcom/apk/u5;

    return-void
.end method

.method public static a(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->case:I

    iget v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->break:I

    add-int/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->else:I

    iget v2, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->catch:I

    add-int/2addr v1, v2

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mWantProgressTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mWantProgressLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mWantProgressLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    const-string p0, "SP_SHOW_INFO_WANT_BOOK_KEY"

    const/4 v0, 0x1

    .line 6
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v1, p0, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 8
    throw p0
.end method

.method public static synthetic synchronized(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->k(Z)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->const()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUserNameTView:Landroid/widget/TextView;

    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/v0;->new()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->this()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mNickNameTView:Landroid/widget/TextView;

    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/v0;->this()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mNickNameTView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->class()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SP_SHOW_COMPLE_INFO_RED_TAG_KEY"

    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->j(Z)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->j(Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->j(Z)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUserNameTView:Landroid/widget/TextView;

    const v1, 0x7f100172

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mNickNameTView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00c4

    return v0
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mMyInfoMsgView:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/apk/continue;->throws:Lcom/biquge/ebook/app/bean/MyInfoMsgBean;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mMyInfoMsgView:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeTextView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/MyInfoMsgBean;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mMyInfoMsgView:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "SP_MYINFO_MSG_KEY"

    .line 6
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->k(Z)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mMyInfoMsgView:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeTextView;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->try:Lcom/apk/z2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/z2;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->goto:Lcom/apk/r5;

    invoke-direct {v0, v1, v2}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->try:Lcom/apk/z2;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->try:Lcom/apk/z2;

    invoke-virtual {v0}, Lcom/apk/z2;->static()V

    return-void
.end method

.method public initData()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->f()V

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->n()V

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->l()V

    .line 4
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/vb;

    invoke-direct {v1, p0}, Lcom/apk/vb;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 5
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->isOnlyCheckTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mNewShareEntranceView:Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->do()V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mNewShareEntranceView:Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->h()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-virtual {p0, p0}, Lcom/apk/g6;->registerEventBus(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/apk/w0;->import()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUserHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;

    const v1, 0x7f08034e

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/CircleImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public final j(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mCompleRedTagView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mCompleRedTagView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mCompleRedTagView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mCompleRedTagView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_SHOW_COMPLE_INFO_RED_TAG_KEY"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    return-void
.end method

.method public final k(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->do:Lcom/apk/xp0;

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lcom/apk/xp0;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apk/xp0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->do:Lcom/apk/xp0;

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mMyInfoMsgView:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeTextView;

    invoke-virtual {p1, v0}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    const/4 v0, 0x0

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/xp0;->this(FFZ)Lcom/apk/vp0;

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->do:Lcom/apk/xp0;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    .line 7
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_MYINFO_MSG_KEY"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 p1, 0x0

    const-string v0, "REFRESH_CHECK_TASK_RED_KEY"

    .line 8
    invoke-static {v0, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 2

    const-string v0, "SP_SHOW_INFO_WANT_BOOK_KEY"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mWantProgressLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 5
    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->m()V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v0, v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->i()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->m()V

    .line 10
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->i()V

    :goto_0
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->this:Lcom/apk/v3;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/v3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->class:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->this:Lcom/apk/v3;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->this:Lcom/apk/v3;

    invoke-virtual {v0}, Lcom/apk/v3;->throws()V

    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090245,
            0x7f090259,
            0x7f090257,
            0x7f090253,
            0x7f09025c,
            0x7f09025b,
            0x7f09025e,
            0x7f09025f,
            0x7f09025a
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/WantProgressActivity;->i(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    throw v1

    .line 5
    :sswitch_1
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/UploadBookActivity;->i(Landroid/content/Context;)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->new:Lcom/apk/xp0;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    .line 8
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v2, "SP_INFO_UPLOAD_BOOK_KEY"

    invoke-virtual {p1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 9
    :cond_1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 10
    :cond_2
    throw v1

    .line 11
    :sswitch_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->if:Landroid/view/View;

    if-nez p1, :cond_3

    const p1, 0x7f0903db

    .line 12
    invoke-virtual {p0, p1}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 13
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->if:Landroid/view/View;

    const/4 v0, 0x4

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->if:Landroid/view/View;

    .line 16
    invoke-static {p1, v0, v1, v1}, Lcom/apk/w0;->interface(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;Lcom/manhua/data/bean/ComicBean;)V

    .line 17
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_4

    goto/16 :goto_0

    .line 18
    :cond_4
    throw v1

    .line 19
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-class v2, Lcom/biquge/ebook/app/ui/activity/SetActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 21
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_5

    goto/16 :goto_0

    .line 22
    :cond_5
    throw v1

    .line 23
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-class v2, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 25
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_6

    goto/16 :goto_0

    .line 26
    :cond_6
    throw v1

    .line 27
    :sswitch_5
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-class v2, Lcom/biquge/ebook/app/ui/activity/MyFootprintActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 29
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_7

    goto/16 :goto_0

    .line 30
    :cond_7
    throw v1

    .line 31
    :sswitch_6
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-nez p1, :cond_8

    .line 32
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    return-void

    .line 34
    :cond_8
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-class v2, Lcom/biquge/ebook/app/ui/activity/MyListActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_0

    .line 37
    :cond_9
    throw v1

    .line 38
    :sswitch_7
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-class v2, Lcom/biquge/ebook/app/ui/activity/DownloadManagerActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_a

    goto :goto_0

    .line 41
    :cond_a
    throw v1

    .line 42
    :sswitch_8
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 43
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    const-class v3, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v2, p1, v3}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 45
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 46
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->j(Z)V

    goto :goto_0

    .line 47
    :cond_b
    throw v1

    .line 48
    :cond_c
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/ze;->M(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_0

    .line 50
    :cond_d
    throw v1

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090245 -> :sswitch_8
        0x7f090253 -> :sswitch_7
        0x7f090257 -> :sswitch_6
        0x7f090259 -> :sswitch_5
        0x7f09025a -> :sswitch_4
        0x7f09025b -> :sswitch_3
        0x7f09025c -> :sswitch_2
        0x7f09025e -> :sswitch_1
        0x7f09025f -> :sswitch_0
    .end sparse-switch
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUserHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;

    if-eqz v0, :cond_0

    const-string v0, "SP_SAVE_USER_HEADICON_KEY"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/apk/goto;->volatile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUserHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;

    invoke-static {v0, v1}, Lcom/apk/u;->throws(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->onDestroy()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/g6;->unRegisterEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v0, "login_action_start"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mUserNameTView:Landroid/widget/TextView;

    const v0, 0x7f100171

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "login_action"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->f()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "EVENT_COMPLE_USERINFO_KEY"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->f()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "REFRESH_CHECK_TASK_RED_KEY"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/vb;

    invoke-direct {v0, p0}, Lcom/apk/vb;-><init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    invoke-virtual {p1, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    :cond_3
    const-string v0, "REFRESH_WANTBOOK_KEY"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->l()V

    goto :goto_0

    :cond_4
    const-string v0, "REFRESH_NEW_SHARE_LINK_USEAR"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mNewShareEntranceView:Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    if-eqz p1, :cond_9

    .line 14
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->do()V

    goto :goto_0

    :cond_5
    const-string v0, "SP_MYINFO_MSG_KEY"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->h()V

    goto :goto_0

    :cond_6
    const-string v0, "EVENT_REFRESH_GONE_FREE_AD_BTN_KEY"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->mNewShareEntranceView:Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    if-eqz p1, :cond_9

    .line 19
    invoke-static {}, Lcom/apk/w0;->goto()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 21
    iget-object v1, p1, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->if:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    const v2, 0x7f100223

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 22
    invoke-static {v2, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_7
    invoke-static {}, Lcom/apk/finally;->if()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->for:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :cond_8
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->new:Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;

    if-eqz p1, :cond_9

    .line 27
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;->if()V

    :cond_9
    :goto_0
    return-void
.end method
