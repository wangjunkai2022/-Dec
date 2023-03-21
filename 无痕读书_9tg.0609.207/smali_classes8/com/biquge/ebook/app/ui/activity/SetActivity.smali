.class public Lcom/biquge/ebook/app/ui/activity/SetActivity;
.super Lcom/apk/f6;
.source "SetActivity.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/SwitchButton$new;
.implements Lcom/apk/p$new;
.implements Lcom/apk/rz;


# static fields
.field public static final new:[J


# instance fields
.field public do:Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;

.field public for:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

.field public if:Z

.field public mBookCacheSizeTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c9
    .end annotation
.end field

.field public mComicCacheSizeTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ca
    .end annotation
.end field

.field public mNightDayTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090256
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 1
    sput-object v0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->new:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static i(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/m8;

    invoke-direct {v1, p0}, Lcom/apk/m8;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static j(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/n8;

    invoke-direct {v1, p0}, Lcom/apk/n8;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static k(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/o8;

    invoke-direct {v1, p0}, Lcom/apk/o8;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static l(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/apk/x6;

    invoke-direct {v1, p0}, Lcom/apk/x6;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    .line 2
    iget-object p0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 4
    throw p0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->super:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this(Z)V

    .line 4
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->break:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 6
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->break:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public for()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/f6;->hideBaseLoading()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0053

    return v0
.end method

.method public goto()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/f6;->showBaseLoading()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_0
    return-void
.end method

.method public initData()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/da;->while()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/SetActivity;->m(Z)V

    return-void
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f0904c5

    const v1, 0x7f1002f7

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    const v0, 0x7f0904d3

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "v"

    .line 3
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/apk/ze;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_0

    const v0, 0x7f090069

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f090137

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/SwitchButton;

    const/4 v2, 0x1

    const-string v3, "SP_APP_DARK_THEME_SWITCH_KEY"

    .line 8
    invoke-static {v3, v2}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/widget/SwitchButton;->setChecked(Z)V

    .line 9
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/biquge/ebook/app/widget/SwitchButton$new;)V

    .line 10
    :goto_0
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v2, Lcom/apk/x6;

    invoke-direct {v2, p0}, Lcom/apk/x6;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    .line 11
    iget-object v0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 15
    sget-object v2, Lcom/apk/hf;->do:Lcom/apk/hf;

    if-ne v0, v2, :cond_2

    const v0, 0x7f090159

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 19
    sget-object v2, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v0, v2, :cond_3

    const v0, 0x7f090158

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public instanceof()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    if-eqz v1, :cond_0

    const v2, 0x7f100326

    .line 3
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->break:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 6
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->break:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final m(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->mNightDayTView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v1, 0x7f100026

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f100027

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->mNightDayTView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const p1, 0x7f080116

    goto :goto_1

    :cond_1
    const p1, 0x7f08011e

    :goto_1
    const v1, 0x7f080292

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090255,
            0x7f0904c8,
            0x7f0904c4,
            0x7f0904c6,
            0x7f090158,
            0x7f090159,
            0x7f09015a,
            0x7f090082,
            0x7f0904cc,
            0x7f090256
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 2
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/biquge/ebook/app/ui/activity/SkinActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x65

    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 4
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 6
    :sswitch_2
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object p1

    .line 7
    iput-object p0, p1, Lcom/apk/p;->try:Lcom/apk/p$new;

    .line 8
    invoke-virtual {p1, v1}, Lcom/apk/p;->if(Z)V

    goto/16 :goto_2

    .line 9
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/biquge/ebook/app/ui/activity/AbountActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 10
    :sswitch_4
    invoke-static {}, Lcom/apk/da;->while()Z

    move-result p1

    .line 11
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->do:Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;

    if-nez v2, :cond_0

    const v2, 0x7f090483

    .line 12
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 13
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;

    iput-object v2, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->do:Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;

    :cond_0
    if-eqz p1, :cond_3

    .line 14
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->do:Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;->for(IZ)V

    const-string v2, "APP_SKIN_STYLE_KEY"

    .line 15
    invoke-static {v2, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 16
    sget-object v2, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, ""

    .line 17
    invoke-virtual {v2, v5, v3, v4}, Lcom/apk/yp0;->for(Ljava/lang/String;Lcom/apk/yp0$if;I)Landroid/os/AsyncTask;

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lcom/apk/ze;->i()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/SkinModel;

    if-eqz v2, :cond_2

    .line 19
    sget-object v3, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 20
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SkinModel;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/apk/yp0;->if(Ljava/lang/String;I)Landroid/os/AsyncTask;

    .line 21
    :cond_2
    :goto_0
    sget-object v2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 22
    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/app/AppContext;->for(Z)V

    goto :goto_1

    .line 23
    :cond_3
    sget-object v0, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 24
    new-instance v2, Lcom/apk/l8;

    invoke-direct {v2, p0, p1}, Lcom/apk/l8;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;Z)V

    const-string v3, "night"

    invoke-virtual {v0, v3, v2, v1}, Lcom/apk/yp0;->for(Ljava/lang/String;Lcom/apk/yp0$if;I)Landroid/os/AsyncTask;

    :goto_1
    xor-int/lit8 v0, p1, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/SetActivity;->m(Z)V

    xor-int/2addr p1, v1

    .line 26
    invoke-static {p1}, Lcom/apk/da;->finally(Z)V

    goto :goto_2

    .line 27
    :sswitch_5
    sget-object p1, Lcom/apk/hf;->do:Lcom/apk/hf;

    const v0, 0x7f1001d2

    .line 28
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {p0, p1, v0}, Lcom/apk/w0;->case(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_6
    const p1, 0x7f10031b

    .line 30
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/biquge/ebook/app/ui/activity/SetActivity$for;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/SetActivity$for;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {p0, p0, p1, v0}, Lcom/apk/f6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;)V

    goto :goto_2

    :sswitch_7
    const p1, 0x7f10031a

    .line 31
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/biquge/ebook/app/ui/activity/SetActivity$if;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/SetActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {p0, p0, p1, v0}, Lcom/apk/f6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;)V

    goto :goto_2

    :sswitch_8
    const p1, 0x7f10031c

    .line 32
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/biquge/ebook/app/ui/activity/SetActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/SetActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    invoke-virtual {p0, p0, p1, v0}, Lcom/apk/f6;->showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;)V

    goto :goto_2

    .line 33
    :sswitch_9
    sget-object p1, Lcom/biquge/ebook/app/ui/activity/SetActivity;->new:[J

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    sget-object p1, Lcom/biquge/ebook/app/ui/activity/SetActivity;->new:[J

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, p1, v2

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-object p1, Lcom/biquge/ebook/app/ui/activity/SetActivity;->new:[J

    aget-wide v4, p1, v0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gtz p1, :cond_5

    .line 36
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->if:Z

    if-eqz p1, :cond_4

    goto :goto_2

    .line 37
    :cond_4
    iput-boolean v1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->if:Z

    .line 38
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/biquge/ebook/app/ui/activity/DeviceActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x4a8

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090082 -> :sswitch_9
        0x7f090158 -> :sswitch_8
        0x7f090159 -> :sswitch_7
        0x7f09015a -> :sswitch_6
        0x7f090255 -> :sswitch_5
        0x7f090256 -> :sswitch_4
        0x7f0904c4 -> :sswitch_3
        0x7f0904c6 -> :sswitch_2
        0x7f0904c8 -> :sswitch_1
        0x7f0904cc -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic n()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/apk/n2;->instanceof()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 4
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->isLocalBook()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/ze;->package(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    invoke-static {v0, v1}, Lcom/apk/ze;->throws(J)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {p0}, Lcom/apk/mu;->switch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v2, Lcom/apk/k8;

    invoke-direct {v2, p0, v0, v1}, Lcom/apk/k8;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x4a8

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->if:Z

    goto :goto_0

    :cond_0
    const/16 p2, 0x65

    if-ne p1, p2, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/da;->while()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/activity/SetActivity;->m(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Lcom/biquge/ebook/app/widget/SwitchButton;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090137

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_APP_DARK_THEME_SWITCH_KEY"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    .line 3
    invoke-static {p2}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 4
    invoke-static {p1}, Lcom/apk/ze;->interface(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    sget-object p2, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    const/4 v0, 0x0

    const-string v1, "night"

    .line 6
    invoke-virtual {p2, v1, v0, p1}, Lcom/apk/yp0;->for(Ljava/lang/String;Lcom/apk/yp0$if;I)Landroid/os/AsyncTask;

    .line 7
    invoke-static {p1}, Lcom/apk/da;->finally(Z)V

    .line 8
    sget-object p2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 9
    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/app/AppContext;->for(Z)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    const/4 p2, 0x0

    const-string v0, "APP_SKIN_STYLE_KEY"

    .line 11
    invoke-static {v0, p2}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    .line 12
    invoke-static {}, Lcom/apk/ze;->i()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/SkinModel;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SkinModel;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    sget-object v1, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 15
    invoke-virtual {v1, v0, p1}, Lcom/apk/yp0;->if(Ljava/lang/String;I)Landroid/os/AsyncTask;

    .line 16
    invoke-static {p2}, Lcom/apk/da;->finally(Z)V

    .line 17
    sget-object p1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const-string p2, "black"

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/app/AppContext;->for(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/apk/p;->try:Lcom/apk/p$new;

    return-void
.end method

.method public onProgress(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/apk/ze;->return(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setState(I)V

    .line 5
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    long-to-int p4, p3

    invoke-virtual {v1, p4}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setMaxProgress(I)V

    .line 6
    iget-object p3, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->this:Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    long-to-float p1, p1

    invoke-virtual {p3, p1}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setProgress(F)V

    .line 7
    :cond_0
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->break:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;->break:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static(Lcom/biquge/ebook/app/bean/NewVersionBean;)V
    .locals 2

    if-eqz p1, :cond_5

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    invoke-direct {v0, p0, p1}, Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;-><init>(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/NewVersionBean;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    .line 2
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    iput-object v1, v0, Lcom/apk/lv;->if:Ljava/lang/Boolean;

    .line 5
    new-instance v1, Lcom/biquge/ebook/app/ui/activity/SetActivity$new;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/SetActivity$new;-><init>(Lcom/biquge/ebook/app/ui/activity/SetActivity;)V

    .line 6
    iput-object v1, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->isForce_user()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 8
    iput-object p1, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/SetActivity;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradePopupView;

    .line 10
    instance-of v1, p1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v1, :cond_0

    .line 11
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 12
    iput-boolean v1, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v1, :cond_1

    .line 14
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 15
    iput-boolean v1, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 16
    :cond_1
    instance-of v1, p1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v1, :cond_2

    .line 17
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean v1, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 19
    :cond_2
    instance-of v1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v1, :cond_3

    .line 20
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean v1, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 22
    :cond_3
    instance-of v1, p1, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz v1, :cond_4

    .line 23
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 24
    iput-boolean v1, v0, Lcom/apk/lv;->continue:Z

    .line 25
    :cond_4
    :goto_0
    iput-object v0, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 26
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_5
    return-void
.end method
