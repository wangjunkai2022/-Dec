.class public Lcom/tr/comment/sdk/TrCommentSdk;
.super Ljava/lang/Object;
.source "TrCommentSdk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearIdeaCountDatas()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/ca0;->do()Lcom/apk/ca0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/apk/ca0;->do:Lcom/apk/wb0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/wb0;->clear()V

    :cond_0
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/fa0;->do:Lcom/apk/m80;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getIdeaCountParagraph(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/ca0;->do()Lcom/apk/ca0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/apk/ca0;->do:Lcom/apk/wb0;

    if-eqz v1, :cond_1

    .line 3
    invoke-static {p0, p1}, Lcom/apk/ca0;->if(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    iget-object p1, v0, Lcom/apk/ca0;->do:Lcom/apk/wb0;

    invoke-virtual {p1, p0}, Lcom/apk/wb0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tr/comment/sdk/bean/TrChapterCount;

    .line 7
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrChapterCount;->getIndex()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrChapterCount;->getCount()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getRequestComment(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;ILcom/apk/q80;)V
    .locals 1

    const-string v0, "0"

    .line 1
    invoke-static {p0, p1, v0, p2, p3}, Lcom/tr/comment/sdk/TrCommentSdk;->getRequestComment(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;ILcom/apk/q80;)V

    return-void
.end method

.method public static getRequestComment(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;IILcom/tr/comment/sdk/bean/TrSortType;Lcom/apk/q80;)V
    .locals 0

    .line 3
    invoke-static/range {p0 .. p5}, Lcom/apk/ja0;->if(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;IILcom/tr/comment/sdk/bean/TrSortType;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object p1, Lcom/apk/xw;->if:Lcom/apk/xw;

    const-wide/16 p2, 0x0

    invoke-static {p0, p2, p3, p1, p6}, Lcom/apk/ja0;->try(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/q80;)V

    return-void
.end method

.method public static getRequestComment(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;ILcom/apk/q80;)V
    .locals 7

    .line 2
    sget-object v5, Lcom/tr/comment/sdk/bean/TrSortType;->HOT:Lcom/tr/comment/sdk/bean/TrSortType;

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/tr/comment/sdk/TrCommentSdk;->getRequestComment(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;IILcom/tr/comment/sdk/bean/TrSortType;Lcom/apk/q80;)V

    return-void
.end method

.method public static getRequestCommentSync(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "0"

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/tr/comment/sdk/TrCommentSdk;->getRequestCommentSync(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestCommentSync(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 6

    .line 2
    sget-object v5, Lcom/tr/comment/sdk/bean/TrSortType;->HOT:Lcom/tr/comment/sdk/bean/TrSortType;

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/tr/comment/sdk/TrCommentSdk;->getRequestCommentSync(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;IILcom/tr/comment/sdk/bean/TrSortType;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestCommentSync(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;IILcom/tr/comment/sdk/bean/TrSortType;)Lorg/json/JSONObject;
    .locals 0

    .line 3
    invoke-static/range {p0 .. p5}, Lcom/apk/ja0;->if(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;IILcom/tr/comment/sdk/bean/TrSortType;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object p1, Lcom/apk/xw;->if:Lcom/apk/xw;

    const-wide/16 p2, 0x0

    invoke-static {p0, p2, p3, p1}, Lcom/apk/ja0;->for(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestUrl(Ljava/lang/String;Lcom/apk/q80;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/apk/xw;->if:Lcom/apk/xw;

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0, p1}, Lcom/apk/ja0;->try(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/q80;)V

    return-void
.end method

.method public static getRequestUrlSync(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    sget-object v0, Lcom/apk/xw;->if:Lcom/apk/xw;

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/apk/ja0;->for(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lcom/apk/m80;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget-object v2, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    if-eqz v2, :cond_1

    .line 3
    sget-object v2, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    .line 4
    invoke-virtual {v2}, Lcom/apk/tw;->getContext()Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 5
    new-instance v2, Lcom/apk/xg0$do;

    invoke-direct {v2}, Lcom/apk/xg0$do;-><init>()V

    .line 6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5, v3}, Lcom/apk/xg0$do;->if(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 7
    invoke-virtual {v2, v4, v5, v3}, Lcom/apk/xg0$do;->new(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 8
    invoke-virtual {v2, v4, v5, v3}, Lcom/apk/xg0$do;->do(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 9
    new-instance v3, Lcom/apk/px;

    new-instance v4, Lcom/apk/sx;

    invoke-direct {v4, v0}, Lcom/apk/sx;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Lcom/apk/px;-><init>(Lcom/apk/rx;)V

    const-string v4, "cookieJar"

    .line 10
    invoke-static {v3, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object v3, v2, Lcom/apk/xg0$do;->break:Lcom/apk/kg0;

    .line 12
    sget-object v3, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    .line 13
    iput-object v0, v3, Lcom/apk/tw;->do:Landroid/app/Application;

    .line 14
    new-instance v0, Lcom/apk/xg0;

    invoke-direct {v0, v2}, Lcom/apk/xg0;-><init>(Lcom/apk/xg0$do;)V

    .line 15
    iput-object v0, v3, Lcom/apk/tw;->for:Lcom/apk/xg0;

    .line 16
    sget-object v0, Lcom/apk/xw;->if:Lcom/apk/xw;

    .line 17
    iput-object v0, v3, Lcom/apk/tw;->case:Lcom/apk/xw;

    const-wide/16 v4, -0x1

    .line 18
    invoke-virtual {v3, v4, v5}, Lcom/apk/tw;->if(J)Lcom/apk/tw;

    .line 19
    invoke-virtual {v3, v1}, Lcom/apk/tw;->for(I)Lcom/apk/tw;

    .line 20
    :cond_2
    sput-object p0, Lcom/apk/fa0;->do:Lcom/apk/m80;

    .line 21
    new-instance p0, Lcom/apk/bb0;

    invoke-direct {p0}, Lcom/apk/bb0;-><init>()V

    new-instance v0, Lcom/apk/ea0;

    invoke-direct {v0}, Lcom/apk/ea0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/apk/bb0;->do(Lcom/apk/ab0;)Lcom/apk/bb0;

    return-void
.end method

.method public static loadIdeaCount(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;Lcom/apk/n80;)V
    .locals 10

    .line 2
    invoke-static {}, Lcom/apk/ca0;->do()Lcom/apk/ca0;

    move-result-object v0

    invoke-static {p0}, Lcom/apk/fa0;->for(Lcom/tr/comment/sdk/bean/TrSourceType;)Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-static {p1, p2}, Lcom/apk/ca0;->if(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v3, v0, Lcom/apk/ca0;->do:Lcom/apk/wb0;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Lcom/apk/wb0;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_3

    .line 5
    iget-object p0, v0, Lcom/apk/ca0;->do:Lcom/apk/wb0;

    invoke-virtual {p0, v1}, Lcom/apk/wb0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p3, p1, p2, p0}, Lcom/apk/n80;->do(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, v0, Lcom/apk/ca0;->if:Lcom/apk/wb0;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/apk/wb0;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 7
    iget-object v3, v0, Lcom/apk/ca0;->if:Lcom/apk/wb0;

    invoke-virtual {v3, v1}, Lcom/apk/wb0;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, v0, Lcom/apk/ca0;->if:Lcom/apk/wb0;

    invoke-virtual {v3, v1, p1}, Lcom/apk/wb0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    new-instance v9, Lcom/apk/ca0$if;

    iget-object v6, v0, Lcom/apk/ca0;->do:Lcom/apk/wb0;

    iget-object v7, v0, Lcom/apk/ca0;->if:Lcom/apk/wb0;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/apk/ca0$if;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/n80;Lcom/apk/wb0;Lcom/apk/wb0;Lcom/apk/ca0$do;)V

    invoke-virtual {v9, p0}, Lcom/apk/bb0;->do(Lcom/apk/ab0;)Lcom/apk/bb0;

    :cond_3
    :goto_0
    return-void

    .line 10
    :cond_4
    throw p0
.end method

.method public static loadIdeaCount(Ljava/lang/String;Ljava/lang/String;Lcom/apk/n80;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcom/tr/comment/sdk/TrCommentSdk;->loadIdeaCount(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;Lcom/apk/n80;)V

    return-void
.end method

.method public static openCommentActivity(Landroid/content/Context;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/tr/comment/sdk/activity/TrCommentActivity;->i(Landroid/content/Context;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static openCommentActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1, p2}, Lcom/tr/comment/sdk/TrCommentSdk;->openCommentActivity(Landroid/content/Context;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static openIdeaDialog(Landroidx/fragment/app/FragmentActivity;Lcom/tr/comment/sdk/bean/TrSourceType;Lcom/tr/comment/sdk/bean/TrSortType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 3
    invoke-static/range {p4 .. p6}, Lcom/tr/comment/sdk/TrCommentSdk;->getIdeaCountParagraph(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 4
    new-instance v9, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/tr/comment/sdk/bean/TrSourceType;Lcom/tr/comment/sdk/bean/TrSortType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 5
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    iput-object v1, v0, Lcom/apk/lv;->import:Ljava/lang/Boolean;

    .line 8
    new-instance v1, Lcom/tr/comment/sdk/TrCommentSdk$do;

    invoke-direct {v1, v9}, Lcom/tr/comment/sdk/TrCommentSdk$do;-><init>(Lcom/tr/comment/sdk/commons/widget/TrIdeaPopupView;)V

    .line 9
    iput-object v1, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 10
    instance-of v1, v9, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v1, :cond_0

    .line 11
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 12
    iput-boolean v1, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 13
    :cond_0
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 14
    iput-boolean v1, v0, Lcom/apk/lv;->continue:Z

    .line 15
    :goto_0
    iput-object v0, v9, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 16
    invoke-virtual {v9}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public static openIdeaDialog(Landroidx/fragment/app/FragmentActivity;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 2
    invoke-static/range {v0 .. v6}, Lcom/tr/comment/sdk/TrCommentSdk;->openIdeaDialog(Landroidx/fragment/app/FragmentActivity;Lcom/tr/comment/sdk/bean/TrSourceType;Lcom/tr/comment/sdk/bean/TrSortType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static openIdeaDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/tr/comment/sdk/TrCommentSdk;->openIdeaDialog(Landroidx/fragment/app/FragmentActivity;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static postRequestUrl(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Lcom/apk/q80;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/apk/q80;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    new-instance p3, Lcom/apk/ka0;

    invoke-direct {p3, p4}, Lcom/apk/ka0;-><init>(Lcom/apk/q80;)V

    invoke-static {p0, p2, p1, p3}, Lcom/apk/ja0;->case(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcom/apk/mx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static postRequestUrlSync(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-static {p0, p2, v0}, Lcom/apk/ja0;->new(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public static resetToken()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/bb0;

    invoke-direct {v0}, Lcom/apk/bb0;-><init>()V

    new-instance v1, Lcom/tr/comment/sdk/TrCommentSdk$if;

    invoke-direct {v1}, Lcom/tr/comment/sdk/TrCommentSdk$if;-><init>()V

    invoke-virtual {v0, v1}, Lcom/apk/bb0;->do(Lcom/apk/ab0;)Lcom/apk/bb0;

    return-void
.end method

.method public static setCommentHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/apk/fa0;->if:Ljava/lang/String;

    .line 2
    sput-object p1, Lcom/apk/fa0;->for:Ljava/lang/String;

    .line 3
    sput-object p2, Lcom/apk/fa0;->new:Ljava/lang/String;

    return-void
.end method

.method public static setGender(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v0

    check-cast v0, Lcom/apk/mb0;

    .line 2
    iget-object v0, v0, Lcom/apk/mb0;->do:Landroid/content/SharedPreferences;

    const-string v1, "SP_USERFACE_TAG_KEY"

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    if-eqz p0, :cond_2

    .line 4
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object p0

    invoke-static {}, Lcom/apk/ha0;->for()Ljava/lang/String;

    check-cast p0, Lcom/apk/mb0;

    .line 5
    iget-object v0, p0, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    const-string v2, "face_man_1"

    .line 6
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/apk/mb0;->do()V

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object p0

    invoke-static {}, Lcom/apk/ha0;->if()Ljava/lang/String;

    check-cast p0, Lcom/apk/mb0;

    .line 9
    iget-object v0, p0, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    const-string v2, "face_lady_2"

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/apk/mb0;->do()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static setOpenLog(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/apk/fa0;->try:Z

    return-void
.end method

.method public static submitComment(Landroid/content/Context;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/apk/q80;)V
    .locals 2

    const-string v0, "0"

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/apk/fa0;->catch(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p0, -0x1

    if-eq p4, p0, :cond_1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 5
    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "userIn"

    .line 7
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "userId"

    .line 8
    :try_start_2
    invoke-static {}, Lcom/apk/fa0;->throws()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "userName"

    .line 9
    :try_start_3
    invoke-static {}, Lcom/apk/fa0;->default()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "userFace"

    .line 10
    :try_start_4
    invoke-static {}, Lcom/apk/fa0;->switch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "equipment"

    .line 11
    :try_start_5
    invoke-static {}, Lcom/apk/fa0;->throw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "parentId"

    .line 12
    invoke-virtual {p4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bookId"

    .line 13
    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string p1, "chapterId"

    .line 14
    :try_start_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    move-object v0, p3

    :cond_2
    invoke-virtual {p4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content"

    .line 15
    invoke-virtual {p4, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string p1, "sign"

    .line 16
    :try_start_7
    invoke-static {p4}, Lcom/apk/kb0;->do(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/k40;->import(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :goto_0
    invoke-static {}, Lcom/apk/fa0;->return()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/apk/ia0;

    invoke-direct {p2, p6}, Lcom/apk/ia0;-><init>(Lcom/apk/q80;)V

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p2}, Lcom/apk/ja0;->case(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcom/apk/mx;)V

    :goto_1
    return-void
.end method

.method public static submitComment(Landroid/content/Context;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V
    .locals 6

    const-string v3, "0"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/tr/comment/sdk/TrCommentSdk;->submitComment(Landroid/content/Context;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V

    return-void
.end method

.method public static submitComment(Landroid/content/Context;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V
    .locals 7

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-static/range {v0 .. v6}, Lcom/tr/comment/sdk/TrCommentSdk;->submitComment(Landroid/content/Context;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/apk/q80;)V

    return-void
.end method
