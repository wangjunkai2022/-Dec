.class public Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;
.super Lcom/apk/f6;
.source "SetNickNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public do:Lcom/apk/g5;

.field public final if:Lcom/apk/x5;

.field public mAuditNickNameTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904d1
    .end annotation
.end field

.field public mNickNameET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ce
    .end annotation
.end field

.field public mSubmitTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904cf
    .end annotation
.end field

.field public mTipsTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904d0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$new;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$new;-><init>(Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->if:Lcom/apk/x5;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mSubmitTView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mSubmitTView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0054

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1
    new-instance v0, Lcom/apk/g5;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->if:Lcom/apk/x5;

    invoke-direct {v0, p0, v1}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->do:Lcom/apk/g5;

    .line 2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->else()Lcom/biquge/ebook/app/bean/User;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mNickNameET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mNickNameET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const-string v0, "SP_SUBMIT_USER_AUDIT_NICKNAME_KEY"

    const-string v1, ""

    .line 7
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mAuditNickNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mNickNameET:Lcom/biquge/ebook/app/widget/ClearEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mAuditNickNameTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mSubmitTView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mSubmitTView:Landroid/widget/TextView;

    const v1, 0x7f08022c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mAuditNickNameTv:Landroid/widget/TextView;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mSubmitTView:Landroid/widget/TextView;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mNickNameET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mNickNameET:Lcom/biquge/ebook/app/widget/ClearEditText;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$for;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity$for;-><init>(Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const v0, 0x7f1002ee

    .line 18
    :try_start_0
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u53ea\u53ef"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "\u4fee\u6539\uff01"

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    .line 21
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const v0, 0x7f060060

    .line 22
    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    .line 23
    invoke-static {p0, v0}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v0

    .line 24
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x22

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 25
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mTipsTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f0904cd

    const v1, 0x7f100174

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    return-void
.end method

.method public isTouchHideKeybord()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;->mNickNameET:Lcom/biquge/ebook/app/widget/ClearEditText;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
