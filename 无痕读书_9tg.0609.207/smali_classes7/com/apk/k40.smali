.class public Lcom/apk/k40;
.super Ljava/lang/Object;
.source "SwlAdSdk.java"


# static fields
.field public static case:Z

.field public static do:Lcom/apk/r40;

.field public static for:Z

.field public static if:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static new:Z

.field public static try:Ljava/lang/ref/SoftReference;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static abstract(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "gdtjlsp"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gdtjlsp2.0"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static break(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs case(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tr/comment/sdk/TrCommentSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static catch(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "^[1][0-9][0-9]{9}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static class(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "csjsp"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "csjnewcp"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "csjnewsp"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static const(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/apk/k40;->for:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/apk/k40;->for:Z

    .line 4
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/qq/e/comm/managers/GDTAdSdk;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static continue()Landroid/app/Application;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/k40;->do:Lcom/apk/r40;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Lcom/apk/y;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    return-object v0

    :cond_0
    throw v1

    :cond_1
    return-object v1
.end method

.method public static default(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "gdtsp"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gdt2.0"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gdt2.0f"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gdtfull"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static do(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tr/comment/sdk/TrCommentSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0, p0}, Lcom/apk/k40;->if(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static else(J)Ljava/lang/String;
    .locals 19

    move-wide/from16 v0, p0

    const-string v2, "-"

    const-string v3, ""

    .line 1
    :try_start_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 2
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 3
    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v6

    .line 4
    invoke-virtual {v4}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x3c

    if-gez v4, :cond_0

    .line 5
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v6

    .line 6
    invoke-virtual {v5, v4}, Ljava/util/Date;->setHours(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, -0x8

    sub-int/2addr v6, v4

    .line 7
    invoke-virtual {v5, v6}, Ljava/util/Date;->setHours(I)V

    .line 8
    :goto_0
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    long-to-float v4, v4

    .line 9
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    int-to-long v4, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    const-string v6, "\u524d"

    goto :goto_1

    :cond_1
    const-string v6, "\u540e"

    .line 10
    :goto_1
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-string v7, "\u5e74"

    const-string v8, "\u4e2a\u6708"

    const-string v9, "\u661f\u671f"

    const-string v10, "\u5929"

    const-string v11, "\u5c0f\u65f6"

    const-string v12, "\u5206\u949f"

    const-string v13, "\u79d2"

    .line 11
    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    new-array v9, v8, [J

    const-wide/32 v10, 0x1e13380

    const/4 v12, 0x0

    aput-wide v10, v9, v12

    const-wide/32 v10, 0x278d00

    const/4 v13, 0x1

    aput-wide v10, v9, v13

    const-wide/32 v10, 0x93a80

    const/4 v14, 0x2

    aput-wide v10, v9, v14

    const-wide/32 v10, 0x15180

    const/4 v15, 0x3

    aput-wide v10, v9, v15

    const/4 v10, 0x4

    const-wide/16 v16, 0xe10

    aput-wide v16, v9, v10

    const-wide/16 v10, 0x3c

    const/4 v12, 0x5

    aput-wide v10, v9, v12

    const/4 v10, 0x6

    const-wide/16 v17, 0x1

    aput-wide v17, v9, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 12
    :try_start_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 13
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 14
    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 15
    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v13

    .line 16
    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v12, 0xb

    .line 17
    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v14, 0xc

    .line 18
    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 19
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 20
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    if-ge v11, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 21
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_4
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v8, :cond_b

    .line 22
    aget-wide v10, v9, v12

    div-long v10, v4, v10

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    double-to-int v2, v10

    if-eqz v2, :cond_a

    if-gt v12, v13, :cond_3

    move-object v10, v1

    goto :goto_6

    :cond_3
    if-gt v12, v15, :cond_4

    move-object v10, v0

    goto :goto_6

    :cond_4
    const/4 v10, 0x0

    :goto_6
    const-string v0, "  "

    if-ne v12, v15, :cond_8

    if-ne v2, v13, :cond_6

    .line 23
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6628\u5929"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_5
    move-object v0, v3

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v11, 0x2

    if-ne v2, v11, :cond_8

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u524d\u5929"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, v3

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 25
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-object v2, v7, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_9
    move-object v0, v3

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-object v0

    :cond_a
    const/4 v11, 0x2

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    :catch_2
    :cond_b
    return-object v3
.end method

.method public static extends()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "connectivity"

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lcom/apk/k40;->try:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 4
    sget-object v0, Lcom/apk/k40;->try:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 5
    :cond_3
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, ""

    .line 6
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 9
    new-instance p0, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/apk/k40;->try:Ljava/lang/ref/SoftReference;

    return-void

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u8bf7\u4e0d\u8981\u5728\u5b50\u7ebf\u7a0b\u4e2d\u505a\u5f39\u7a97\u64cd\u4f5c"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static finally(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "gdt"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gdt2.0"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static for(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget v1, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_shape_list_division_line_night:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_shape_list_division_line:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-object v0
.end method

.method public static goto(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "rT84U8Eerdb99rtsTXWSILDO"

    const-string v1, "SK4bnAVu"

    const-string v2, "UTF-8"

    .line 1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v3, "DESede"

    .line 2
    new-instance v4, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v4, v0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 3
    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v3, "desede/CBC/PKCS5Padding"

    .line 5
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 6
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v1, 0x2

    .line 7
    invoke-virtual {v3, v1, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    :catch_0
    return-object p0
.end method

.method public static if(Landroid/content/Context;I)I
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static import(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "rT84U8Eerdb99rtsTXWSILDO"

    const-string v1, "SK4bnAVu"

    const-string v2, "UTF-8"

    .line 1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v3, "DESede"

    .line 2
    new-instance v4, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v4, v0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 3
    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v3, "desede/CBC/PKCS5Padding"

    .line 5
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 6
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v3, v1, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static native(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/apk/k40;->new:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;

    invoke-direct {v1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;-><init>()V

    .line 5
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->setUserId(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->setChannel(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->setSubChannel(Ljava/lang/String;)V

    const/16 v2, 0x19

    .line 8
    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->setAge(I)V

    .line 9
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->setUserValueGroup(Ljava/lang/String;)V

    .line 10
    new-instance v2, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;

    invoke-direct {v2}, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;-><init>()V

    .line 11
    invoke-virtual {v2, p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->setAppId(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/apk/k40;->throw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->setAppName(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;

    move-result-object p0

    .line 13
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenLog()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->setDebug(Z)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;

    move-result-object p0

    .line 14
    invoke-static {}, Lcom/apk/k40;->try()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->setPublisherDid(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;

    move-result-object p0

    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->setOpenAdnTest(Z)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;

    move-result-object p0

    .line 16
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->setConfigUserInfoForSegment(Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;

    move-result-object p0

    new-instance v1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;

    invoke-direct {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;-><init>()V

    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v3}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->setTitleBarTheme(I)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->build()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->setPangleOption(Lcom/bytedance/msdk/api/v2/GMPangleOption;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;

    move-result-object p0

    new-instance v1, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;

    invoke-direct {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;-><init>()V

    .line 20
    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->setIsPaid(Z)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v3}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->setTitleBarTheme(I)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v3}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->setAllowShowNotify(Z)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v3}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->setAllowShowPageWhenScreenLock(Z)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;

    move-result-object v1

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 24
    invoke-virtual {v1, v4}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->setDirectDownloadNetworkType([I)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v3}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->setIsUseTextureView(Z)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->setNeedClearTaskReset([Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;

    move-result-object v1

    const-string v2, ""

    .line 27
    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->setKeywords(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPangleOption$Builder;->build()Lcom/bytedance/msdk/api/v2/GMPangleOption;

    move-result-object v1

    .line 29
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->setPangleOption(Lcom/bytedance/msdk/api/v2/GMPangleOption;)Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMAdConfig$Builder;->build()Lcom/bytedance/msdk/api/v2/GMAdConfig;

    move-result-object p0

    .line 31
    invoke-static {v0, p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->initialize(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/GMAdConfig;)V

    .line 32
    sput-boolean v3, Lcom/apk/k40;->new:Z

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x3
        0x5
        0x6
    .end array-data
.end method

.method public static new(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdNative;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p0

    return-object p0
.end method

.method public static package(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "gdtcuslayout"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gdtydtop"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static private(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "gdt"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gdt_v"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static public(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "csjjlsp"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static return(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/apk/k40;->catch(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(\\d{2})\\d{6}(\\d{3})"

    const-string v1, "$1******$2"

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static static(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/apk/k40;->case:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/apk/k40;->case:Z

    .line 4
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    .line 6
    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 7
    invoke-static {}, Lcom/apk/k40;->throw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 10
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 11
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenLog()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 12
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->needClearTaskReset([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    new-instance v0, Lcom/apk/x70;

    invoke-direct {v0}, Lcom/apk/x70;-><init>()V

    .line 15
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->customController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p0

    .line 17
    new-instance v0, Lcom/apk/w70;

    invoke-direct {v0}, Lcom/apk/w70;-><init>()V

    invoke-static {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x3
        0x5
        0x6
    .end array-data
.end method

.method public static strictfp()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/k40;->continue()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "connectivity"

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static super(F)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tr/comment/sdk/TrCommentSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static switch()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static this(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/apk/k40;->final(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/apk/w40;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/apk/w40;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/apk/n70;->do(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static throw()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "tr-sdk"

    return-object v0
.end method

.method public static throws(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "-"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    goto :goto_0

    :cond_0
    const-string v0, "yyyy/MM/dd HH:mm:ss"

    .line 2
    :goto_0
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 5
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-wide/16 v0, 0x0

    .line 6
    :goto_2
    invoke-static {v0, v1}, Lcom/apk/k40;->else(J)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :catch_2
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public static try()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "123"

    :goto_0
    return-object v0
.end method

.method public static while(I)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tr/comment/sdk/TrCommentSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method
