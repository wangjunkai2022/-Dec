.class public Lcom/biquge/ebook/app/widget/browse/obj/JsObj;
.super Ljava/lang/Object;
.source "JsObj.java"


# instance fields
.field public listenUrl:Ljava/lang/String;

.field public final mActivity:Landroid/app/Activity;

.field public final mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public static synthetic access$000(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static openLogin(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3fd

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public back()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100177

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$6;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$6;-><init>(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/eg;->i(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    return-void
.end method

.method public checkAppIsInstall(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public decodeResForh5(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/jni/crypt/project/CryptDesManager;->decodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$1;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$1;-><init>(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/apk/ze;->g0(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    const-string v0, "\u63a8\u8350"

    invoke-static {p1, p2, v0}, Lcom/apk/kf;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public encryParamsForh5(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/jni/crypt/project/CryptDesManager;->encodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$2;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$2;-><init>(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public erweimaURL(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_YU_POOLS_DOWNLOAD_HOST_VALUE_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public getAudioChapterData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$3;-><init>(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public getAudioData()Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "SP_TEMP_COMMEND_LISTENETAIL_KEY"

    .line 2
    invoke-static {v1}, Lcom/apk/p0;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/expand/listen/bean/ListenDetail;

    if-eqz v1, :cond_3

    .line 3
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lcom/apk/continue;->else:Lcom/biquge/ebook/app/bean/SameCommendBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameCommendBean;->getTingshu()Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->getTime_gap()I

    move-result v4

    .line 7
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->getTime_total()I

    move-result v3

    .line 8
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->getYs_pkg()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->getYs_apk()Ljava/lang/String;

    move-result-object v2

    move-object v8, v5

    move v5, v3

    move-object v3, v8

    goto :goto_0

    :cond_0
    move-object v2, v3

    const/4 v5, 0x0

    .line 10
    :goto_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "time_gap"

    .line 11
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "time_total"

    .line 12
    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "pkg"

    .line 13
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "apk"

    .line 14
    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "url"

    .line 15
    iget-object v3, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->listenUrl:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    :try_start_2
    const-string v3, "tingshu"

    .line 16
    invoke-virtual {v1}, Lcom/expand/listen/bean/ListenDetail;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apk/eg;->return(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/SameTjHistory;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/SameTjHistory;->getHistoryData()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 19
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v4

    goto :goto_1

    :catch_0
    move-exception v3

    .line 20
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 21
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const-string v3, "history"

    .line 22
    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "config"

    .line 23
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSectionData(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$4;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$4;-><init>(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public getVideoData()Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "SP_TEMP_COMMEND_VIDEODETAIL_KEY"

    .line 2
    invoke-static {v1}, Lcom/apk/p0;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/expand/videoplayer/bean/VideoDetail;

    if-eqz v1, :cond_3

    .line 3
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lcom/apk/continue;->else:Lcom/biquge/ebook/app/bean/SameCommendBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameCommendBean;->getMovie()Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->getTime_gap()I

    move-result v4

    .line 7
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->getTime_total()I

    move-result v3

    .line 8
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->getYs_pkg()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->getYs_apk()Ljava/lang/String;

    move-result-object v2

    move-object v8, v5

    move v5, v3

    move-object v3, v8

    goto :goto_0

    :cond_0
    move-object v2, v3

    const/4 v5, 0x0

    .line 10
    :goto_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "time_gap"

    .line 11
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "time_total"

    .line 12
    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "pkg"

    .line 13
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "apk"

    .line 14
    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    :try_start_2
    const-string v3, "movie"

    .line 15
    invoke-virtual {v1}, Lcom/expand/videoplayer/bean/VideoDetail;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apk/eg;->return(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/SameTjHistory;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/SameTjHistory;->getHistoryData()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 18
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v4

    goto :goto_1

    :catch_0
    nop

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 19
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const-string v3, "history"

    .line 20
    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "config"

    .line 21
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loginResForh5()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->openLogin(Landroid/app/Activity;)V

    return-void
.end method

.method public loginResForh5(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->openLogin(Landroid/app/Activity;)V

    return-void
.end method

.method public openDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    const-string v0, "manhua"

    .line 1
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object p3, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    .line 3
    invoke-static {p1, p2, v1}, Lcom/apk/mu;->final(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p1

    .line 4
    invoke-static {p3, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_0

    :cond_0
    const-string v0, "novel"

    .line 5
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    iget-object p3, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    .line 7
    invoke-static {p1, p2, v1}, Lcom/apk/n2;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object p1

    .line 8
    invoke-static {p3, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->o(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public openReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    const-string p2, "manhua"

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/manhua/ui/activity/ComicReadActivity;->J(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "novel"

    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b0(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public qrcodeImaURL(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_YU_POOLS_QRCODE_IMAGE_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public saveProgress(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "id"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "name"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "index"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "cname"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "progress"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "protxt"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;

    move-object v2, v1

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;-><init>(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setListenUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->listenUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoTimeoutFlag()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public toManhuaDetail(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Id"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Name"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "manhua"

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->openDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public toManhuaRead(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Id"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Name"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "manhua"

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->openReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public toNewH5Screen(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->toNewH5Screen(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toNewH5Screen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0, p1}, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public toNovelDetail(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Id"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Name"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "novel"

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->openDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public toNovelRead(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Id"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Name"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "novel"

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->openReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public toShudanDetail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Id"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Name"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "novel"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, v1}, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, v1}, Lcom/manhua/ui/activity/ComicListDetailActivity;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
