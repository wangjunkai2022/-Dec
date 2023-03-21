.class public Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;
.super Lcom/apk/f6;
.source "CompleteInfoActivity.java"


# instance fields
.field public do:Lcom/apk/g5;

.field public final if:Lcom/apk/x5;

.field public mAccountET:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
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

.field public mPhoneET:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->if:Lcom/apk/x5;

    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0037

    return v0
.end method

.method public final i()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->else()Lcom/biquge/ebook/app/bean/User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->mAccountET:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->mAccountET:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    const v1, 0x7f090192

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f090194

    .line 7
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->mPhoneET:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->mPhoneET:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    const v1, 0x7f090193

    .line 12
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f090387

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public initData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/g5;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->if:Lcom/apk/x5;

    invoke-direct {v0, p0, v1}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->do:Lcom/apk/g5;

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->i()V

    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f090066

    const v1, 0x7f1003c0

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
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09060a,
            0x7f090196,
            0x7f090387,
            0x7f090388
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1002b0

    const v1, 0x7f1002af

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->mPhoneET:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/apk/eg;->instanceof(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->mMessageTimerView:Lcom/biquge/ebook/app/widget/MessageTimerView;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/widget/MessageTimerView;->if(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const p1, 0x7f1003bc

    .line 8
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_0

    .line 9
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x3fd

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 10
    :sswitch_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->mAccountET:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->mPhoneET:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-static {v1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v2}, Lcom/apk/eg;->instanceof(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->mMsgCodeET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v0}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const p1, 0x7f1002b6

    .line 18
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_0

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->do:Lcom/apk/g5;

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v1, p1, v2, v0}, Lcom/apk/g5;->case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090196 -> :sswitch_3
        0x7f090387 -> :sswitch_2
        0x7f090388 -> :sswitch_1
        0x7f09060a -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3fd

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->i()V

    :cond_0
    return-void
.end method
