.class public Lcom/biquge/ebook/app/app/AppContext;
.super Landroid/app/Application;
.source "AppContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/app/AppContext$if;
    }
.end annotation


# static fields
.field public static case:Lcom/biquge/ebook/app/app/AppContext;


# instance fields
.field public do:Lcom/apk/static;

.field public for:Lcom/biquge/ebook/app/app/AppContext$if;

.field public if:Z

.field public new:I

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/app/AppContext;->new:I

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public final do()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/n;

    invoke-direct {v0}, Lcom/apk/n;-><init>()V

    .line 2
    new-instance v1, Lcom/biquge/ebook/app/app/AppContext$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/app/AppContext$do;-><init>(Lcom/biquge/ebook/app/app/AppContext;)V

    .line 3
    iput-object v1, v0, Lcom/apk/n;->do:Lcom/apk/n$if;

    .line 4
    iget-object v0, v0, Lcom/apk/n;->if:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public for(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/app/AppContext;->if:Z

    if-nez p1, :cond_0

    const v0, 0x7f0600d8

    .line 2
    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v0

    .line 3
    sput v0, Lcom/apk/zu;->do:I

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 4
    invoke-static {p1}, Lcom/swl/gg/sdk/TrAdSdk;->setDayNightTheme(Z)V

    return-void
.end method

.method public synthetic if()V
    .locals 5

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-static {p0}, Lcom/apk/else;->if(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/app/AppContext;->do()V

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/apk/t;->if(Lcom/apk/t$do;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "327ca996fe"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "SP_QY"

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    invoke-static {v0, v2}, Lcom/apk/ze;->O(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/apk/ze;->S(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/apk/ze;->O(Ljava/lang/String;Z)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/apk/ze;->Q(Ljava/lang/String;I)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_4

    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/apk/ze;->P(Ljava/lang/String;F)V

    goto :goto_0

    .line 20
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/apk/ze;->R(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    const-string v0, "SP_AD_CACHE_DATA_KEY"

    .line 22
    invoke-static {v0}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 23
    invoke-static {v0}, Lcom/apk/else;->for(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CacheBean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 24
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CacheBean;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apk/ze;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_6
    invoke-static {}, Lcom/apk/m0;->case()V

    return-void
.end method

.method public onCreate()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object p0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 3
    invoke-static {p0}, Lorg/litepal/LitePal;->initialize(Landroid/content/Context;)V

    .line 4
    sput-object p0, Lcom/apk/ys;->do:Landroid/app/Application;

    .line 5
    new-instance v0, Lcom/hjq/toast/style/ToastAliPayStyle;

    invoke-direct {v0, p0}, Lcom/hjq/toast/style/ToastAliPayStyle;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/hjq/toast/ToastUtils;->init(Landroid/app/Application;Lcom/hjq/toast/IToastStyle;)V

    .line 6
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    invoke-static {p0}, Lcom/jni/crypt/project/CryptDesManager;->init(Landroid/content/Context;)Z

    .line 8
    new-instance v0, Lcom/apk/fy;

    invoke-direct {v0}, Lcom/apk/fy;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/apk/fy;->for(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v1, Lcom/apk/xg0$do;

    invoke-direct {v1}, Lcom/apk/xg0$do;-><init>()V

    .line 11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v3, v4, v2}, Lcom/apk/xg0$do;->if(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 12
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lcom/apk/xg0$do;->new(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 13
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4, v2}, Lcom/apk/xg0$do;->do(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 14
    invoke-static {}, Lcom/apk/w0;->switch()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 15
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 16
    iget-object v5, v1, Lcom/apk/xg0$do;->class:Ljava/net/Proxy;

    invoke-static {v2, v5}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_0

    .line 17
    iput-object v3, v1, Lcom/apk/xg0$do;->extends:Lcom/apk/di0;

    .line 18
    :cond_0
    iput-object v2, v1, Lcom/apk/xg0$do;->class:Ljava/net/Proxy;

    .line 19
    :cond_1
    invoke-static {}, Lcom/apk/dy;->do()Lcom/apk/dy$for;

    move-result-object v2

    .line 20
    iget-object v5, v2, Lcom/apk/dy$for;->do:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, v2, Lcom/apk/dy$for;->if:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v5, v2}, Lcom/apk/xg0$do;->for(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/apk/xg0$do;

    .line 21
    sget-object v2, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    .line 22
    iput-object p0, v2, Lcom/apk/tw;->do:Landroid/app/Application;

    .line 23
    new-instance v5, Lcom/apk/xg0;

    invoke-direct {v5, v1}, Lcom/apk/xg0;-><init>(Lcom/apk/xg0$do;)V

    .line 24
    iput-object v5, v2, Lcom/apk/tw;->for:Lcom/apk/xg0;

    .line 25
    sget-object v1, Lcom/apk/xw;->if:Lcom/apk/xw;

    .line 26
    iput-object v1, v2, Lcom/apk/tw;->case:Lcom/apk/xw;

    const-wide/16 v5, -0x1

    .line 27
    invoke-virtual {v2, v5, v6}, Lcom/apk/tw;->if(J)Lcom/apk/tw;

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v2, v1}, Lcom/apk/tw;->for(I)Lcom/apk/tw;

    .line 29
    iget-object v5, v2, Lcom/apk/tw;->new:Lcom/apk/fy;

    if-nez v5, :cond_2

    new-instance v5, Lcom/apk/fy;

    invoke-direct {v5}, Lcom/apk/fy;-><init>()V

    iput-object v5, v2, Lcom/apk/tw;->new:Lcom/apk/fy;

    .line 30
    :cond_2
    iget-object v2, v2, Lcom/apk/tw;->new:Lcom/apk/fy;

    if-eqz v2, :cond_11

    .line 31
    iget-object v5, v0, Lcom/apk/fy;->do:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 32
    iget-object v2, v2, Lcom/apk/fy;->do:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Lcom/apk/fy;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 33
    :cond_3
    invoke-static {}, Lcom/apk/da;->while()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v3, "night"

    .line 34
    iput-boolean v4, p0, Lcom/biquge/ebook/app/app/AppContext;->if:Z

    .line 35
    sput-boolean v4, Lcom/apk/zu;->try:Z

    goto :goto_0

    :cond_4
    const-string v0, "APP_SKIN_STYLE_KEY"

    .line 36
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    invoke-static {}, Lcom/apk/ze;->i()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/SkinModel;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SkinModel;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v0, "black"

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biquge/ebook/app/app/AppContext;->if:Z

    .line 39
    :cond_5
    :goto_0
    sget-object v0, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    if-nez v0, :cond_7

    .line 40
    const-class v0, Lcom/apk/yp0;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v2, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    if-nez v2, :cond_6

    .line 42
    new-instance v2, Lcom/apk/yp0;

    invoke-direct {v2, p0}, Lcom/apk/yp0;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 43
    :cond_6
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_7
    :goto_1
    sget-object v0, Lcom/apk/kr0;->new:Lcom/apk/kr0;

    if-nez v0, :cond_9

    .line 45
    const-class v0, Lcom/apk/kr0;

    monitor-enter v0

    .line 46
    :try_start_1
    sget-object v2, Lcom/apk/kr0;->new:Lcom/apk/kr0;

    if-nez v2, :cond_8

    .line 47
    new-instance v2, Lcom/apk/kr0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/apk/kr0;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/apk/kr0;->new:Lcom/apk/kr0;

    .line 48
    :cond_8
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 49
    :cond_9
    :goto_2
    sget-object v0, Lcom/apk/zp0;->new:Lcom/apk/zp0;

    if-nez v0, :cond_b

    .line 50
    const-class v0, Lcom/apk/zp0;

    monitor-enter v0

    .line 51
    :try_start_2
    sget-object v2, Lcom/apk/zp0;->new:Lcom/apk/zp0;

    if-nez v2, :cond_a

    .line 52
    new-instance v2, Lcom/apk/zp0;

    invoke-direct {v2, p0}, Lcom/apk/zp0;-><init>(Landroid/app/Application;)V

    sput-object v2, Lcom/apk/zp0;->new:Lcom/apk/zp0;

    .line 53
    :cond_a
    monitor-exit v0

    goto :goto_3

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 54
    :cond_b
    :goto_3
    sget-object v0, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 55
    iput-boolean v1, v0, Lcom/apk/yp0;->break:Z

    .line 56
    const-class v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v2, v0, Lcom/apk/yp0;->catch:Ljava/util/HashMap;

    if-nez v2, :cond_c

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/apk/yp0;->catch:Ljava/util/HashMap;

    .line 60
    :cond_c
    iget-object v2, v0, Lcom/apk/yp0;->catch:Ljava/util/HashMap;

    const-string v5, ""

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-class v1, Lcom/manhua/ui/activity/ComicReadActivity;

    .line 62
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v2, v0, Lcom/apk/yp0;->catch:Ljava/util/HashMap;

    if-nez v2, :cond_d

    .line 64
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/apk/yp0;->catch:Ljava/util/HashMap;

    .line 65
    :cond_d
    iget-object v2, v0, Lcom/apk/yp0;->catch:Ljava/util/HashMap;

    const-string v5, ""

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v1, Lcom/apk/aq0;

    invoke-direct {v1}, Lcom/apk/aq0;-><init>()V

    .line 67
    iget-object v2, v0, Lcom/apk/yp0;->try:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, v0, Lcom/apk/yp0;->case:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/apk/rq0;

    invoke-direct {v1}, Lcom/apk/rq0;-><init>()V

    .line 70
    instance-of v2, v1, Lcom/apk/eq0;

    if-eqz v2, :cond_e

    .line 71
    iget-object v2, v0, Lcom/apk/yp0;->try:Ljava/util/List;

    move-object v5, v1

    check-cast v5, Lcom/apk/eq0;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_e
    iget-object v2, v0, Lcom/apk/yp0;->case:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v0, v3, v4}, Lcom/apk/yp0;->if(Ljava/lang/String;I)Landroid/os/AsyncTask;

    .line 74
    iget-boolean v0, p0, Lcom/biquge/ebook/app/app/AppContext;->if:Z

    if-nez v0, :cond_f

    const v0, 0x7f0600d8

    .line 75
    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v0

    .line 76
    sput v0, Lcom/apk/zu;->do:I

    .line 77
    :cond_f
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/apk/m;

    invoke-direct {v1, p0}, Lcom/apk/m;-><init>(Lcom/biquge/ebook/app/app/AppContext;)V

    .line 78
    iget-object v0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_10

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 80
    :cond_10
    invoke-static {v4}, Lcom/apk/m0;->if(Z)V

    return-void

    .line 81
    :cond_11
    throw v3
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 2
    invoke-static {p0}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/ii;->for()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/ii;->for()V

    :cond_0
    return-void
.end method
