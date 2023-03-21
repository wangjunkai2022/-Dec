.class public Lcom/biquge/ebook/app/ui/activity/LoginActivity;
.super Lcom/apk/f6;
.source "LoginActivity.java"


# instance fields
.field public do:Lcom/apk/g5;

.field public headerView:Lcom/biquge/ebook/app/widget/HeaderView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090385
    .end annotation
.end field

.field public final if:Lcom/apk/x5;

.field public mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090384
    .end annotation
.end field

.field public mAutoLoginTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090386
    .end annotation
.end field

.field public mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09038d
    .end annotation
.end field

.field public mServiceCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090430
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/LoginActivity$for;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/LoginActivity$for;-><init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->if:Lcom/apk/x5;

    return-void
.end method

.method public static synthetic i(Lcom/biquge/ebook/app/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0044

    return v0
.end method

.method public initData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/apk/g5;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->if:Lcom/apk/x5;

    invoke-direct {v0, p0, v1}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->do:Lcom/apk/g5;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "username"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 8
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 10
    new-instance v2, Lcom/biquge/ebook/app/ui/activity/LoginActivity$do;

    invoke-direct {v2, p0, v1, v0}, Lcom/biquge/ebook/app/ui/activity/LoginActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v2, v0, v1}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mServiceCheckBox:Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/apk/ze;->x(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->headerView:Lcom/biquge/ebook/app/widget/HeaderView;

    const v1, 0x7f100183

    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;I)V

    const v0, 0x7f09038f

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mAutoLoginTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    return-void
.end method

.method public isTouchHideKeybord()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SP_REMOVE_ACCOUNT_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/else;->for(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CacheBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/f6;->showBaseLoading()V

    .line 3
    new-instance p1, Lcom/biquge/ebook/app/ui/activity/LoginActivity$if;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ui/activity/LoginActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->do:Lcom/apk/g5;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/apk/g5;->new(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09038b,
            0x7f09038a,
            0x7f09038e,
            0x7f090386,
            0x7f09038f
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09038a

    if-ne v0, v1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {p1}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v0}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f10017c

    .line 6
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09038b

    if-ne v0, v1, :cond_3

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/biquge/ebook/app/ui/activity/MessageCodeLoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x12e

    .line 9
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09038e

    if-ne v0, v1, :cond_4

    const/16 p1, 0x12d

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090386

    if-ne v0, v1, :cond_5

    .line 14
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->do:Lcom/apk/g5;

    if-eqz v2, :cond_6

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 15
    invoke-virtual/range {v2 .. v7}, Lcom/apk/g5;->new(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09038f

    if-ne p1, v0, :cond_6

    .line 17
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0x12d

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    const-string p1, "username"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "password"

    .line 3
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 7
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 9
    new-instance p3, Lcom/apk/o6;

    invoke-direct {p3, p0, p1, p2}, Lcom/apk/o6;-><init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p3, p1, p2}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/16 p3, 0x12e

    if-ne p1, p3, :cond_1

    if-ne p2, v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
