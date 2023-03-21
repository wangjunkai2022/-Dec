.class public Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;
.super Lcom/apk/f6;
.source "ForgetPasswordActivity.java"


# instance fields
.field public do:Lcom/apk/g5;

.field public final if:Lcom/apk/x5;

.field public mAccountET:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046e
    .end annotation
.end field

.field public mAgainPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090470
    .end annotation
.end field

.field public mOldPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090472
    .end annotation
.end field

.field public mOldPasswordLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090473
    .end annotation
.end field

.field public mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090475
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->if:Lcom/apk/x5;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0041

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/g5;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->if:Lcom/apk/x5;

    invoke-direct {v0, p0, v1}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->do:Lcom/apk/g5;

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mAccountET:Landroid/widget/TextView;

    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->catch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mOldPasswordLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "title"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->catch()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f1003cb

    .line 5
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const v0, 0x7f1003cd

    .line 6
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    const v1, 0x7f090066

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    return-void
.end method

.method public isTouchHideKeybord()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public menuClick()V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090477
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mAccountET:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mOldPasswordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mOldPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v1}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f1002b7

    .line 5
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto/16 :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v1}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->mAgainPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const v0, 0x7f10017b

    .line 10
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v0, 0x7f1003a5

    .line 12
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;->do:Lcom/apk/g5;

    if-eqz v3, :cond_6

    const-string v4, "action"

    const-string v5, "changepwd"

    const-string v6, "username"

    .line 14
    invoke-static {v4, v5, v6, v0}, Lcom/apk/goto;->public(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "oldpassword"

    .line 16
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v2, "password"

    .line 17
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/apk/eg;->super()Ljava/lang/String;

    move-result-object v2

    const-string v5, "deviceno"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/apk/w;->final()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/apk/i5;

    invoke-direct {v5, v3, v0, v1}, Lcom/apk/i5;-><init>(Lcom/apk/g5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v4, v5}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    goto :goto_1

    :cond_5
    :goto_0
    const v0, 0x7f1002b8

    .line 20
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :cond_6
    :goto_1
    return-void
.end method
