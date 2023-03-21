.class public final Lcom/baidu/tts/tools/cuid/util/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/tools/cuid/util/DeviceId$b;,
        Lcom/baidu/tts/tools/cuid/util/DeviceId$c;,
        Lcom/baidu/tts/tools/cuid/util/DeviceId$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static e:Lcom/baidu/tts/tools/cuid/util/DeviceId$b; = null

.field public static f:Z = true


# instance fields
.field public final b:Landroid/content/Context;

.field public c:I

.field public d:Ljava/security/PublicKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/baidu/tts/tools/cuid/security/Base64;->decode([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 2
    new-instance v2, Ljava/lang/String;

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/baidu/tts/tools/cuid/security/Base64;->decode([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 3
    invoke-static {v0, v2}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x4dt
        0x7at
        0x41t
        0x79t
        0x4dt
        0x54t
        0x49t
        0x78t
        0x4dt
        0x44t
        0x49t
        0x3dt
    .end array-data

    :array_1
    .array-data 1
        0x5at
        0x47t
        0x6ct
        0x6at
        0x64t
        0x57t
        0x52t
        0x70t
        0x59t
        0x57t
        0x49t
        0x3dt
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/baidu/tts/tools/cuid/util/DeviceId;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;
    .locals 2

    .line 73
    sget-object v0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->e:Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    if-nez v0, :cond_1

    .line 74
    const-class v0, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/baidu/tts/tools/cuid/util/DeviceId;->e:Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    if-nez v1, :cond_0

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 77
    new-instance v1, Lcom/baidu/tts/tools/cuid/util/DeviceId;

    invoke-direct {v1, p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;-><init>(Landroid/content/Context;)V

    invoke-direct {v1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b()Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object p0

    sput-object p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->e:Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 79
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 80
    :cond_1
    :goto_0
    sget-object p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->e:Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    return-object p0
.end method

.method public static synthetic a(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const-string v1, ""

    .line 9
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 10
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "0"

    .line 12
    invoke-static {v1, v3, v2}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_0
    invoke-static {v1, v2}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument b ( byte array ) is null! "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Landroid/content/Intent;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/baidu/tts/tools/cuid/util/DeviceId$a;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 35
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 36
    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 37
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "galaxy_data"

    .line 38
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v6, "utf-8"

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/tts/tools/cuid/security/Base64;->decode([B)[B

    move-result-object v5

    .line 41
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 42
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v6, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;-><init>(Lcom/baidu/tts/tools/cuid/util/DeviceId$1;)V

    const-string v8, "priority"

    .line 44
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;->b:I

    .line 45
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, v6, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;->a:Landroid/content/pm/ApplicationInfo;

    .line 46
    iget-object v8, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    .line 47
    iput-boolean v9, v6, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;->d:Z

    :cond_3
    if-eqz p2, :cond_6

    const-string v8, "galaxy_sf"

    .line 48
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 50
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x40

    invoke-virtual {v1, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const-string v8, "sigs"

    .line 51
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 52
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v10, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_4

    .line 53
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 54
    :cond_4
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v3}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-direct {p0, v10, v3}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/tts/tools/cuid/security/Base64;->decode([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->d:Ljava/security/PublicKey;

    invoke-static {v3, v4}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a([BLjava/security/PublicKey;)[B

    move-result-object v3

    .line 57
    invoke-static {v5}, Lcom/baidu/tts/tools/cuid/security/SHA1Util;->sha1([B)[B

    move-result-object v4

    if-eqz v3, :cond_5

    .line 58
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 59
    iput-boolean v9, v6, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;->c:Z

    .line 60
    :cond_6
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    .line 61
    :cond_7
    new-instance p1, Lcom/baidu/tts/tools/cuid/util/DeviceId$1;

    invoke-direct {p1, p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId$1;-><init>(Lcom/baidu/tts/tools/cuid/util/DeviceId;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    .line 21
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcom/baidu/tts/tools/cuid/util/a;->a()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "X.509"

    .line 22
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->d:Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_0

    .line 27
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 28
    invoke-static {v1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    .line 29
    :cond_0
    :goto_1
    throw v0

    :catch_3
    :goto_2
    if-eqz v0, :cond_1

    .line 30
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_3
    return-void
.end method

.method private declared-synchronized a(Lcom/baidu/tts/tools/cuid/util/DeviceId$b;)V
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c(Lcom/baidu/tts/tools/cuid/util/DeviceId$b;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "libcuid.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p0, 0x1b4

    goto :goto_0

    :cond_1
    const/16 p0, 0x1b0

    .line 72
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId$c;->a(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/baidu/tts/tools/cuid/util/DeviceId;Lcom/baidu/tts/tools/cuid/util/DeviceId$b;)Z
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Lcom/baidu/tts/tools/cuid/util/DeviceId$b;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/baidu/tts/tools/cuid/util/DeviceId;Ljava/lang/String;)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/baidu/tts/tools/cuid/util/DeviceId;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 62
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 63
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 64
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 65
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 67
    array-length v2, p2

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p2, v0

    .line 68
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_2
    return v0
.end method

.method public static a([BLjava/security/PublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 18
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 19
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 20
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private a([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .locals 4

    .line 16
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/tts/tools/cuid/security/SHA1Util;->sha1([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b()Lcom/baidu/tts/tools/cuid/util/DeviceId$b;
    .locals 10

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.intent.action.GALAXY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;

    .line 24
    iget-boolean v0, v0, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;->c:Z

    if-nez v0, :cond_3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 25
    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "libcuid.so"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    .line 27
    invoke-static {v3}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->b(Ljava/lang/String;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v7

    :goto_3
    if-nez v3, :cond_8

    .line 28
    iget v5, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c:I

    .line 29
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "files"

    .line 30
    iget-object v5, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 32
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 34
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;

    .line 35
    iget-boolean v8, v5, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;->d:Z

    if-eqz v8, :cond_7

    goto :goto_4

    .line 36
    :cond_7
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    iget-object v5, v5, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v9, v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 38
    invoke-static {v8}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->b(Ljava/lang/String;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object v3

    if-eqz v3, :cond_6

    :cond_8
    if-nez v3, :cond_9

    const-string v0, "com.baidu.deviceid.v2"

    .line 39
    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->b(Ljava/lang/String;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object v3

    :cond_9
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 40
    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v3, :cond_a

    if-eqz v0, :cond_a

    .line 41
    iget v1, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c:I

    .line 42
    invoke-direct {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->e()Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object v3

    :cond_a
    if-nez v3, :cond_b

    .line 43
    iget v1, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c:I

    .line 44
    invoke-direct {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->d()Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object v3

    :cond_b
    const-string v1, ""

    if-nez v3, :cond_c

    if-eqz v0, :cond_c

    .line 45
    iget v0, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c:I

    .line 46
    invoke-direct {p0, v1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->h(Ljava/lang/String;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object v3

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    move-object v0, v7

    :goto_5
    if-nez v3, :cond_f

    .line 48
    iget v3, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c:I

    if-nez v4, :cond_d

    .line 49
    invoke-direct {p0, v1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_d
    new-instance v3, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    invoke-direct {v3, v7}, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;-><init>(Lcom/baidu/tts/tools/cuid/util/DeviceId$1;)V

    .line 51
    iget-object v1, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 52
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_e

    .line 53
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {v0, v1, v4}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_e
    const-string v4, "com.baidu"

    .line 55
    invoke-static {v4, v1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/baidu/tts/tools/cuid/security/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->a:Ljava/lang/String;

    .line 57
    iput-object v0, v3, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->b:Ljava/lang/String;

    .line 58
    :cond_f
    invoke-direct {p0, v3}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Lcom/baidu/tts/tools/cuid/util/DeviceId$b;)Z

    .line 59
    invoke-direct {p0, v3}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a(Lcom/baidu/tts/tools/cuid/util/DeviceId$b;)V

    return-object v3
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static synthetic b(Lcom/baidu/tts/tools/cuid/util/DeviceId;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x2000

    :try_start_1
    new-array p0, p0, [C

    .line 7
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 8
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v2, p0, v4, v3}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 13
    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 14
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 15
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_2

    .line 16
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 17
    invoke-static {v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    .line 18
    :cond_2
    :goto_5
    throw p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private b(Lcom/baidu/tts/tools/cuid/util/DeviceId$b;)Z
    .locals 2

    .line 60
    invoke-virtual {p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "O"

    .line 61
    iput-object v0, p1, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->b:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    .line 63
    iput-object v0, p1, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic b(Lcom/baidu/tts/tools/cuid/util/DeviceId;)Z
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->c()Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic c(Lcom/baidu/tts/tools/cuid/util/DeviceId;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->e()Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/baidu/tts/tools/cuid/util/DeviceId$b;)Ljava/lang/Runnable;
    .locals 1

    .line 4
    new-instance v0, Lcom/baidu/tts/tools/cuid/util/DeviceId$2;

    invoke-direct {v0, p0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId$2;-><init>(Lcom/baidu/tts/tools/cuid/util/DeviceId;Lcom/baidu/tts/tools/cuid/util/DeviceId$b;)V

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    const-string v1, "backups/.SystemConfig"

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    new-instance p1, Ljava/io/File;

    const-string v1, ".cuid"

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 17
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 19
    invoke-virtual {p0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 21
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 22
    new-instance p0, Ljava/io/FileWriter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 23
    sget-object p1, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a:Ljava/lang/String;

    sget-object v1, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/baidu/tts/tools/cuid/security/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Lcom/baidu/tts/tools/cuid/security/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Ljava/io/FileWriter;->flush()V

    .line 26
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c()Z
    .locals 1

    const-string v0, "android.permission.WRITE_SETTINGS"

    .line 5
    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcom/baidu/tts/tools/cuid/util/DeviceId;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->g(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private d()Lcom/baidu/tts/tools/cuid/util/DeviceId$b;
    .locals 2

    const-string v0, "com.baidu.deviceid"

    .line 3
    invoke-direct {p0, v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bd_setting_i"

    .line 4
    invoke-direct {p0, v1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/baidu/tts/tools/cuid/util/DeviceId;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->k(Ljava/lang/String;)V

    return-void
.end method

.method private e()Lcom/baidu/tts/tools/cuid/util/DeviceId$b;
    .locals 4

    .line 19
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/tts/tools/cuid/security/Base64;->decode([B)[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/baidu/tts/tools/cuid/security/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->b(Ljava/lang/String;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic e(Lcom/baidu/tts/tools/cuid/util/DeviceId;Ljava/lang/String;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->h(Ljava/lang/String;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object p0

    return-object p0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "libcuid.so"

    .line 2
    sget-boolean v1, Lcom/baidu/tts/tools/cuid/util/DeviceId;->f:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x0

    .line 4
    :try_start_0
    iget-object v5, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    :goto_2
    if-nez v1, :cond_2

    .line 9
    sget-boolean p1, Lcom/baidu/tts/tools/cuid/util/DeviceId;->f:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x1b4

    .line 10
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId$c;->a(Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 11
    :cond_2
    sget-boolean p1, Lcom/baidu/tts/tools/cuid/util/DeviceId;->f:Z

    if-nez p1, :cond_3

    const/16 p1, 0x1b0

    .line 12
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId$c;->a(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_3
    return v2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 13
    :try_start_2
    invoke-static {p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    .line 14
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return v3

    :goto_4
    if-eqz v4, :cond_5

    .line 16
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 17
    invoke-static {v0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    .line 18
    :cond_5
    :goto_5
    throw p1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private g(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static getCUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a(Landroid/content/Context;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object p0

    iget-object p0, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method private h(Ljava/lang/String;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;
    .locals 4

    const-string p1, ""

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "baidu/.cuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 5
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 11
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/tts/tools/cuid/security/Base64;->decode([B)[B

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/baidu/tts/tools/cuid/security/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 14
    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 15
    :try_start_1
    aget-object p1, v0, v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    :cond_2
    move-object v1, p1

    .line 16
    :catch_1
    :goto_2
    invoke-static {p1, v1}, Lcom/baidu/tts/tools/cuid/util/DeviceId$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    move-result-object p1

    return-object p1
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a:Ljava/lang/String;

    sget-object v1, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/baidu/tts/tools/cuid/security/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/baidu/tts/tools/cuid/security/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a:Ljava/lang/String;

    sget-object v2, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/security/Base64;->decode([B)[B

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/baidu/tts/tools/cuid/security/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->b(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    const-string v2, ".cuid2"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 7
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 9
    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 10
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    new-instance v0, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 13
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 15
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private l(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "0"

    return-object p1
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/tts/tools/cuid/security/Base64;->decode([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static setCuidDataShable(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "libcuid.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->e:Lcom/baidu/tts/tools/cuid/util/DeviceId$b;

    if-nez v0, :cond_0

    .line 5
    invoke-static {p0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a(Landroid/content/Context;Z)Z

    goto :goto_0

    .line 6
    :cond_0
    sget-boolean v0, Lcom/baidu/tts/tools/cuid/util/DeviceId;->f:Z

    if-eq v0, p1, :cond_1

    .line 7
    invoke-static {p0, p1}, Lcom/baidu/tts/tools/cuid/util/DeviceId;->a(Landroid/content/Context;Z)Z

    .line 8
    :cond_1
    :goto_0
    sput-boolean p1, Lcom/baidu/tts/tools/cuid/util/DeviceId;->f:Z

    return-void
.end method
