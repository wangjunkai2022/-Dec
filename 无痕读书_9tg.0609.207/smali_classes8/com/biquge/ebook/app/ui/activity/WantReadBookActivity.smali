.class public Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;
.super Lcom/apk/f6;
.source "WantReadBookActivity.java"


# instance fields
.field public do:[Ljava/lang/String;

.field public final for:Lcom/apk/u5;

.field public if:Lcom/apk/v3;

.field public indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905f3
    .end annotation
.end field

.field public lastWeekNumberTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09036f
    .end annotation
.end field

.field public lastWeekPeopleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090370
    .end annotation
.end field

.field public mAuthorEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061c
    .end annotation
.end field

.field public mMarqueeView:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061a
    .end annotation
.end field

.field public mNameEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061b
    .end annotation
.end field

.field public totalPeopleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090568
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->for:Lcom/apk/u5;

    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "INTENT_NAME_KEY"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "INTENT_SOURCE_TYPE_KEY"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c005b

    return v0
.end method

.method public initData()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/v3;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->for:Lcom/apk/u5;

    invoke-direct {v0, p0, v1}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->if:Lcom/apk/v3;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->class()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ver9/base"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/summary.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x240c8400

    .line 3
    sget-object v4, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v5, Lcom/apk/g4;

    const-string v6, "SP_HOST_SHUC_XS_KEY"

    invoke-direct {v5, v0, v6}, Lcom/apk/g4;-><init>(Lcom/apk/v3;Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public initView()V
    .locals 11

    const v0, 0x7f0905e7

    const v1, 0x7f1003e3

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v3, "INTENT_NAME_KEY"

    .line 3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->mNameEt:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->mNameEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const-string v3, "INTENT_SOURCE_TYPE_KEY"

    .line 7
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v4

    .line 10
    iget-object v4, v4, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 11
    sget-object v5, Lcom/apk/hf;->do:Lcom/apk/hf;

    const/16 v6, 0x8

    const v7, 0x7f1003dc

    const-string v8, "novel"

    if-ne v4, v5, :cond_2

    .line 12
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->do:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    .line 13
    invoke-static {v7}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 14
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    .line 15
    :cond_2
    sget-object v5, Lcom/apk/hf;->if:Lcom/apk/hf;

    const v9, 0x7f1003e1

    const-string v10, "cartoon"

    if-ne v4, v5, :cond_3

    .line 16
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->do:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    .line 17
    invoke-static {v9}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 18
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_1

    .line 19
    :cond_3
    sget-object v5, Lcom/apk/hf;->for:Lcom/apk/hf;

    const/4 v6, 0x2

    if-ne v4, v5, :cond_4

    .line 20
    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->do:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    .line 21
    invoke-static {v7}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 22
    invoke-static {v9}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    goto :goto_2

    .line 23
    :cond_4
    filled-new-array {v10, v8}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->do:[Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/String;

    .line 24
    invoke-static {v9}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 25
    invoke-static {v7}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    :goto_2
    move-object v0, v4

    goto :goto_3

    :cond_5
    move-object v0, v4

    goto :goto_1

    .line 26
    :goto_3
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v4, Lcom/apk/nz;

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v5}, Lcom/apk/eg;->catch(F)I

    move-result v5

    invoke-direct {v4, p0, v0, v5}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 27
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/16 v3, 0x1e

    const/16 v4, 0xe

    invoke-static {p0, v0, v3, v4}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    if-eqz v2, :cond_6

    .line 28
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v0, v2, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if(IZ)V

    :cond_6
    return-void
.end method

.method public isTouchHideKeybord()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public menuClick()V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090619
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->const()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/apk/ze;->M(Landroid/content/Context;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->mNameEt:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->mAuthorEt:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f1003ac

    .line 6
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_2

    .line 7
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f1003b3

    .line 8
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->if:Lcom/apk/v3;

    if-eqz v2, :cond_6

    .line 10
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->do:[Ljava/lang/String;

    const-string v3, "novel"

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v4

    aget-object v2, v2, v4

    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 11
    :goto_0
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->if:Lcom/apk/v3;

    if-eqz v4, :cond_5

    const-string v5, "action"

    const-string v6, "begbook"

    .line 12
    invoke-static {v5, v6}, Lcom/apk/goto;->native(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 13
    invoke-static {}, Lcom/apk/eg;->super()Ljava/lang/String;

    move-result-object v6

    const-string v7, "deviceno"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "type"

    .line 14
    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "name"

    .line 15
    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "author"

    .line 16
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/apk/w;->default()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/UploadBook.aspx"

    invoke-static {v0, v1}, Lcom/apk/goto;->catch(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_1
    new-instance v1, Lcom/apk/h4;

    invoke-direct {v1, v4}, Lcom/apk/h4;-><init>(Lcom/apk/v3;)V

    invoke-static {v0, v5, v1}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 20
    throw v0

    :cond_6
    :goto_2
    return-void
.end method
