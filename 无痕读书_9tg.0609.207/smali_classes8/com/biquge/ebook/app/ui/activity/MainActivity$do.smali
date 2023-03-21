.class public Lcom/biquge/ebook/app/ui/activity/MainActivity$do;
.super Lcom/apk/w5;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {p0}, Lcom/apk/w5;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Ljava/util/List;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 5
    new-instance v3, Lcom/biquge/ebook/app/bean/MarqueeBean;

    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    .line 6
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pkg"

    .line 7
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "landingtype"

    .line 8
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/biquge/ebook/app/bean/MarqueeBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    new-instance v1, Lcom/apk/r6;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/apk/r6;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity$do;Ljava/util/List;ZZ)V

    invoke-virtual {p1, v1}, Lcom/apk/i6;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public else(Lcom/biquge/ebook/app/bean/ConfigMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 2
    new-instance v1, Lcom/apk/y7;

    invoke-direct {v1, p0}, Lcom/apk/y7;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity$do;)V

    .line 3
    iput-object v1, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    iput-object v1, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    iput-object v1, v0, Lcom/apk/lv;->if:Ljava/lang/Boolean;

    .line 8
    new-instance v1, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;-><init>(Landroid/content/Context;Lcom/biquge/ebook/app/bean/ConfigMessage;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 10
    iput-boolean p1, v0, Lcom/apk/lv;->continue:Z

    .line 11
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 12
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public goto(Lcom/biquge/ebook/app/bean/ConfigMessage;Z)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 2
    new-instance v1, Lcom/apk/z7;

    invoke-direct {v1, p0}, Lcom/apk/z7;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity$do;)V

    .line 3
    iput-object v1, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    iput-object v1, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 6
    new-instance v1, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {v1, v2, p1, p2}, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;-><init>(Landroid/content/Context;Lcom/biquge/ebook/app/bean/ConfigMessage;Z)V

    .line 7
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 8
    iput-boolean p1, v0, Lcom/apk/lv;->continue:Z

    .line 9
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 10
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic this(Ljava/util/List;ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->l(Lcom/biquge/ebook/app/ui/activity/MainActivity;)Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->l(Lcom/biquge/ebook/app/ui/activity/MainActivity;)Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->f(Ljava/util/List;ZZ)V

    :cond_0
    return-void
.end method

.method public try(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 6

    const-string v0, "infos"

    const/4 v1, 0x7

    const-string v2, "maxcount"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "nextlab"

    const-string v2, "\u67e5\u770b"

    .line 2
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignorelab"

    const-string v5, "\u7a0d\u540e\u63d0\u9192"

    .line 3
    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 5
    invoke-static {}, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->getMessageMaxCountTag()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0, v4}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, p2, :cond_0

    return v4

    .line 7
    :cond_0
    invoke-static {p1, v3}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->n(Lorg/json/JSONArray;Z)Lcom/biquge/ebook/app/bean/ConfigMessage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    new-instance v0, Lcom/apk/s6;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/apk/s6;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity$do;Lcom/biquge/ebook/app/bean/ConfigMessage;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v3

    :cond_1
    return v4

    :cond_2
    if-eqz p2, :cond_5

    .line 9
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "closeflag"

    .line 10
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 11
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->getMessageMaxCountTag()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0, v4}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, p1, :cond_3

    return v4

    .line 14
    :cond_3
    invoke-static {p2, v4}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->n(Lorg/json/JSONArray;Z)Lcom/biquge/ebook/app/bean/ConfigMessage;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ConfigMessage;->getPdcover()Ljava/lang/String;

    move-result-object p2

    .line 16
    sget-object v0, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v0, :cond_4

    .line 17
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    check-cast v0, Lcom/apk/y;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p2, v4, v4}, Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V

    .line 18
    :cond_4
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    new-instance v0, Lcom/apk/q6;

    invoke-direct {v0, p0, p1, v1}, Lcom/apk/q6;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity$do;Lcom/biquge/ebook/app/bean/ConfigMessage;Z)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v3

    :cond_5
    return v4
.end method
