.class public Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;
.super Lcom/apk/f6;
.source "MyAccountActivity.java"


# instance fields
.field public do:Lcom/apk/g5;

.field public if:Ljava/io/File;

.field public mBandUserInfoTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c0
    .end annotation
.end field

.field public mCompleInfoTitleTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c2
    .end annotation
.end field

.field public mEmailTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09022a
    .end annotation
.end field

.field public mHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09022e
    .end annotation
.end field

.field public mLoginNameTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090231
    .end annotation
.end field

.field public mNickNameTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090232
    .end annotation
.end field

.field public mPhoneTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c3
    .end annotation
.end field

.field public mUpdatePasswordBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c5
    .end annotation
.end field

.field public mUpdatePasswordTitleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->o()V

    return-void
.end method

.method public static j(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/yu;

    invoke-direct {v0, p0}, Lcom/apk/yu;-><init>(Landroid/app/Activity;)V

    .line 2
    sget-object v1, Lcom/apk/wu;->do:[Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/yu;->if([Ljava/lang/String;)Lcom/apk/yu;

    new-instance v1, Lcom/apk/d8;

    invoke-direct {v1, p0}, Lcom/apk/d8;-><init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/apk/yu;->for(Lcom/apk/vu;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static k(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/yu;

    invoke-direct {v0, p0}, Lcom/apk/yu;-><init>(Landroid/app/Activity;)V

    const-string v1, "android.permission.CAMERA"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/yu;->if([Ljava/lang/String;)Lcom/apk/yu;

    new-instance v1, Lcom/apk/e8;

    invoke-direct {v1, p0}, Lcom/apk/e8;-><init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/apk/yu;->for(Lcom/apk/vu;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static l(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static m(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V
    .locals 5

    if-eqz p0, :cond_4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v1

    .line 2
    iget-object v2, v1, Lcom/apk/a6;->new:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "image"

    .line 3
    invoke-virtual {v1, v2}, Lcom/apk/a6;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/apk/a6;->new:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v1, v1, Lcom/apk/a6;->new:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->if:Ljava/io/File;

    .line 10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x18

    const-string v3, "output"

    if-lt v1, v2, :cond_3

    .line 12
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->if:Ljava/io/File;

    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->if:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_4
    const/4 p0, 0x0

    .line 17
    throw p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0047

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/w0;->import()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/CircleImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;

    const v1, 0x7f08034e

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/CircleImageView;->setImageResource(I)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->n()V

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->p()V

    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f0903be

    const v1, 0x7f100218

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    .line 2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/apk/continue;->do:Lcom/apk/gf;

    sget-object v1, Lcom/apk/gf;->do:Lcom/apk/gf;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->else()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x7f0903c8

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_2
    invoke-virtual {p0, p0}, Lcom/apk/f6;->registerEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0903bf,
            0x7f0903c6,
            0x7f09022f,
            0x7f0903c1,
            0x7f0903c8,
            0x7f090233
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
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/biquge/ebook/app/ui/activity/SecurityCenterActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/ForgetPasswordActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "title"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 7
    :sswitch_2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->catch()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x0

    const p1, 0x7f100185

    .line 8
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const p1, 0x7f1003cc

    .line 9
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity$do;

    invoke-direct {v4, p0}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    new-instance v5, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity$if;

    invoke-direct {v5, p0}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 10
    invoke-static/range {v0 .. v7}, Lcom/apk/eg;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Lcom/apk/et;Z)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->o()V

    goto :goto_0

    .line 12
    :sswitch_3
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->class()Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    invoke-static {p0}, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;->j(Landroid/content/Context;)V

    goto :goto_0

    .line 14
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/biquge/ebook/app/ui/activity/ChangePhoneActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    const-string p1, "SP_USER_AUDIT_NICKNAME_KEY"

    .line 16
    invoke-static {p1, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f1002ef

    .line 17
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    :cond_3
    const/16 p1, 0x66

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/SetNickNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_5
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const v2, 0x7f1002f5

    .line 20
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 21
    new-instance v1, Lcom/apk/zu$do;

    invoke-direct {v1, p0}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/apk/c8;

    invoke-direct {v2, p0}, Lcom/apk/c8;-><init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    .line 22
    invoke-virtual {v1, v0, p1, v2}, Lcom/apk/zu$do;->do(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/apk/xv;)Lcom/lxj/xpopup/impl/BottomListPopupView;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09022f -> :sswitch_5
        0x7f090233 -> :sswitch_4
        0x7f0903bf -> :sswitch_3
        0x7f0903c1 -> :sswitch_2
        0x7f0903c6 -> :sswitch_1
        0x7f0903c8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final n()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->else()Lcom/biquge/ebook/app/bean/User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mLoginNameTView:Landroid/widget/TextView;

    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apk/v0;->new()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mPhoneTxt:Landroid/widget/TextView;

    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v3

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/apk/v0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mNickNameTView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mEmailTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09022c

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09022b

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->class()Z

    move-result v0

    const/4 v2, 0x4

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mCompleInfoTitleTxt:Landroid/widget/TextView;

    const v3, 0x7f1003c0

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mBandUserInfoTxt:Landroid/widget/TextView;

    const v3, 0x7f1003c2

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mCompleInfoTitleTxt:Landroid/widget/TextView;

    const v3, 0x7f1003c8

    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mBandUserInfoTxt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mPhoneTxt:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mPhoneTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :goto_0
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->catch()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mUpdatePasswordTitleTv:Landroid/widget/TextView;

    const v2, 0x7f1003cb

    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mUpdatePasswordBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mUpdatePasswordTitleTv:Landroid/widget/TextView;

    const v1, 0x7f1003cd

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mUpdatePasswordBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final o()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->do:Lcom/apk/g5;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/g5;

    invoke-direct {v0, p0, v1}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->do:Lcom/apk/g5;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->do:Lcom/apk/g5;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    new-instance v2, Lcom/apk/zu$do;

    iget-object v1, v0, Lcom/apk/p1;->do:Landroid/app/Activity;

    invoke-direct {v2, v1}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/apk/c5;

    invoke-direct {v1, v0}, Lcom/apk/c5;-><init>(Lcom/apk/g5;)V

    .line 5
    iget-object v3, v2, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v1, v3, Lcom/apk/lv;->throw:Lcom/apk/yv;

    const v1, 0x7f10032b

    .line 6
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1001a6

    .line 7
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/apk/b5;

    invoke-direct {v5, v0}, Lcom/apk/b5;-><init>(Lcom/apk/g5;)V

    const/4 v6, 0x0

    const v7, 0x7f0c00a1

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/apk/zu$do;->else(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/apk/uv;Lcom/apk/sv;I)Lcom/lxj/xpopup/impl/ConfirmPopupView;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/g5;->new:Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 11
    :cond_1
    throw v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->n()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x44e

    if-nez p1, :cond_2

    if-ne p2, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->if:Ljava/io/File;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->if:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 6
    const-class p3, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;

    invoke-virtual {p2, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 11
    const-class p3, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;

    invoke-virtual {p2, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    if-ne p2, v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->p()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/f6;->unRegisterEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v0, "login_action"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->n()V

    goto :goto_0

    :cond_1
    const-string v0, "EVENT_COMPLE_USERINFO_KEY"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->n()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;

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
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->mHeadView:Lcom/biquge/ebook/app/widget/CircleImageView;

    invoke-static {v0, v1}, Lcom/apk/u;->throws(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method
