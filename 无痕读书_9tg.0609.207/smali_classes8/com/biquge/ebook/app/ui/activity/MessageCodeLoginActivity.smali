.class public Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;
.super Lcom/apk/f6;
.source "MessageCodeLoginActivity.java"


# instance fields
.field public do:Lcom/apk/g5;

.field public mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046e
    .end annotation
.end field

.field public mMessageTimerView:Lcom/biquge/ebook/app/widget/MessageTimerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09060a
    .end annotation
.end field

.field public mServiceCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090430
    .end annotation
.end field

.field public mVCodeET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090478
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0046

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/g5;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->do:Lcom/apk/g5;

    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f09046f

    const v1, 0x7f1002b2

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mMessageTimerView:Lcom/biquge/ebook/app/widget/MessageTimerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/MessageTimerView;->setCheckPhone(Z)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mServiceCheckBox:Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/apk/ze;->x(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public isTouchHideKeybord()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090477,
            0x7f09060a,
            0x7f090388
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1002b0

    const v2, 0x7f090477

    if-ne v0, v2, :cond_4

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mServiceCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mServiceCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f1002b3

    .line 4
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 5
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3e600000    # -20.0f

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x50

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {p1}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v6}, Lcom/apk/eg;->instanceof(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mVCodeET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {p1}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1002b6

    .line 14
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    .line 15
    :cond_2
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->do:Lcom/apk/g5;

    if-eqz v2, :cond_8

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 16
    invoke-virtual/range {v2 .. v7}, Lcom/apk/g5;->new(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f09060a

    if-ne v0, v2, :cond_7

    .line 19
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {p1}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/apk/eg;->instanceof(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;->mMessageTimerView:Lcom/biquge/ebook/app/widget/MessageTimerView;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/widget/MessageTimerView;->if(Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_6
    :goto_1
    invoke-static {v1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    .line 23
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090388

    if-ne p1, v0, :cond_8

    const p1, 0x7f1003bc

    .line 24
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :cond_8
    :goto_2
    return-void
.end method
