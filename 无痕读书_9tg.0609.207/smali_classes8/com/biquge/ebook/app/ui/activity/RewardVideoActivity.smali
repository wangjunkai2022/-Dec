.class public Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;
.super Lcom/apk/f6;
.source "RewardVideoActivity.java"


# instance fields
.field public final case:Lcom/apk/z60;

.field public do:Z

.field public final else:Lcom/apk/v60;

.field public for:I

.field public goto:I

.field public if:Lcom/apk/hf;

.field public mButton:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f7
    .end annotation
.end field

.field public mContentLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047a
    .end annotation
.end field

.field public mLoadingView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047b
    .end annotation
.end field

.field public mMessageTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047d
    .end annotation
.end field

.field public mPublicTimeMessageTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047c
    .end annotation
.end field

.field public mStateIView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047e
    .end annotation
.end field

.field public mStateTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047f
    .end annotation
.end field

.field public new:Ljava/lang/String;

.field public final this:Ljava/lang/Runnable;

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->case:Lcom/apk/z60;

    .line 3
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$if;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->else:Lcom/apk/v60;

    .line 4
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$for;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$for;-><init>(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->this:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic i(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for()V

    return-void
.end method

.method public static synthetic j(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->u()V

    return-void
.end method

.method public static synthetic k(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->s()V

    return-void
.end method

.method public static o(Landroid/app/Activity;Lcom/apk/hf;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sourceType"

    const/16 v2, 0xc

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sourceMocule"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static p(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sourceType"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static q(Landroid/app/Activity;II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sourceType"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static r(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sourceType"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->this:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/apk/i6;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->this:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/apk/i6;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c004f

    return v0
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/f6;->init(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    return-void

    :cond_0
    const/16 v0, 0xb

    const-string v1, "sourceType"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for:I

    const-string v0, "sourceMocule"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/apk/hf;

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->if:Lcom/apk/hf;

    if-nez p1, :cond_1

    .line 9
    sget-object p1, Lcom/apk/hf;->do:Lcom/apk/hf;

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->if:Lcom/apk/hf;

    :cond_1
    return-void
.end method

.method public initData()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 2
    :pswitch_0
    invoke-static {}, Lcom/apk/a1;->this()Lcom/apk/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/n0;->do()Lcom/apk/g;

    move-result-object v1

    goto/16 :goto_2

    .line 3
    :pswitch_1
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v0

    .line 4
    iget-object v3, v0, Lcom/apk/s0;->default:Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget v1, v0, Lcom/apk/s0;->throws:I

    iget-object v3, v0, Lcom/apk/s0;->default:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v1, v3

    .line 6
    iget-object v3, v0, Lcom/apk/s0;->default:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/g;

    .line 7
    iget v3, v0, Lcom/apk/s0;->throws:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/apk/s0;->throws:I

    goto :goto_2

    .line 8
    :pswitch_2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    :try_start_0
    iget-object v3, v0, Lcom/apk/finally;->r:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/apk/finally;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 10
    iget-object v3, v0, Lcom/apk/finally;->r:Ljava/util/List;

    iget v4, v0, Lcom/apk/finally;->s:I

    iget-object v5, v0, Lcom/apk/finally;->r:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    iget v1, v0, Lcom/apk/finally;->s:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/apk/finally;->s:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v0

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v1

    :goto_1
    move-object v1, v3

    goto :goto_2

    .line 13
    :cond_1
    throw v1

    .line 14
    :pswitch_3
    sget-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->if:Lcom/apk/hf;

    if-ne v0, v1, :cond_2

    .line 15
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/n0;->do()Lcom/apk/g;

    move-result-object v1

    goto :goto_2

    .line 16
    :cond_2
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/n0;->do()Lcom/apk/g;

    move-result-object v1

    goto :goto_2

    .line 17
    :cond_3
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/s0;->do()Lcom/apk/g;

    move-result-object v1

    goto :goto_2

    .line 18
    :cond_4
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/s0;->do()Lcom/apk/g;

    move-result-object v1

    .line 19
    :cond_5
    :goto_2
    iget v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7

    const/16 v4, 0xc

    if-eq v0, v4, :cond_6

    goto :goto_3

    .line 20
    :cond_6
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-nez v0, :cond_8

    .line 21
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->n()V

    return-void

    :cond_7
    :goto_3
    const-string v0, "SP_NONET_ALLOW_SKIP_KEY"

    .line 22
    invoke-static {v0, v3}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 23
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-nez v0, :cond_8

    .line 24
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->n()V

    return-void

    :cond_8
    const-string v0, "ad is null"

    if-eqz v1, :cond_d

    .line 25
    invoke-virtual {v1}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual {v1}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v1

    .line 27
    iput-boolean v3, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->do:Z

    .line 28
    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mLoadingView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_9

    .line 29
    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mLoadingView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :cond_9
    iput-boolean v2, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->try:Z

    .line 31
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->this:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/apk/i6;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 32
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->this:Ljava/lang/Runnable;

    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v2, v5, v6}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    .line 34
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    :cond_a
    invoke-static {v4}, Lcom/swl/gg/sdk/TrAdSdk;->isFullAdType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 36
    invoke-virtual {p0, v4, v1}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 37
    :cond_b
    invoke-static {v4}, Lcom/swl/gg/sdk/TrAdSdk;->isRewardAdType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 38
    invoke-virtual {p0, v4, v1}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 39
    :cond_c
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->s()V

    goto :goto_4

    .line 41
    :cond_d
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->s()V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initView()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for:I

    const/4 v1, 0x1

    const v2, 0x7f090086

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f1002fb

    .line 2
    invoke-virtual {p0, v2, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f1002a4

    .line 3
    invoke-virtual {p0, v2, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f1002c8

    .line 4
    invoke-virtual {p0, v2, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    goto :goto_0

    :cond_0
    :pswitch_3
    const v0, 0x7f100297

    .line 5
    invoke-virtual {p0, v2, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f10029a

    .line 6
    invoke-virtual {p0, v2, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ts"

    .line 2
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->new:Ljava/lang/String;

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "other"

    .line 3
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->new:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_0
    const-string v0, "read"

    .line 4
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->new:Ljava/lang/String;

    goto :goto_2

    :cond_4
    :goto_1
    const-string v0, "xz"

    .line 5
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->new:Ljava/lang/String;

    .line 6
    :goto_2
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v1

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->else:Lcom/apk/v60;

    iget-object v6, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->new:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    .line 7
    invoke-virtual/range {v1 .. v6}, Lcom/apk/c;->import(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/v60;Ljava/lang/String;)V

    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ts"

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const-string v0, "read"

    goto :goto_1

    :cond_2
    const-string v0, "other"

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "xz"

    .line 2
    :goto_1
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->case:Lcom/apk/z60;

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/apk/e;->import(Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;Ljava/lang/String;)V

    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateIView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateTView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    const v2, 0x7f1002c6

    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mButton:Landroid/widget/TextView;

    const v1, 0x7f1002c7

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$try;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$try;-><init>(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->t()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->try:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apk/c;->throw(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apk/e;->throw(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->try:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    .line 6
    :cond_2
    invoke-super {p0, p1}, Lcom/apk/f6;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final s()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->goto:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->goto:I

    const/4 v1, 0x3

    const-string v2, "SP_VIDEO_AD_RETRY_COUNT_KEY"

    .line 2
    invoke-static {v2, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->u()V

    :goto_0
    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for()V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateIView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateTView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    const v1, 0x7f1002c1

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mButton:Landroid/widget/TextView;

    const v1, 0x7f1002c7

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mButton:Landroid/widget/TextView;

    new-instance v1, Lcom/apk/g8;

    invoke-direct {v1, p0}, Lcom/apk/g8;-><init>(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->t()V

    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateIView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mPublicTimeMessageTView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->for:I

    const/4 v2, 0x0

    const v3, 0x7f10029f

    const/4 v4, 0x1

    if-eq v0, v4, :cond_d

    const/4 v5, 0x2

    const v6, 0x7f1002c9

    if-eq v0, v5, :cond_b

    const/4 v5, 0x3

    if-eq v0, v5, :cond_9

    const/4 v5, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 5
    :pswitch_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateTView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    invoke-static {}, Lcom/apk/a1;->this()Lcom/apk/a1;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v3}, Lcom/apk/n0;->try()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    const v3, 0x7f1002a0

    invoke-static {v3, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 10
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto/16 :goto_5

    :pswitch_1
    const-string v0, "CACHE_BATCH_AUTO_DOWNLOAD_KEY"

    .line 11
    invoke-static {v0, v2}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->onBackPressed()V

    goto/16 :goto_5

    .line 13
    :pswitch_2
    invoke-static {}, Lcom/apk/finally;->break()I

    move-result v0

    add-int/2addr v0, v4

    .line 14
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_VIDEO_FREE_AD_KEY"

    invoke-virtual {v5, v6, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f100190

    .line 15
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 17
    invoke-static {}, Lcom/apk/finally;->if()Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_0

    .line 18
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getOver_tips()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getNext_noad_days()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "{next_noad_days}"

    .line 20
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 21
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/finally;->catch()I

    move-result v8

    invoke-static {}, Lcom/apk/finally;->break()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getAfter_fir_tips()Ljava/lang/String;

    move-result-object v7

    const-string v8, "{result}"

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v2

    .line 23
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 24
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    .line 25
    :cond_2
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {}, Lcom/apk/finally;->break()I

    move-result v3

    if-ne v3, v4, :cond_3

    if-eqz v5, :cond_5

    .line 27
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getFir_spgg()I

    move-result v4

    goto :goto_1

    .line 28
    :cond_3
    invoke-static {}, Lcom/apk/finally;->catch()I

    move-result v6

    if-ne v3, v6, :cond_4

    if-eqz v5, :cond_5

    .line 29
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getNext_noad_days()I

    move-result v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_1
    if-lez v4, :cond_7

    .line 30
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v3

    .line 31
    iput-boolean v1, v3, Lcom/apk/finally;->do:Z

    .line 32
    invoke-static {}, Lcom/apk/w0;->goto()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/apk/kg;->goto(J)Ljava/lang/String;

    move-result-object v3

    .line 35
    :cond_6
    sget-object v5, Lcom/apk/kg;->do:Ljava/text/DateFormat;

    invoke-static {v3, v5}, Lcom/apk/kg;->catch(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v5

    mul-int/lit8 v4, v4, 0x18

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v3, v4

    add-long/2addr v5, v3

    .line 36
    sget-object v3, Lcom/apk/kg;->do:Ljava/text/DateFormat;

    invoke-static {v5, v6, v3}, Lcom/apk/kg;->this(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/w0;->package(Ljava/lang/String;)V

    .line 37
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateTView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 38
    :cond_7
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateTView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const-string v3, "EVENT_REFRESH_GONE_FREE_AD_BTN_KEY"

    .line 39
    invoke-static {v3, v2}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    move-object v2, v0

    goto/16 :goto_5

    .line 41
    :pswitch_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateTView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    sget-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->if:Lcom/apk/hf;

    if-ne v0, v1, :cond_8

    .line 43
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/k30;->class()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 44
    :cond_8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/r0;->class()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_3
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 46
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    return-void

    .line 47
    :cond_9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateTView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    const v2, 0x7f100295

    new-array v3, v4, [Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v4

    .line 50
    iget v4, v4, Lcom/apk/s0;->public:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 51
    invoke-static {v2, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v0

    .line 53
    iget v2, v0, Lcom/apk/s0;->public:I

    .line 54
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "DB_VIDEO_CHAPTER_REWARD_XZ_COMIC_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    iget-boolean v0, v0, Lcom/apk/s0;->static:Z

    if-eqz v0, :cond_a

    .line 56
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v3, "SP_COMIC_XZ_TODAY_KEY"

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    :cond_a
    invoke-static {v6}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 59
    :cond_b
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateTView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    const v2, 0x7f100296

    new-array v3, v4, [Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v4

    .line 62
    iget v4, v4, Lcom/apk/s0;->while:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 63
    invoke-static {v2, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v0

    .line 65
    iget v2, v0, Lcom/apk/s0;->while:I

    .line 66
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "DB_VIDEO_REWARD_XZ_KEY_"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 67
    iget-boolean v0, v0, Lcom/apk/s0;->static:Z

    if-eqz v0, :cond_c

    .line 68
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v0

    .line 69
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v3, "SP_NOVEL_XZ_TODAY_KEY"

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    :cond_c
    invoke-static {v6}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 71
    :cond_d
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mStateTView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    const v3, 0x7f100299

    new-array v5, v4, [Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    .line 74
    iget v6, v6, Lcom/apk/s0;->goto:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    const v6, 0x7f10029b

    invoke-static {v6, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 75
    invoke-static {v3, v5}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v0

    .line 77
    iget-boolean v0, v0, Lcom/apk/s0;->class:Z

    if-eqz v0, :cond_e

    .line 78
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mPublicTimeMessageTView:Landroid/widget/TextView;

    const v3, 0x7f100298

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mPublicTimeMessageTView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 80
    :cond_e
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v0

    .line 81
    iget-boolean v0, v0, Lcom/apk/s0;->const:Z

    if-eqz v0, :cond_f

    .line 82
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v3

    .line 83
    iget-object v3, v3, Lcom/apk/s0;->catch:Ljava/lang/String;

    .line 84
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_f
    :goto_4
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 86
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_TTS_USE_TIME_KEY"

    invoke-virtual {v3, v4, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-boolean v3, v0, Lcom/apk/s0;->class:Z

    if-eqz v3, :cond_10

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 89
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v5, "SP_TTS_TIME_SAVE_KEY"

    invoke-virtual {v0, v5, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    .line 90
    :cond_10
    iget-boolean v0, v0, Lcom/apk/s0;->const:Z

    if-eqz v0, :cond_11

    .line 91
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v0

    .line 92
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_TSLIMIT_TODAT_REWARD_KEY"

    invoke-virtual {v3, v4, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    :cond_11
    :goto_5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mMessageTView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f1002c4

    .line 95
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->mButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$new;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity$new;-><init>(Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->t()V

    return-void

    .line 99
    :cond_13
    throw v2

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
