.class public Lcom/apk/ys;
.super Ljava/lang/Object;
.source "CodeManager.java"


# static fields
.field public static do:Landroid/app/Application;

.field public static for:Lcom/apk/pt;

.field public static if:Lcom/apk/qt;


# direct methods
.method public static do()Lcom/apk/pt;
    .locals 6

    .line 1
    sget-object v0, Lcom/apk/ys;->for:Lcom/apk/pt;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/ys;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/apk/pt;

    invoke-direct {v1}, Lcom/apk/pt;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 6
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 10
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 11
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 12
    iput-object v5, v1, Lcom/apk/pt;->do:Ljava/lang/String;

    .line 13
    iput-object v4, v1, Lcom/apk/pt;->if:Ljava/lang/String;

    .line 14
    iput v0, v1, Lcom/apk/pt;->new:I

    .line 15
    iput-object v2, v1, Lcom/apk/pt;->for:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    sput-object v1, Lcom/apk/ys;->for:Lcom/apk/pt;

    .line 17
    :cond_0
    sget-object v0, Lcom/apk/ys;->for:Lcom/apk/pt;

    return-object v0
.end method

.method public static for(Lcom/apk/ut$do;)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "CODE_SP_OAID_KEY"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/apk/ys;->new(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/apk/ut;

    new-instance v1, Lcom/apk/ys$do;

    invoke-direct {v1, p0}, Lcom/apk/ys$do;-><init>(Lcom/apk/ut$do;)V

    invoke-direct {v0, v1}, Lcom/apk/ut;-><init>(Lcom/apk/ut$do;)V

    sget-object p0, Lcom/apk/ys;->do:Landroid/app/Application;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v1, 0x1

    .line 6
    invoke-static {p0, v1, v0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    move-result p0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const v0, 0xf63e4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xf63e5

    .line 8
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/ys;->do:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CodeManager not init, please check..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static if()Lcom/apk/qt;
    .locals 8

    .line 1
    sget-object v0, Lcom/apk/ys;->if:Lcom/apk/qt;

    if-nez v0, :cond_c

    .line 2
    invoke-static {}, Lcom/apk/ys;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    .line 3
    new-instance v2, Lcom/apk/qt;

    invoke-direct {v2}, Lcom/apk/qt;-><init>()V

    :try_start_0
    const-string v3, "phone"

    .line 4
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string v4, "wifi"

    .line 5
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 7
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    iput-object v6, v2, Lcom/apk/qt;->if:Ljava/lang/String;

    .line 9
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 10
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 11
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 12
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 13
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 14
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 15
    invoke-static {}, Lcom/apk/qt;->if()Ljava/lang/String;

    move-result-object v6

    .line 16
    iput-object v6, v2, Lcom/apk/qt;->for:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/apk/qt;->do()Ljava/lang/String;

    .line 18
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 19
    iput-object v6, v2, Lcom/apk/qt;->try:Ljava/lang/String;

    .line 20
    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 21
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 22
    iput-object v6, v2, Lcom/apk/qt;->case:Ljava/lang/String;

    .line 23
    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 24
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 25
    iput-object v6, v2, Lcom/apk/qt;->else:Ljava/lang/String;

    .line 26
    sget-object v6, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 27
    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 28
    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 29
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 30
    sget-object v6, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 31
    sget-object v6, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 32
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 33
    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 34
    sget-object v6, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 35
    sget-wide v6, Landroid/os/Build;->TIME:J

    .line 36
    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 37
    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 38
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 39
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 40
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-static {v4}, Lcom/apk/qt;->for(I)Ljava/lang/String;

    .line 41
    iget v4, v5, Landroid/util/DisplayMetrics;->density:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/apk/mu;->f()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 43
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/apk/yu;->do(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 44
    invoke-static {}, Lcom/apk/mu;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    iput-object v1, v2, Lcom/apk/qt;->do:Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 47
    iput-object v4, v2, Lcom/apk/qt;->do:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_4

    .line 48
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_4

    .line 49
    :catch_1
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_4

    .line 50
    :catch_2
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_4

    .line 51
    :catch_3
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    goto :goto_1

    .line 52
    :cond_4
    iput-object v1, v2, Lcom/apk/qt;->do:Ljava/lang/String;

    goto :goto_1

    .line 53
    :cond_5
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 54
    iput-object v4, v2, Lcom/apk/qt;->do:Ljava/lang/String;

    .line 55
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    .line 56
    :cond_6
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    .line 57
    :cond_7
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 58
    :cond_8
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :goto_1
    :try_start_7
    const-string v3, "android.permission.BLUETOOTH"

    .line 59
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/apk/yu;->do(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 60
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_9
    move-object v3, v1

    .line 61
    :goto_2
    iput-object v3, v2, Lcom/apk/qt;->new:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_address"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 64
    :cond_a
    iput-object v1, v2, Lcom/apk/qt;->new:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    .line 65
    :catch_5
    :try_start_8
    iput-object v1, v2, Lcom/apk/qt;->new:Ljava/lang/String;

    goto :goto_3

    .line 66
    :catch_6
    iput-object v1, v2, Lcom/apk/qt;->new:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_3

    :catch_7
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    :cond_b
    :goto_3
    sput-object v2, Lcom/apk/ys;->if:Lcom/apk/qt;

    .line 69
    :cond_c
    sget-object v0, Lcom/apk/ys;->if:Lcom/apk/qt;

    return-object v0
.end method

.method public static new(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "-"

    const-string v1, ""

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "^[0]*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
