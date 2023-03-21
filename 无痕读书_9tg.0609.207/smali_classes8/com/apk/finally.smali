.class public Lcom/apk/finally;
.super Ljava/lang/Object;
.source "AdLoadManager.java"


# static fields
.field public static t:Lcom/apk/finally;


# instance fields
.field public a:Lorg/json/JSONObject;

.field public abstract:Lorg/json/JSONObject;

.field public b:Lorg/json/JSONObject;

.field public break:Lorg/json/JSONObject;

.field public c:Lorg/json/JSONObject;

.field public case:Lorg/json/JSONObject;

.field public catch:Z

.field public class:Lorg/json/JSONObject;

.field public const:Lorg/json/JSONObject;

.field public continue:Lorg/json/JSONObject;

.field public d:Lorg/json/JSONObject;

.field public default:Lorg/json/JSONObject;

.field public do:Z

.field public e:Lorg/json/JSONObject;

.field public else:Lorg/json/JSONObject;

.field public extends:Lorg/json/JSONObject;

.field public f:Lorg/json/JSONObject;

.field public final:Lorg/json/JSONObject;

.field public finally:I

.field public for:Lorg/json/JSONObject;

.field public g:Lorg/json/JSONObject;

.field public goto:Lorg/json/JSONObject;

.field public h:Lorg/json/JSONObject;

.field public i:Lorg/json/JSONObject;

.field public if:I

.field public implements:Lorg/json/JSONObject;

.field public import:Lorg/json/JSONObject;

.field public instanceof:Lorg/json/JSONObject;

.field public interface:Lorg/json/JSONObject;

.field public j:Lorg/json/JSONObject;

.field public k:Lorg/json/JSONObject;

.field public l:J

.field public m:I

.field public n:Lorg/json/JSONObject;

.field public native:Lorg/json/JSONObject;

.field public new:Lorg/json/JSONObject;

.field public o:Lorg/json/JSONObject;

.field public p:Lorg/json/JSONObject;

.field public package:Lorg/json/JSONObject;

.field public private:Lorg/json/JSONObject;

.field public protected:Lorg/json/JSONObject;

.field public public:Lorg/json/JSONObject;

.field public q:Lorg/json/JSONObject;

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation
.end field

.field public return:Lorg/json/JSONObject;

.field public s:I

.field public static:Lorg/json/JSONObject;

.field public strictfp:Lorg/json/JSONObject;

.field public super:Lorg/json/JSONObject;

.field public switch:Lorg/json/JSONObject;

.field public synchronized:Lorg/json/JSONObject;

.field public this:Lorg/json/JSONObject;

.field public throw:Lorg/json/JSONObject;

.field public throws:Lorg/json/JSONObject;

.field public transient:Lorg/json/JSONObject;

.field public try:Lorg/json/JSONObject;

.field public volatile:Lorg/json/JSONObject;

.field public while:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/apk/finally;->do:Z

    const-wide/32 v0, 0x927c0

    .line 3
    iput-wide v0, p0, Lcom/apk/finally;->l:J

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/apk/finally;->m:I

    return-void
.end method

