.class public Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;
.super Lcom/apk/f6;
.source "FeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;
    }
.end annotation


# static fields
.field public static final new:[Ljava/lang/String;


# instance fields
.field public commit_tips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090191
    .end annotation
.end field

.field public do:Lcom/apk/hf;

.field public for:Ljava/lang/String;

.field public if:[Landroid/widget/TextView;

.field public input_et:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902aa
    .end annotation
.end field

.field public mAnsFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901fe
    .end annotation
.end field

.field public number_tips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903fa
    .end annotation
.end field

.field public parent_sv:Landroid/widget/ScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040b
    .end annotation
.end field

.field public register_phone_et:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090476
    .end annotation
.end field

.field public register_weixin_qq_et:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090479
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "\u5185\u5bb9\u62a5\u9519"

    const-string v1, "\u8d44\u6e90\u627e\u4e66"

    const-string v2, "\u529f\u80fd\u5efa\u8bae"

    const-string v3, "\u5fd8\u8bb0\u5bc6\u7801"

    const-string v4, "\u5176\u4ed6"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->new:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    sget-object v0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->new:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->for:Ljava/lang/String;

    return-void
.end method

.method public static i(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/apk/hf;->do:Lcom/apk/hf;

    :cond_0
    const-string v1, "SOURCE_TYPE"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "ANS_TITLE_TYPE"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "CONTENT_TYPE"

    .line 5
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00a8

    return v0
.end method

.method public getToolBarMenuView()I
    .locals 1

    const v0, 0x7f0d0003

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initData()V

    .line 2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->else()Lcom/biquge/ebook/app/bean/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->register_phone_et:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->register_phone_et:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 9

    const v0, 0x7f1001a0

    .line 1
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090072

    invoke-virtual {p0, v1, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->new:[Ljava/lang/String;

    array-length v1, v1

    .line 4
    new-array v2, v1, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->if:[Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 5
    sget-object v5, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->new:[Ljava/lang/String;

    aget-object v5, v5, v3

    const v6, 0x7f0c0129

    const/4 v7, 0x0

    .line 6
    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09031a

    .line 7
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 8
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v8, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$do;

    invoke-direct {v8, p0, v5}, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v3, :cond_0

    .line 10
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    :cond_0
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->mAnsFlexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->if:[Landroid/widget/TextView;

    aput-object v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->input_et:Landroid/widget/EditText;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;

    const/16 v3, 0xc8

    invoke-direct {v1, p0, v3}, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;-><init>(Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->input_et:Landroid/widget/EditText;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const-string v0, "FEEDBACK_CLOND_GW_URL_KEY"

    const-string v1, ""

    .line 15
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->commit_tips:Landroid/widget/TextView;

    const v3, 0x7f100156

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->commit_tips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "SOURCE_TYPE"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/apk/hf;

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->do:Lcom/apk/hf;

    const-string v1, "ANS_TITLE_TYPE"

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONTENT_TYPE"

    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->for:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->j()V

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 26
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->input_et:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->input_et:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    return-void
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->if:[Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->for:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public menuClk(Landroid/view/View;)V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090190
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->input_et:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, "last_time"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    const-wide/16 v5, 0x7530

    cmp-long v7, v0, v5

    if-gtz v7, :cond_1

    const-string p1, "\u64cd\u4f5c\u8fc7\u4e8e\u9891\u7e41\uff0c\u8bf7\u7a0d\u540e\u5728\u63d0\u4ea4"

    .line 5
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6
    :cond_1
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p0, v2, v1}, Lcom/apk/b1;->for(Landroid/content/Context;ZLjava/lang/String;)Lcom/apk/b1;

    .line 9
    new-instance v1, Lcom/apk/r7;

    invoke-direct {v1, p0, p1}, Lcom/apk/r7;-><init>(Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "\u6700\u5c11\u8f93\u51656\u4e2a\u5b57\u7b26"

    .line 10
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onItemMenuSelected(Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0900d8

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->input_et:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1001d2

    .line 3
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/apk/w0;->finally(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f090084

    .line 1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0900d8

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v2, "\u90ae\u4ef6\u53cd\u9988"

    .line 3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    .line 5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
