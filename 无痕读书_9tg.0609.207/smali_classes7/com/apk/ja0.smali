.class public Lcom/apk/ja0;
.super Ljava/lang/Object;
.source "TrRequestManager.java"


# static fields
.field public static do:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static case(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcom/apk/mx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lcom/apk/mx<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/apk/xw;->if:Lcom/apk/xw;

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    new-instance p2, Lcom/apk/ly;

    invoke-direct {p2, p0}, Lcom/apk/ly;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2, v1, v2}, Lcom/apk/qy;->if(J)Lcom/apk/qy;

    .line 3
    iput-object v0, p2, Lcom/apk/qy;->case:Lcom/apk/xw;

    const/4 p0, 0x0

    new-array v0, p0, [Z

    .line 4
    invoke-virtual {p2, p1, v0}, Lcom/apk/qy;->class(Ljava/util/Map;[Z)Lcom/apk/qy;

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p0, 0x1

    .line 6
    :cond_0
    iput-boolean p0, p2, Lcom/apk/my;->while:Z

    .line 7
    invoke-virtual {p2, p3}, Lcom/apk/qy;->new(Lcom/apk/mx;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    new-instance p1, Lcom/apk/ly;

    invoke-direct {p1, p0}, Lcom/apk/ly;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v1, v2}, Lcom/apk/qy;->if(J)Lcom/apk/qy;

    .line 10
    iput-object v0, p1, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 11
    invoke-virtual {p1, p2}, Lcom/apk/my;->final(Lorg/json/JSONObject;)Lcom/apk/my;

    .line 12
    invoke-virtual {p1, p3}, Lcom/apk/qy;->new(Lcom/apk/mx;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Lcom/apk/ly;

    invoke-direct {p1, p0}, Lcom/apk/ly;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/apk/qy;->if(J)Lcom/apk/qy;

    .line 15
    iput-object v0, p1, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 16
    invoke-virtual {p1, p3}, Lcom/apk/qy;->new(Lcom/apk/mx;)V

    :goto_0
    return-void
.end method

.method public static do(Landroid/app/Activity;)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v0

    check-cast v0, Lcom/apk/mb0;

    .line 2
    iget-object v0, v0, Lcom/apk/mb0;->do:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "SP_SOFTKEY_HEIGHT"

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    const/high16 v0, 0x438c0000    # 280.0f

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int v1, p0

    :cond_1
    return v1
.end method

.method public static else(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    .line 5
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static for(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/apk/ja0$if;

    invoke-direct {v1, v0}, Lcom/apk/ja0$if;-><init>(Ljava/util/List;)V

    .line 3
    new-instance v2, Lcom/apk/ky;

    invoke-direct {v2, p0}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    cmp-long p0, p1, v3

    if-gtz p0, :cond_0

    move-wide p1, v3

    .line 4
    :cond_0
    iput-wide p1, v2, Lcom/apk/qy;->goto:J

    .line 5
    iput-object p3, v2, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 6
    invoke-virtual {v2, v1}, Lcom/apk/qy;->case(Lcom/apk/mx;)V

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static goto()V
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "AppId"

    .line 3
    :try_start_1
    invoke-static {}, Lcom/apk/fa0;->final()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "Timestamp"

    .line 4
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "sign"

    .line 5
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/k40;->import(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 6
    :goto_0
    invoke-static {}, Lcom/apk/fa0;->import()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/apk/ja0;->new(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/fa0;->import()Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    const-string v1, "Data"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Token"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v1

    check-cast v1, Lcom/apk/mb0;

    .line 12
    iget-object v2, v1, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_0

    const-string v3, "SP_SDK_REQUEST_TOKEN_KEY"

    .line 13
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/apk/mb0;->do()V

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {}, Lcom/apk/fa0;->import()Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method public static if(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;IILcom/tr/comment/sdk/bean/TrSortType;)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5}, Lcom/tr/comment/sdk/bean/TrSortType;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/apk/fa0;->try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static new(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/apk/ja0$for;

    invoke-direct {v1, v0}, Lcom/apk/ja0$for;-><init>(Ljava/util/List;)V

    .line 3
    sget-object v2, Lcom/apk/xw;->if:Lcom/apk/xw;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_1

    .line 4
    new-instance p2, Lcom/apk/ly;

    invoke-direct {p2, p0}, Lcom/apk/ly;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2, v4, v5}, Lcom/apk/qy;->if(J)Lcom/apk/qy;

    .line 6
    iput-object v2, p2, Lcom/apk/qy;->case:Lcom/apk/xw;

    new-array p0, v3, [Z

    .line 7
    invoke-virtual {p2, p1, p0}, Lcom/apk/qy;->class(Ljava/util/Map;[Z)Lcom/apk/qy;

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    iput-boolean p0, p2, Lcom/apk/my;->while:Z

    .line 10
    invoke-virtual {p2, v1}, Lcom/apk/qy;->case(Lcom/apk/mx;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 11
    new-instance p1, Lcom/apk/ly;

    invoke-direct {p1, p0}, Lcom/apk/ly;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v4, v5}, Lcom/apk/qy;->if(J)Lcom/apk/qy;

    .line 13
    iput-object v2, p1, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 14
    invoke-virtual {p1, p2}, Lcom/apk/my;->final(Lorg/json/JSONObject;)Lcom/apk/my;

    .line 15
    invoke-virtual {p1, v1}, Lcom/apk/qy;->case(Lcom/apk/mx;)V

    goto :goto_1

    .line 16
    :cond_2
    new-instance p1, Lcom/apk/ly;

    invoke-direct {p1, p0}, Lcom/apk/ly;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, v4, v5}, Lcom/apk/qy;->if(J)Lcom/apk/qy;

    .line 18
    iput-object v2, p1, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 19
    invoke-virtual {p1, v1}, Lcom/apk/qy;->case(Lcom/apk/mx;)V

    .line 20
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static try(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/q80;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/ja0$do;

    invoke-direct {v0, p4}, Lcom/apk/ja0$do;-><init>(Lcom/apk/q80;)V

    .line 2
    new-instance p4, Lcom/apk/ky;

    invoke-direct {p4, p0}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    cmp-long p0, p1, v1

    if-gtz p0, :cond_0

    move-wide p1, v1

    .line 3
    :cond_0
    iput-wide p1, p4, Lcom/apk/qy;->goto:J

    .line 4
    iput-object p3, p4, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 5
    invoke-virtual {p4, v0}, Lcom/apk/qy;->new(Lcom/apk/mx;)V

    return-void
.end method
