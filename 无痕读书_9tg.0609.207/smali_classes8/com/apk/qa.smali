.class public abstract Lcom/apk/qa;
.super Lcom/apk/g6;
.source "BaseShelfFragment.java"


# instance fields
.field public do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/biquge/ebook/app/bean/MhtgTwoBean;ZI)V
    .locals 9

    const v0, 0x7f090219

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    iput-object v1, p0, Lcom/apk/qa;->do:Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getPgname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getApkurl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getTips2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getTips()Ljava/lang/String;

    move-result-object v8

    move v3, p2

    move v4, p3

    .line 4
    invoke-virtual/range {v1 .. v8}, Lcom/biquge/ebook/app/ui/view/MhtgDownloadLayout;->if(ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initData()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initData()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/qa;->synchronized()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOURCE_NOVEL_VALUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const-string v2, ","

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    const-string v0, "SP_XSTG2_SHOW_DATE_DAYS_KEY"

    const-string v5, "SP_XSTG2_SHOW_MANDATOR_KEY"

    .line 3
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v6

    .line 4
    iget-object v6, v6, Lcom/apk/continue;->break:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    if-eqz v6, :cond_b

    .line 5
    :try_start_0
    invoke-static {v5, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6
    invoke-virtual {p0, v6, v3, v4}, Lcom/apk/qa;->a(Lcom/biquge/ebook/app/bean/MhtgTwoBean;ZI)V

    goto/16 :goto_2

    :cond_0
    const-string v7, "SP_XSTG2_SHELF_SHOW_DIALOG_KEY"

    .line 7
    invoke-static {v7, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "SP_XSTG2_SHOW_DATE_KEY"

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v7

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/apk/kg;->do(JJ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 10
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMoredays()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMoredays()I

    move-result v8

    if-ge v7, v8, :cond_1

    goto/16 :goto_2

    .line 11
    :cond_1
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMaxdays()I

    move-result v8

    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMoredays()I

    move-result v9

    sub-int/2addr v7, v9

    sub-int/2addr v8, v7

    if-gtz v8, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_3

    .line 12
    invoke-virtual {p0, v6, v3, v8}, Lcom/apk/qa;->a(Lcom/biquge/ebook/app/bean/MhtgTwoBean;ZI)V

    .line 13
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v5, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 14
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SP_XSTG2_ONEDAY_SHOW_COUNT_KEY"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-static {v5, v4}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v7

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 19
    invoke-virtual {p0, v6, v4, v8}, Lcom/apk/qa;->a(Lcom/biquge/ebook/app/bean/MhtgTwoBean;ZI)V

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v5, v3}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 23
    :cond_4
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getShowcounts()I

    move-result v0

    if-ge v7, v0, :cond_b

    .line 24
    invoke-virtual {p0, v6, v4, v8}, Lcom/apk/qa;->a(Lcom/biquge/ebook/app/bean/MhtgTwoBean;ZI)V

    add-int/2addr v7, v3

    .line 25
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v5, v7}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_5
    const-string v0, "SP_MHTG2_SHOW_DATE_DAYS_KEY"

    const-string v5, "SP_MHTG2_SHOW_MANDATOR_KEY"

    .line 27
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v6

    .line 28
    iget-object v6, v6, Lcom/apk/continue;->this:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    if-eqz v6, :cond_b

    .line 29
    :try_start_1
    invoke-static {v5, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 30
    invoke-virtual {p0, v6, v3, v4}, Lcom/apk/qa;->a(Lcom/biquge/ebook/app/bean/MhtgTwoBean;ZI)V

    goto/16 :goto_2

    :cond_6
    const-string v7, "SP_MHTG2_SHELF_SHOW_DIALOG_KEY"

    .line 31
    invoke-static {v7, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "SP_MHTG2_SHOW_DATE_KEY"

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v7

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/apk/kg;->do(JJ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 34
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMoredays()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMoredays()I

    move-result v8

    if-ge v7, v8, :cond_7

    goto/16 :goto_2

    .line 35
    :cond_7
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMaxdays()I

    move-result v8

    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getMoredays()I

    move-result v9

    sub-int/2addr v7, v9

    sub-int/2addr v8, v7

    if-gtz v8, :cond_8

    const/4 v7, 0x1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_9

    .line 36
    invoke-virtual {p0, v6, v3, v8}, Lcom/apk/qa;->a(Lcom/biquge/ebook/app/bean/MhtgTwoBean;ZI)V

    .line 37
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v5, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 38
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SP_MHTG2_ONEDAY_SHOW_COUNT_KEY"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-static {v5, v4}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v7

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 43
    invoke-virtual {p0, v6, v4, v8}, Lcom/apk/qa;->a(Lcom/biquge/ebook/app/bean/MhtgTwoBean;ZI)V

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v5, v3}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 47
    :cond_a
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getShowcounts()I

    move-result v0

    if-ge v7, v0, :cond_b

    .line 48
    invoke-virtual {p0, v6, v4, v8}, Lcom/apk/qa;->a(Lcom/biquge/ebook/app/bean/MhtgTwoBean;ZI)V

    add-int/2addr v7, v3

    .line 49
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v5, v7}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_2
    return-void
.end method

.method public initView()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initView()V

    return-void
.end method

.method public abstract synchronized()Ljava/lang/String;
.end method