.method public static break()I
    .locals 2

    const-string v0, "SP_VIDEO_FREE_AD_KEY"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c(Lorg/json/JSONArray;II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "II)",
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "adpt"

    .line 4
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "adid"

    .line 5
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v5, Lcom/apk/g;

    invoke-direct {v5, v4, v3}, Lcom/apk/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput p1, v5, Lcom/apk/g;->for:I

    .line 8
    iput p2, v5, Lcom/apk/g;->new:I

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static case()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v0

    invoke-static {}, Lcom/apk/eg;->static()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x40c66666    # 6.2f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static catch()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getNext_spgg()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x3

    :cond_1
    return v0
.end method

.method public static const(Lorg/json/JSONObject;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "close"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/apk/finally;->c(Lorg/json/JSONArray;II)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ":"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    array-length v1, p1

    if-lez v1, :cond_3

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 6
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 8
    aget-object v3, p1, v2

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_1

    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_3

    move-object p0, v1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-object p0
.end method

.method public static do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    const-string v0, "inst_list"

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    .line 1
    invoke-static {p0}, Lcom/apk/finally;->for(Lorg/json/JSONObject;)I

    move-result v2

    .line 2
    invoke-static {p1, v2}, Lcom/swl/gg/sdk/TrAdSdk;->isDayMax(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v1

    :cond_0
    const-string p1, "free_time_h"

    .line 3
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    .line 6
    iget p1, p1, Lcom/apk/finally;->if:I

    :goto_0
    const-string v2, "list"

    if-lez p1, :cond_3

    .line 7
    :try_start_0
    invoke-static {}, Lcom/apk/w0;->this()J

    move-result-wide v3

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-gez p1, :cond_3

    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 11
    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 14
    :cond_3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_4

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static e(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/apk/finally;->new(Lorg/json/JSONObject;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/apk/finally;->for(Lorg/json/JSONObject;)I

    move-result v1

    const-string v2, "list"

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/apk/finally;->c(Lorg/json/JSONArray;II)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static else()Lcom/apk/finally;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/finally;->t:Lcom/apk/finally;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/finally;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/finally;->t:Lcom/apk/finally;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/finally;

    invoke-direct {v1}, Lcom/apk/finally;-><init>()V

    sput-object v1, Lcom/apk/finally;->t:Lcom/apk/finally;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/finally;->t:Lcom/apk/finally;

    return-object v0
.end method

.method public static f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/apk/finally;->new(Lorg/json/JSONObject;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/apk/finally;->for(Lorg/json/JSONObject;)I

    move-result v1

    const-string v2, "list"

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/apk/finally;->c(Lorg/json/JSONArray;II)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ":"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    array-length v0, p1

    if-lez v0, :cond_3

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 10
    aget-object v3, p1, v2

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_1

    .line 12
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_3

    move-object p0, v0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-object p0
.end method

.method public static for(Lorg/json/JSONObject;)I
    .locals 1

    const-string v0, "day_max"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static g(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/apk/finally;->new(Lorg/json/JSONObject;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/apk/finally;->for(Lorg/json/JSONObject;)I

    move-result v1

    const-string v2, "video_list"

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/apk/finally;->c(Lorg/json/JSONArray;II)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static goto(Lorg/json/JSONObject;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "Interval"

    .line 1
    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :cond_0
    return-wide v0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f1002bf

    .line 1
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SP_RESTART_APP_TIPS_KEY"

    .line 2
    invoke-static {v1, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/apk/finally$do;

    invoke-direct {v1}, Lcom/apk/finally$do;-><init>()V

    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v0, v1, v2, v2}, Lcom/apk/eg;->j(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;ZZ)V

    return-void
.end method

.method public static if()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/finally;->break()I

    move-result v0

    invoke-static {}, Lcom/apk/finally;->catch()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static new(Lorg/json/JSONObject;)I
    .locals 1

    const-string v0, "per_req"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static try(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "adrandom"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    const-string v0, "SP_AD_RANDOM_LOAD_KEY"

    .line 3
    invoke-static {v0, p0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->e:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->e:Lorg/json/JSONObject;

    const-string v2, "toptotal"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public abstract()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->throws:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->throws:Lorg/json/JSONObject;

    const-string v2, "rectbdetail"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->c:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->c:Lorg/json/JSONObject;

    const-string v2, "topweek"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public class()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/apk/finally;->catch:Z

    .line 2
    iget-object v1, p0, Lcom/apk/finally;->class:Lorg/json/JSONObject;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/finally;->class:Lorg/json/JSONObject;

    const-string v3, "besttopad2"

    invoke-static {v1, v3}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iput-boolean v2, p0, Lcom/apk/finally;->catch:Z

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/apk/finally;->const:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/apk/finally;->const:Lorg/json/JSONObject;

    const-string v3, "besttopad"

    invoke-static {v1, v3}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public continue()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->switch:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->switch:Lorg/json/JSONObject;

    const-string v2, "rectbsy1"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public default()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->abstract:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->abstract:Lorg/json/JSONObject;

    const-string v2, "textlink"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public extends()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->import:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/apk/finally;->super(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->import:Lorg/json/JSONObject;

    const-string v2, "insertstsw2"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final final()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/apk/finally;->super(Z)Z

    move-result v0

    return v0
.end method

.method public finally()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->d:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->d:Lorg/json/JSONObject;

    const-string v2, "topmonth"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public implements()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->a:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->a:Lorg/json/JSONObject;

    const-string v2, "topicrecommend"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public import()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->transient:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->transient:Lorg/json/JSONObject;

    const-string v2, "bshomelist"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public instanceof()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->instanceof:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->instanceof:Lorg/json/JSONObject;

    const-string v2, "topichot"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public interface()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->k:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->k:Lorg/json/JSONObject;

    const-string v2, "shelfrect"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public native()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->this:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->this:Lorg/json/JSONObject;

    const-string v2, "bsinfonative"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public package()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->extends:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->extends:Lorg/json/JSONObject;

    const-string v2, "myfootprint"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public private()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->private:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->private:Lorg/json/JSONObject;

    const-string v2, "readoverVideos"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public protected()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->j:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/apk/finally;->super(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->j:Lorg/json/JSONObject;

    const-string v2, "toforeground"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public public()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->h:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->h:Lorg/json/JSONObject;

    const-string v2, "categorylist"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public return()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->final:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->final:Lorg/json/JSONObject;

    const-string v2, "chaptersmid2"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->super:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->super:Lorg/json/JSONObject;

    const-string v2, "chaptersmid_mh2"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public strictfp()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->static:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->static:Lorg/json/JSONObject;

    const-string v2, "rectsddetail"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final super(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/apk/finally;->do:Z

    return p1
.end method

.method public switch()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->new:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apk/finally;->super(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/apk/finally;->new:Lorg/json/JSONObject;

    const-string v3, "showInterval"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/apk/finally;->new:Lorg/json/JSONObject;

    const-string v4, "maxcount"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "dir_insert"

    .line 4
    invoke-static {v4, v2, v3}, Lcom/apk/i;->new(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/apk/finally;->new:Lorg/json/JSONObject;

    invoke-static {v2, v4}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public synchronized()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->b:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->b:Lorg/json/JSONObject;

    const-string v2, "topicnew"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public this(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lcom/apk/dg;->do:Ljava/util/Random;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public throw()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->native:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/apk/finally;->super(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->native:Lorg/json/JSONObject;

    const-string v2, "bannerlastpage2"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public throws()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->try:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apk/finally;->super(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/apk/finally;->try:Lorg/json/JSONObject;

    const-string v3, "showInterval"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/apk/finally;->try:Lorg/json/JSONObject;

    const-string v4, "maxcount"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "dir_rect"

    .line 4
    invoke-static {v4, v2, v3}, Lcom/apk/i;->new(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/apk/finally;->try:Lorg/json/JSONObject;

    invoke-static {v2, v4}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public transient()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->synchronized:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->synchronized:Lorg/json/JSONObject;

    const-string v2, "topiccollect"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public volatile()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->volatile:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->volatile:Lorg/json/JSONObject;

    const-string v2, "sddetaillist"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public while()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/finally;->strictfp:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/finally;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/finally;->strictfp:Lorg/json/JSONObject;

    const-string v2, "blocknative"

    invoke-static {v0, v2}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
