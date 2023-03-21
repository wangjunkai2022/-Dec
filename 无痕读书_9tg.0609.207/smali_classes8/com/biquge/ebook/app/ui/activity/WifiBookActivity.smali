.class public Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;
.super Lcom/apk/f6;
.source "WifiBookActivity.java"


# instance fields
.field public do:Z

.field public mAdressTxtView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090659
    .end annotation
.end field

.field public mStateTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09065b
    .end annotation
.end field

.field public mWifiNameTxtView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09065a
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
.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->finish()V

    .line 2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;->do:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/ze;->V()V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0062

    return v0
.end method

.method public initData()V
    .locals 8

    const-string v0, "wifi"

    const-string v1, ""

    const/4 v2, 0x1

    .line 1
    :try_start_0
    sget-object v3, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 2
    invoke-virtual {v3, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 3
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "<unknown ssid>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    :cond_1
    sget-object v4, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const-string v5, "connectivity"

    .line 7
    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v4, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 10
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v1

    .line 11
    :cond_2
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_3

    const-string v4, "\""

    .line 12
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;->mWifiNameTxtView:Landroid/widget/TextView;

    const v6, 0x7f100413

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    invoke-static {v6, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;->mWifiNameTxtView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;->mWifiNameTxtView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    :goto_2
    sget-object v2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 17
    invoke-virtual {v2, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;->mStateTextView:Landroid/widget/TextView;

    const v2, 0x7f100416

    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;->mAdressTxtView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ci;->do()I

    const/16 v1, 0x1f90

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    sget-object v0, Lcom/apk/fi;->else:Lcom/apk/fi;

    if-nez v0, :cond_5

    .line 23
    new-instance v0, Lcom/apk/fi;

    invoke-direct {v0, v1}, Lcom/apk/fi;-><init>(I)V

    sput-object v0, Lcom/apk/fi;->else:Lcom/apk/fi;

    .line 24
    :cond_5
    sget-object v0, Lcom/apk/fi;->else:Lcom/apk/fi;

    .line 25
    sput-object v0, Lcom/apk/ei;->do:Lcom/apk/fi;

    .line 26
    :try_start_1
    invoke-virtual {v0}, Lcom/apk/di;->for()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;->mStateTextView:Landroid/widget/TextView;

    const v1, 0x7f100414

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09065c

    .line 29
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f090658

    const v1, 0x7f10019d

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;->mAdressTxtView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    invoke-virtual {p0, p0}, Lcom/apk/f6;->registerEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/apk/ei;->if:Z

    if-eqz v0, :cond_0

    const v0, 0x7f100412

    .line 2
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/apk/ze;->b0(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->onDestroy()V

    .line 2
    sget-object v0, Lcom/apk/ei;->do:Lcom/apk/fi;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/apk/di;->for:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 4
    iget-object v0, v0, Lcom/apk/di;->new:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0, p0}, Lcom/apk/f6;->unRegisterEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v1, "WIFI_TRANSFER_FILE_KEY"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/WifiBookActivity;->do:Z

    .line 4
    iget-object p1, p1, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f10001f

    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
