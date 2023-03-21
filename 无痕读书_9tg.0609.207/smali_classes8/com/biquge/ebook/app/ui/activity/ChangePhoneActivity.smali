.class public Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;
.super Lcom/apk/f6;
.source "ChangePhoneActivity.java"


# instance fields
.field public do:Lcom/apk/g5;

.field public final if:Lcom/apk/x5;

.field public mAccountTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905f5
    .end annotation
.end field

.field public mMessageTimerView:Lcom/biquge/ebook/app/widget/MessageTimerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09060a
    .end annotation
.end field

.field public mMsgCodeET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a7
    .end annotation
.end field

.field public mNewPhoneET:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905f6
    .end annotation
.end field

.field public mOldPhoneET:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905f7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->if:Lcom/apk/x5;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0034

    return v0
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->else()Lcom/biquge/ebook/app/bean/User;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f1003c9

    .line 3
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public initData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/g5;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->if:Lcom/apk/x5;

    invoke-direct {v0, p0, v1}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->do:Lcom/apk/g5;

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mAccountTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/v0;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f090066

    const v1, 0x7f1003c8

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    return-void
.end method

.method public isTouchHideKeybord()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09060a,
            0x7f090196,
            0x7f090388
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090196

    const v1, 0x7f1002b0

    const v2, 0x7f1002af

    if-eq p1, v0, :cond_5

    const v0, 0x7f090388

    if-eq p1, v0, :cond_4

    const v0, 0x7f09060a

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mNewPhoneET:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v2}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/apk/eg;->instanceof(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {v1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mOldPhoneET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mMessageTimerView:Lcom/biquge/ebook/app/widget/MessageTimerView;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/widget/MessageTimerView;->if(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const p1, 0x7f1003bc

    .line 10
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_0

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mAccountTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mOldPhoneET:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mNewPhoneET:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 15
    invoke-static {v2}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_0

    .line 16
    :cond_6
    invoke-static {v3}, Lcom/apk/eg;->instanceof(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 17
    invoke-static {v1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_0

    .line 18
    :cond_7
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->mMsgCodeET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v0}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const p1, 0x7f1002b6

    .line 21
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_0

    .line 22
    :cond_9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;->do:Lcom/apk/g5;

    if-eqz v1, :cond_a

    .line 23
    invoke-virtual {v1, p1, v3, v0}, Lcom/apk/g5;->case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void
.end method
