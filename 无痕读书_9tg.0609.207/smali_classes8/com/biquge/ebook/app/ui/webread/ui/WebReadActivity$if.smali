.class public Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$if;
.super Ljava/lang/Object;
.source "WebReadActivity.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$if;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic do(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "saveTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "externalUrl"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-class p1, Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "collectId = ?"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$if;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    .line 5
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->case:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 6
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/apk/ze;->V()V

    return-void
.end method

.method public for(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public goto()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$if;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->else:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->class:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->class:Z

    .line 5
    invoke-static {}, Lcom/apk/a1;->this()Lcom/apk/a1;

    move-result-object v1

    new-instance v2, Lcom/apk/zd;

    invoke-direct {v2, v0}, Lcom/apk/zd;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;)V

    invoke-virtual {v1, v2}, Lcom/apk/a1;->break(Lcom/apk/k1;)V

    :goto_0
    return-void
.end method

.method public instanceof(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$if;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->case:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p1

    new-instance v0, Lcom/apk/sd;

    invoke-direct {v0, p0, p2}, Lcom/apk/sd;-><init>(Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$if;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object p1

    .line 7
    sget-object p2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_WEBVIEW_CACHE_MODE_TODAY_KEY"

    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public interface(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$if;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->goto:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->goto:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity$if;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->if:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
