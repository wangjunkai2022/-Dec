.class public Lcom/swl/gg/ggs/SwlAdHelper;
.super Ljava/lang/Object;
.source "SwlAdHelper.java"


# static fields
.field public static cacheAds:Lcom/apk/f80;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/f80<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/swl/gg/bean/SwlAdView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGoBookDetailOrActivity(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getStattype()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getExtraid()Ljava/lang/String;

    move-result-object p1

    const-string v2, "book"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 4
    sget-object v0, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v0, :cond_1

    .line 5
    check-cast v0, Lcom/apk/y;

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 6
    invoke-static {p1, v0, v0}, Lcom/apk/n2;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->o(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    goto :goto_0

    .line 8
    :cond_0
    throw v3

    :cond_1
    :goto_0
    return v4

    :cond_2
    const-string v2, "booklist"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    sget-object v0, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v0, :cond_4

    .line 11
    check-cast v0, Lcom/apk/y;

    if-eqz v0, :cond_3

    .line 12
    invoke-static {p0, p1, v3}, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    throw v3

    :cond_4
    :goto_1
    return v4

    :cond_5
    const-string v2, "innerscreen"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 18
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    aget-object v5, v1, v3

    .line 19
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 21
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p0

    .line 25
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_7
    :goto_3
    return v0
.end method

.method public static clickAd(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getLandingtype()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdurl()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p0, v0, v1, p1}, Lcom/swl/gg/ggs/SwlAdHelper;->setAdClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getBqAdViews(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/swl/gg/bean/SwlAdView;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v1, Lcom/apk/k40;->do:Lcom/apk/r40;

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 3
    check-cast v1, Lcom/apk/y;

    const-string v1, "SP_AD_HOST_SWL_KEY"

    .line 4
    invoke-static {v1, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".html"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Lcom/apk/ky;

    invoke-direct {v1, p0}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object p0, v1, Lcom/apk/qy;->new:Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Lcom/apk/qy;->for()Lcom/apk/ch0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 9
    :try_start_1
    invoke-virtual {p0}, Lcom/apk/ch0;->throw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    .line 11
    invoke-virtual {v1}, Lcom/apk/dh0;->finally()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    nop

    goto :goto_3

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_4

    .line 12
    :try_start_2
    invoke-virtual {p0}, Lcom/apk/ch0;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    :try_start_3
    invoke-virtual {p0}, Lcom/apk/ch0;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 13
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_2
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception p0

    goto :goto_7

    :catch_4
    move-object p0, v0

    :goto_3
    if-eqz p0, :cond_3

    .line 15
    :try_start_5
    invoke-virtual {p0}, Lcom/apk/ch0;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    move-object v1, v0

    .line 16
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_3
    :goto_5
    move-object v1, v0

    .line 17
    :cond_4
    :goto_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 18
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    .line 19
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move-object p0, v0

    :goto_8
    if-eqz p0, :cond_7

    const-string v1, "ads"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 21
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 22
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/apk/e80;

    invoke-direct {v1}, Lcom/apk/e80;-><init>()V

    .line 23
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 24
    invoke-static {p0, v1}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_7

    .line 25
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swl/gg/bean/SwlAdView;

    .line 28
    invoke-virtual {v1}, Lcom/swl/gg/bean/SwlAdView;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_7
    return-object v0
.end method

.method public static getSwlAdView(Ljava/lang/String;)Lcom/swl/gg/bean/SwlAdView;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/swl/gg/ggs/SwlAdHelper;->getSwlAdView(Ljava/lang/String;Z)Lcom/swl/gg/bean/SwlAdView;

    move-result-object p0

    return-object p0
.end method

.method public static getSwlAdView(Ljava/lang/String;Z)Lcom/swl/gg/bean/SwlAdView;
    .locals 3

    .line 2
    sget-object v0, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/apk/f80;

    invoke-direct {v0}, Lcom/apk/f80;-><init>()V

    sput-object v0, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    .line 4
    :cond_0
    sget-object v0, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    .line 5
    invoke-virtual {v0}, Lcom/apk/f80;->do()V

    .line 6
    iget-object v0, v0, Lcom/apk/f80;->if:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {p0}, Lcom/swl/gg/ggs/SwlAdHelper;->getBqAdViews(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v1, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    invoke-virtual {v1, p0, v0}, Lcom/apk/f80;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    .line 9
    :try_start_0
    sget-object v1, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    .line 10
    invoke-virtual {v1}, Lcom/apk/f80;->do()V

    .line 11
    iget-object v1, v1, Lcom/apk/f80;->if:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    sget-object v1, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    invoke-virtual {v1, p0}, Lcom/apk/f80;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz p1, :cond_2

    .line 14
    sget-object p0, Lcom/apk/dg;->do:Ljava/util/Random;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swl/gg/bean/SwlAdView;

    move-object v0, p0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 16
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swl/gg/bean/SwlAdView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    :try_start_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    invoke-virtual {v0, p0, v1}, Lcom/apk/f80;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, p1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 19
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getSwlAdViews(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/swl/gg/bean/SwlAdView;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/f80;

    invoke-direct {v0}, Lcom/apk/f80;-><init>()V

    sput-object v0, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    .line 3
    :cond_0
    sget-object v0, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    .line 4
    invoke-virtual {v0}, Lcom/apk/f80;->do()V

    .line 5
    iget-object v0, v0, Lcom/apk/f80;->if:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {p0}, Lcom/swl/gg/ggs/SwlAdHelper;->getBqAdViews(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v1, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    invoke-virtual {v1, p0, v0}, Lcom/apk/f80;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    sget-object v0, Lcom/swl/gg/ggs/SwlAdHelper;->cacheAds:Lcom/apk/f80;

    invoke-virtual {v0, p0}, Lcom/apk/f80;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInteriorBrowser(Lcom/swl/gg/bean/SwlAdView;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/swl/gg/bean/SwlAdView;->getBrowser()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/swl/gg/ggs/SwlAdHelper;->isInteriorBrowser(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInteriorBrowser(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "1"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static openBrowser(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p0, p1}, Lcom/swl/gg/ggs/SwlAdHelper;->checkGoBookDetailOrActivity(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getAdurl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/swl/gg/ggs/SwlAdHelper;->isInteriorBrowser(Lcom/swl/gg/bean/SwlAdView;)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "android.intent.action.VIEW"

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    sget-object p2, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz p2, :cond_3

    .line 5
    check-cast p2, Lcom/apk/y;

    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p2, p1}, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/high16 p2, 0x10000000

    .line 7
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-static {p0, v1}, Lcom/swl/gg/ggs/SwlAdHelper;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 14
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 15
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 21
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setAdClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "0"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p2, v1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "1"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz p1, :cond_7

    .line 5
    check-cast p1, Lcom/apk/y;

    .line 6
    invoke-static {p0, v2, p2}, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "2"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p1, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz p1, :cond_7

    .line 9
    check-cast p1, Lcom/apk/y;

    .line 10
    invoke-static {p0, p2, p3}, Lcom/apk/kf;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p3, "4"

    .line 11
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 12
    invoke-static {p0, p2, v1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    const-string p3, "5"

    .line 13
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p1, ""

    const-string p3, "?linkforwardtype=sysbrowser"

    :try_start_0
    const-string v0, "https"

    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_4

    .line 15
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 16
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 20
    invoke-static {p0, p2, v1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v2, "&linkforwardtype=sysbrowser"

    if-nez v0, :cond_5

    :try_start_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    :cond_5
    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p0, p1, v1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_6
    const-string p3, "6"

    .line 26
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 28
    new-instance p1, Landroid/content/Intent;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tel:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.DIAL"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_0
    return-void
.end method
