.class public Lcom/biquge/ebook/app/ui/activity/TestActivity;
.super Lcom/apk/f6;
.source "TestActivity.java"


# instance fields
.field public mDeviceInfoTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090543
    .end annotation
.end field

.field public mGdtAdLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090075
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/jni/crypt/project/CryptDesManager;->encodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0057

    return v0
.end method

.method public initData()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initData()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/f6;->registerEventBus(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u54c1\u724c\uff1a"

    .line 4
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/apk/ys;->if()Lcom/apk/qt;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/apk/qt;->else:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u578b\u53f7\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ys;->if()Lcom/apk/qt;

    move-result-object v3

    .line 9
    iget-object v3, v3, Lcom/apk/qt;->case:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7cfb\u7edf\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ys;->if()Lcom/apk/qt;

    move-result-object v3

    .line 13
    iget-object v3, v3, Lcom/apk/qt;->try:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u662f\u5426\u9e3f\u8499\u7cfb\u7edf\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ze;->F()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Lcom/apk/ze;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\u9e3f\u8499\u7248\u672c\u540d\u79f0\uff1a"

    .line 19
    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :try_start_0
    const-string v3, "com.huawei.system.BuildEx"

    .line 20
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getOsBrand"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 21
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, ""

    .line 23
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9e3f\u8499\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/ze;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/TestActivity;->mDeviceInfoTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initView()V

    const v0, 0x7f09006a

    const-string v1, "\u6d4b\u8bd5\u9875\u9762"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09039e,
            0x7f090077,
            0x7f090092,
            0x7f090095,
            0x7f090091,
            0x7f090543,
            0x7f090559,
            0x7f090558,
            0x7f0903eb
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f09039e

    if-ne v0, v2, :cond_0

    const/16 p1, 0x64

    const-string v0, "1234567890"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090077

    if-ne v0, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/apk/f6;->showPopupLoading()V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090092

    if-ne v0, v2, :cond_2

    goto/16 :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090095

    if-ne v0, v2, :cond_3

    const-string p1, "SP_VIDEO_FREE_AD_KEY"

    .line 7
    invoke-static {p1}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "aa"

    .line 8
    invoke-static {p0, p1, v0}, Lcom/apk/kf;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090091

    if-ne v0, v2, :cond_4

    const-string p1, "FromShare#"

    .line 10
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/apk/w0;->class()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/ze;->class(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090543

    if-ne v0, v2, :cond_5

    const-string p1, "5A:D8:CE:CC:E8:15:26:5A:1A:AE:69:F1:DD:AC:60:FE"

    .line 12
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity;->i(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "15:5C:49:F2:14:04:9C:4E:80:11:45:22:0D:84:E6:FA"

    .line 13
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity;->i(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "A4:4C:FA:F1:3A:2C:AA:11:A6:F6:EA:F7:B4:E2:5B:CD"

    .line 14
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity;->i(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "74:5B:59:0A:F0:C9:C7:D8:A7:D0:5C:7D:49:AC:B5:B5"

    .line 15
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity;->i(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "F1:BD:D9:28:48:9A:DA:6D:FA:08:62:AB:75:B6:DD:84"

    .line 16
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity;->i(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "40:B8:28:27:EE:EC:6D:7A:91:3B:79:C5:00:B3:33:E4"

    .line 17
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/TestActivity;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    invoke-static {v1}, Lcom/swl/gg/sdk/TrAdSdk;->setDayNightTheme(Z)V

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090559

    if-ne v0, v1, :cond_6

    const-string p1, "tgver9#{\"id\":\"519138\",\"istop\":false,\"name\":\"\u6218\u795e\u72fc\u5a7f\",\"author\":\"\u5929\u8695\u571f\u8c46\",\"cid\":\"to_read\"}"

    .line 20
    invoke-static {p1}, Lcom/apk/ze;->class(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090558

    if-ne v0, v1, :cond_7

    .line 22
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance v0, Ljava/io/File;

    const-string v1, "aaaab.txt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 26
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x400

    move/from16 v2, p1

    if-ne v2, v1, :cond_5

    const/4 v1, -0x1

    move/from16 v2, p2

    if-ne v2, v1, :cond_5

    .line 2
    sget-object v3, Lcom/apk/r50$if;->do:Lcom/apk/r50;

    .line 3
    iget-object v1, v3, Lcom/apk/r50;->goto:Lcom/qq/e/ads/splash/SplashAD;

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v4, 0x1020002

    .line 5
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/view/ViewGroup;

    new-instance v4, Lcom/biquge/ebook/app/ui/activity/TestActivity$do;

    invoke-direct {v4, v0, v1}, Lcom/biquge/ebook/app/ui/activity/TestActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/TestActivity;Lcom/qq/e/ads/splash/SplashAD;)V

    const/4 v1, 0x0

    if-eqz v2, :cond_5

    if-nez v6, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    iget-object v5, v3, Lcom/apk/r50;->goto:Lcom/qq/e/ads/splash/SplashAD;

    if-eqz v5, :cond_5

    iget-object v5, v3, Lcom/apk/r50;->this:Landroid/view/View;

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x2

    new-array v7, v5, [I

    .line 7
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 8
    iget-object v8, v3, Lcom/apk/r50;->class:[I

    const/4 v9, 0x0

    aget v10, v8, v9

    aget v11, v7, v9

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    .line 9
    aget v8, v8, v11

    aget v7, v7, v11

    sub-int/2addr v8, v7

    .line 10
    iget-object v7, v3, Lcom/apk/r50;->this:Landroid/view/View;

    invoke-static {v7}, Lcom/apk/r50;->case(Landroid/view/View;)V

    .line 11
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v12, v3, Lcom/apk/r50;->break:I

    iget v13, v3, Lcom/apk/r50;->catch:I

    invoke-direct {v7, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12
    iget-object v12, v3, Lcom/apk/r50;->this:Landroid/view/View;

    invoke-virtual {v2, v12, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v7, v3, Lcom/apk/r50;->this:Landroid/view/View;

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setX(F)V

    .line 14
    iget-object v7, v3, Lcom/apk/r50;->this:Landroid/view/View;

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    .line 15
    iget-object v7, v3, Lcom/apk/r50;->this:Landroid/view/View;

    .line 16
    iput-object v1, v3, Lcom/apk/r50;->goto:Lcom/qq/e/ads/splash/SplashAD;

    .line 17
    iput-object v1, v3, Lcom/apk/r50;->this:Landroid/view/View;

    if-eqz v7, :cond_5

    .line 18
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v8, v5, [I

    .line 19
    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 20
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 21
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 22
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    .line 23
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    if-nez v12, :cond_2

    .line 24
    iget v12, v3, Lcom/apk/r50;->const:I

    :cond_2
    if-nez v13, :cond_3

    .line 25
    iget v13, v3, Lcom/apk/r50;->final:I

    .line 26
    :cond_3
    iget v14, v3, Lcom/apk/r50;->if:I

    int-to-float v15, v14

    int-to-float v11, v5

    div-float/2addr v15, v11

    .line 27
    iget v11, v3, Lcom/apk/r50;->for:I

    int-to-float v9, v11

    int-to-float v0, v10

    div-float/2addr v9, v0

    .line 28
    iget v0, v3, Lcom/apk/r50;->case:I

    if-nez v0, :cond_4

    iget v0, v3, Lcom/apk/r50;->new:I

    goto :goto_0

    :cond_4
    iget v0, v3, Lcom/apk/r50;->new:I

    sub-int/2addr v12, v0

    sub-int v0, v12, v14

    :goto_0
    int-to-float v0, v0

    .line 29
    iget v12, v3, Lcom/apk/r50;->try:I

    sub-int/2addr v13, v12

    sub-int/2addr v13, v11

    int-to-float v11, v13

    const/4 v12, 0x0

    .line 30
    aget v12, v8, v12

    const/4 v13, 0x1

    aget v12, v8, v13

    .line 31
    invoke-static {v7}, Lcom/apk/r50;->case(Landroid/view/View;)V

    .line 32
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v5, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {v2, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    new-instance v10, Lcom/apk/q50;

    iget v2, v3, Lcom/apk/r50;->new:I

    invoke-direct {v10, v1, v2}, Lcom/apk/q50;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 35
    invoke-virtual {v7, v1}, Landroid/view/View;->setPivotX(F)V

    .line 36
    invoke-virtual {v7, v1}, Landroid/view/View;->setPivotY(F)V

    .line 37
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 38
    invoke-virtual {v2, v15}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 41
    invoke-virtual {v2, v11}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 42
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, v3, Lcom/apk/r50;->else:I

    int-to-long v12, v2

    .line 43
    invoke-virtual {v1, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v12, Lcom/apk/s50;

    move-object v2, v12

    move-object v5, v7

    move v7, v0

    move v9, v11

    invoke-direct/range {v2 .. v10}, Lcom/apk/s50;-><init>(Lcom/apk/r50;Lcom/apk/r50$do;Landroid/view/View;Landroid/view/ViewGroup;F[IFLandroid/view/ViewGroup;)V

    .line 44
    invoke-virtual {v1, v12}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_5
    :goto_1
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
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v1, "login_action"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object p1, p1, Lcom/apk/mf;->for:[Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 5
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
