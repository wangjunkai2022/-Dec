.class public Lcom/apk/jb0;
.super Ljava/lang/Object;
.source "TrDanMuManager.java"


# static fields
.field public static for:Lcom/apk/jb0;


# instance fields
.field public final do:Lcom/apk/wb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/wb0<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Lcom/apk/wb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/wb0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/wb0;

    invoke-direct {v0}, Lcom/apk/wb0;-><init>()V

    iput-object v0, p0, Lcom/apk/jb0;->do:Lcom/apk/wb0;

    .line 3
    new-instance v0, Lcom/apk/wb0;

    invoke-direct {v0}, Lcom/apk/wb0;-><init>()V

    iput-object v0, p0, Lcom/apk/jb0;->if:Lcom/apk/wb0;

    return-void
.end method

.method public static do(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/apk/jb0$do;

    invoke-direct {v1, v0}, Lcom/apk/jb0$do;-><init>(Ljava/util/List;)V

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

.method public static for()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v0

    check-cast v0, Lcom/apk/mb0;

    .line 2
    iget-object v0, v0, Lcom/apk/mb0;->do:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "SP_DANMU_SDK_REQUEST_TOKEN_KEY"

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static if(Lcom/apk/jb0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/xb0;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "count"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p5, :cond_0

    .line 4
    invoke-interface {p5, p3, p4, p1}, Lcom/apk/xb0;->do(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    if-ltz p1, :cond_1

    .line 5
    iget-object p3, p0, Lcom/apk/jb0;->do:Lcom/apk/wb0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/apk/wb0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/apk/jb0;->if:Lcom/apk/wb0;

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p0, p2}, Lcom/apk/wb0;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 9
    throw p0
.end method

.method public static new()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/fa0;->final()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/fa0;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/apk/xw;->if:Lcom/apk/xw;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/apk/jb0;->do(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "data"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v1

    check-cast v1, Lcom/apk/mb0;

    .line 6
    iget-object v2, v1, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_0

    const-string v3, "SP_DANMU_SDK_REQUEST_TOKEN_KEY"

    .line 7
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/apk/mb0;->do()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method
