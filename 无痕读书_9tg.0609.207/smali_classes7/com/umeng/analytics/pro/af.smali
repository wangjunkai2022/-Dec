.class public Lcom/umeng/analytics/pro/af;
.super Ljava/lang/Object;
.source "OppoDeviceIdSupplier.java"

# interfaces
.implements Lcom/umeng/analytics/pro/z;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/af;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-boolean v2, p0, Lcom/umeng/analytics/pro/af;->a:Z

    if-nez v2, :cond_3

    .line 2
    sget-object v2, Lcom/apk/pp0$if;->do:Lcom/apk/pp0;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 4
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "com.heytap.openid"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v3, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_0

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v3, v5, v7

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 7
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-lt v3, v4, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 8
    :try_start_4
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 9
    :cond_1
    :goto_1
    sput-boolean v2, Lcom/apk/sb0;->for:Z

    .line 10
    sput-boolean v4, Lcom/apk/sb0;->if:Z

    .line 11
    iput-boolean v4, p0, Lcom/umeng/analytics/pro/af;->a:Z

    goto :goto_2

    .line 12
    :cond_2
    throw v1

    .line 13
    :cond_3
    :goto_2
    sget-boolean v2, Lcom/apk/sb0;->if:Z

    if-eqz v2, :cond_5

    .line 14
    sget-boolean v2, Lcom/apk/sb0;->for:Z

    if-nez v2, :cond_4

    const-string p1, "\u5f53\u524d\u8bbe\u5907\u4e0d\u652f\u6301\u83b7\u53d6OAID"

    .line 15
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_4
    invoke-static {p1}, Lcom/apk/sb0;->const(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_3

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v2, "SDK Need Init First!"

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    const-string p1, "\u672a\u68c0\u6d4b\u5230\u60a8\u96c6\u6210OAID SDK\u5305"

    .line 18
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    :goto_3
    return-object v1
.end method
