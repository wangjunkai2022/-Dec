.class public final Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/i;
.super Ljava/lang/Object;
.source "Net.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/i;->b(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;

    move-result-object p0

    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/i;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;)Ljava/lang/String;
    .locals 1

    .line 2
    :try_start_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/i$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "mobile"

    goto :goto_1

    :cond_1
    const-string p0, "4g"

    goto :goto_1

    :cond_2
    const-string p0, "3g"

    goto :goto_1

    :cond_3
    const-string p0, "2g"

    goto :goto_1

    :cond_4
    const-string p0, "wifi"

    goto :goto_1

    :catch_0
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;
    .locals 2

    :try_start_0
    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 6
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;->e:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;

    return-object p0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "phone"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 9
    :pswitch_0
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;

    goto :goto_0

    .line 10
    :pswitch_1
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;->f:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;

    return-object p0

    .line 11
    :pswitch_2
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;->d:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;

    :goto_0
    return-object p0

    .line 12
    :cond_3
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;

    return-object p0

    .line 13
    :cond_4
    :goto_1
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 14
    :catchall_0
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/b$b;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method
