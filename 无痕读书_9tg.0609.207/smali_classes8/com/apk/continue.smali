.class public Lcom/apk/continue;
.super Ljava/lang/Object;
.source "AdViewUtil.java"


# static fields
.field public static default:Lcom/apk/continue;


# instance fields
.field public break:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

.field public case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreConfigBean;",
            ">;"
        }
    .end annotation
.end field

.field public catch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreConfigBean;",
            ">;"
        }
    .end annotation
.end field

.field public class:Lcom/biquge/ebook/app/bean/SrhConfBean;

.field public const:Lcom/biquge/ebook/app/bean/WebConfBean;

.field public do:Lcom/apk/gf;

.field public else:Lcom/biquge/ebook/app/bean/SameCommendBean;

.field public final:Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;

.field public for:Lcom/biquge/ebook/app/bean/NewYyConfBean;

.field public goto:Lcom/biquge/ebook/app/bean/BarrageConfigBean;

.field public if:Z

.field public import:Lcom/biquge/ebook/app/bean/DiscoverBean;

.field public native:Lorg/json/JSONObject;

.field public new:Lcom/biquge/ebook/app/bean/NewShareDisBean;

.field public public:Lorg/json/JSONObject;

.field public return:Lorg/json/JSONArray;

.field public static:Z

.field public super:Lcom/biquge/ebook/app/bean/UserPrivacyBean;

.field public switch:Z

.field public this:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

.field public throw:I

.field public throws:Lcom/biquge/ebook/app/bean/MyInfoMsgBean;

.field public try:I

.field public while:Lcom/apk/hf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/apk/bf;->do:Lcom/apk/gf;

    sget-object v0, Lcom/apk/gf;->do:Lcom/apk/gf;

    iput-object v0, p0, Lcom/apk/continue;->do:Lcom/apk/gf;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/apk/continue;->if:Z

    .line 4
    iput v0, p0, Lcom/apk/continue;->throw:I

    .line 5
    sget-object v0, Lcom/apk/bf;->if:Lcom/apk/hf;

    sget-object v0, Lcom/apk/hf;->for:Lcom/apk/hf;

    iput-object v0, p0, Lcom/apk/continue;->while:Lcom/apk/hf;

    return-void
.end method

.method public static do(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "chls"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    .line 3
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 4
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "c"

    .line 5
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    .line 8
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 9
    array-length v9, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v7, v10

    .line 10
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v2, "ids_man"

    .line 11
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ids_lady"

    .line 12
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 13
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "def_man"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "def_lady"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static if()Lcom/apk/continue;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/continue;->default:Lcom/apk/continue;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/continue;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/continue;->default:Lcom/apk/continue;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/continue;

    invoke-direct {v1}, Lcom/apk/continue;-><init>()V

    sput-object v1, Lcom/apk/continue;->default:Lcom/apk/continue;

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
    sget-object v0, Lcom/apk/continue;->default:Lcom/apk/continue;

    return-object v0
.end method


# virtual methods
.method public case()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/continue;->while:Lcom/apk/hf;

    sget-object v1, Lcom/apk/hf;->for:Lcom/apk/hf;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public else()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/continue;->do:Lcom/apk/gf;

    sget-object v1, Lcom/apk/gf;->if:Lcom/apk/gf;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public for()Lcom/biquge/ebook/app/bean/NewShareDisBean;
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/ze;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/continue;->new:Lcom/biquge/ebook/app/bean/NewShareDisBean;

    return-object v0
.end method

.method public goto(Lorg/json/JSONObject;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/apk/hf;->if:Lcom/apk/hf;

    sget-object v3, Lcom/apk/hf;->do:Lcom/apk/hf;

    const-string v4, "discover"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    .line 2
    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v7

    const-string v8, "title"

    .line 3
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "default"

    .line 4
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "icon"

    .line 5
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/2addr v11, v6

    const-string v12, "pubver"

    .line 7
    invoke-virtual {v4, v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "DISCOVER_PUBVER_KEY"

    .line 8
    invoke-static {v13, v5}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v14

    if-le v12, v14, :cond_0

    .line 9
    sget-object v14, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v15, "SP_IS_VISIBLE_GAME_TAG_VIEW_KEY"

    invoke-virtual {v14, v15, v6}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    sget-object v14, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v14, v13, v12}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v12, "conf"

    .line 11
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_3

    .line 13
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "apid"

    .line 14
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 15
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v4, "url"

    .line 16
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    const-string v7, "showflag"

    .line 18
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    .line 19
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    move-object v9, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v11, :cond_4

    .line 20
    new-instance v4, Lcom/biquge/ebook/app/bean/DiscoverBean;

    invoke-direct {v4}, Lcom/biquge/ebook/app/bean/DiscoverBean;-><init>()V

    .line 21
    invoke-virtual {v4, v9}, Lcom/biquge/ebook/app/bean/DiscoverBean;->setDiscoverUrl(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, v8}, Lcom/biquge/ebook/app/bean/DiscoverBean;->setDiscoverTitle(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4, v10}, Lcom/biquge/ebook/app/bean/DiscoverBean;->setDiscoverIcon(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 24
    :goto_2
    iput-object v4, v0, Lcom/apk/continue;->import:Lcom/biquge/ebook/app/bean/DiscoverBean;

    :cond_5
    const-string v4, "comment"

    .line 25
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "openflag"

    if-eqz v4, :cond_6

    .line 26
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 27
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 28
    sget-object v9, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v10, "SP_OPEN_COMMENT_FLAG_KEY"

    invoke-virtual {v9, v10, v8}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v8, "token_ym"

    .line 29
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "dt_ym"

    .line 30
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "jt_ym"

    .line 31
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-static {v8, v9, v4}, Lcom/tr/comment/sdk/TrCommentSdk;->setCommentHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_6
    invoke-static {}, Lcom/apk/w0;->throws()Z

    move-result v4

    const-string v8, "open_flag"

    if-eqz v4, :cond_7

    const-string v4, "plsdk_extra"

    .line 34
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 35
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 36
    iput-object v4, v0, Lcom/apk/continue;->native:Lorg/json/JSONObject;

    const-string v9, "ad_conf"

    .line 37
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, v0, Lcom/apk/continue;->public:Lorg/json/JSONObject;

    :cond_7
    const-string v4, "moduleflag"

    .line 38
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 40
    invoke-static {v4}, Lcom/apk/ze;->default(Ljava/lang/String;)Lcom/apk/hf;

    move-result-object v9

    iput-object v9, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    :cond_8
    const-string v9, "xsmhtime"

    .line 41
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "SP_APP_CHANGE_MODULE_DAY_KEY"

    if-eqz v10, :cond_9

    .line 42
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 43
    sget-object v10, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v10, v11, v9}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_9
    const-string v9, "xsmhflag"

    .line 44
    invoke-virtual {v1, v9, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v9, ""

    if-eqz v6, :cond_e

    .line 45
    iget-object v6, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    const-string v12, "SP_APP_CONFIG_MODULE_KEY"

    if-eq v6, v3, :cond_b

    if-ne v6, v2, :cond_a

    goto :goto_3

    .line 46
    :cond_a
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v5, v12, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 47
    :cond_b
    :goto_3
    iget-object v4, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    sget-object v6, Lcom/apk/bf;->if:Lcom/apk/hf;

    sget-object v6, Lcom/apk/hf;->for:Lcom/apk/hf;

    if-eq v4, v6, :cond_e

    const-string v4, "SP_APP_SINGLE_MODULE_FIRST_DATA_KEY"

    .line 48
    invoke-static {v4}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 50
    sget-object v10, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v10, v4, v5, v6}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 51
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object v6, v11

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v4, v10, v11}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 53
    invoke-static {v13, v14, v10, v11}, Lcom/apk/kg;->do(JJ)I

    move-result v4

    const-string v10, "SP_APP_CONFIG_MODULE_BIAOJI_KEY"

    .line 54
    invoke-static {v10, v5}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_d

    .line 55
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x7

    invoke-static {v6, v5}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v5

    if-lt v4, v5, :cond_e

    .line 56
    :cond_d
    sget-object v4, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const/4 v5, 0x1

    invoke-virtual {v4, v10, v5}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-static {v12, v9}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {v4}, Lcom/apk/ze;->default(Ljava/lang/String;)Lcom/apk/hf;

    move-result-object v4

    iput-object v4, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    :cond_e
    :goto_4
    const-string v4, "mhpreimgs"

    .line 59
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 60
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 61
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_PRELOAD_COMIC_IMAGE_SIZE_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_f
    const-string v4, "barrageflag"

    .line 62
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 63
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 64
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_OPEN_BARRAGE_FLAG_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_10
    const-string v4, "barragehost"

    .line 65
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 66
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tr/danmu/sdk/TrDanMuSdk;->setHost(Ljava/lang/String;)V

    :cond_11
    const-string v4, "scads"

    .line 67
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 68
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/apk/continue;->throw:I

    :cond_12
    const-string v4, "copyrightflag"

    const/4 v5, 0x1

    .line 69
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 70
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_FILTER_FLAG_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "copyrighttime"

    .line 71
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v10, "SP_FILTER_AUTO_RESTORE_DAYS_KEY"

    if-eqz v5, :cond_13

    .line 72
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 73
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v5, v10, v4}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_13
    const-string v4, "copyright_dis"

    .line 74
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 75
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1a

    .line 76
    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_5
    if-ge v12, v11, :cond_19

    .line 78
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_17

    move-object/from16 v16, v4

    const-string v4, "channel"

    .line 79
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v17, v11

    const-string v11, "appid"

    .line 80
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_16

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_14

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_14
    const-string v4, "&"

    .line 82
    invoke-virtual {v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 83
    array-length v11, v4

    if-lez v11, :cond_16

    .line 84
    array-length v11, v4

    const/16 v18, 0x0

    move-object/from16 v18, v5

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v11, :cond_18

    move/from16 v19, v11

    aget-object v11, v4, v5

    move-object/from16 v20, v4

    .line 85
    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "blocks"

    .line 86
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "blocks_mh"

    .line 87
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v14, v4

    move-object v13, v11

    :cond_15
    add-int/lit8 v5, v5, 0x1

    move/from16 v11, v19

    move-object/from16 v4, v20

    goto :goto_6

    :cond_16
    move-object/from16 v18, v5

    goto :goto_7

    :cond_17
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v17, v11

    :cond_18
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v16

    move/from16 v11, v17

    move-object/from16 v5, v18

    goto :goto_5

    :cond_19
    const/4 v4, 0x1

    goto :goto_8

    :cond_1a
    const/4 v4, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 88
    :goto_8
    invoke-static {v6, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, ","

    const-string v11, "SP_FILTER_COMIC_EMPTY_KEY"

    const-string v12, "SP_FILTER_NOVEL_EMPTY_KEY"

    const-string v15, "SP_FILTER_BOOK_NOVEL_KEY"

    if-eqz v4, :cond_21

    .line 89
    invoke-static {v15, v9}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 91
    sget-object v4, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    move-object/from16 v16, v8

    const/4 v8, 0x1

    invoke-virtual {v4, v12, v8}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_9

    :cond_1b
    move-object/from16 v16, v8

    :goto_9
    const/4 v4, 0x0

    .line 92
    invoke-static {v12, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 93
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 94
    invoke-virtual {v14, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 95
    array-length v8, v4

    const/16 v17, 0x0

    move-object/from16 v18, v2

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v8, :cond_20

    move/from16 v17, v8

    aget-object v8, v4, v2

    .line 96
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1d

    move-object/from16 v19, v4

    const-string v4, "SP_FILTER_NOVEL_TIME_KEY"

    .line 97
    invoke-static {v4, v8}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-static {v4}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1c

    move-object/from16 v20, v7

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v21, v3

    .line 100
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v3, v4, v7, v8}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_b

    :cond_1c
    move-object/from16 v21, v3

    move-object/from16 v20, v7

    const-wide/16 v7, 0x0

    .line 101
    invoke-static {v4, v7, v8}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v22, v3, v7

    if-eqz v22, :cond_1e

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Lcom/apk/kg;->do(JJ)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x7

    .line 103
    invoke-static {v10, v4}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v4

    if-lt v3, v4, :cond_1e

    .line 104
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const/4 v3, 0x1

    invoke-virtual {v2, v12, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v11, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_c

    :cond_1d
    move-object/from16 v21, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    :cond_1e
    :goto_b
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v17

    move-object/from16 v4, v19

    move-object/from16 v7, v20

    move-object/from16 v3, v21

    goto :goto_a

    :cond_1f
    move-object/from16 v18, v2

    :cond_20
    move-object/from16 v21, v3

    move-object/from16 v20, v7

    goto :goto_c

    :cond_21
    move-object/from16 v18, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v7

    move-object/from16 v16, v8

    .line 106
    :goto_c
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 107
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v15, v14}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_d

    .line 108
    :cond_22
    invoke-static {v15}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    :goto_d
    const/4 v2, 0x1

    .line 109
    invoke-static {v6, v2}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 110
    invoke-static {v15, v9}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 112
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v3, v11, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_23
    const/4 v2, 0x0

    .line 113
    invoke-static {v11, v2}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_26

    .line 114
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 115
    invoke-virtual {v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 116
    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_26

    aget-object v6, v2, v4

    .line 117
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    const-string v7, "SP_FILTER_COMIC_TIME_KEY"

    .line 118
    invoke-static {v7, v6}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-static {v6}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 121
    sget-object v14, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v14, v6, v7, v8}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_f

    :cond_24
    const-wide/16 v7, 0x0

    .line 122
    invoke-static {v6, v7, v8}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v14

    cmp-long v6, v14, v7

    if-eqz v6, :cond_25

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v14, v15, v6, v7}, Lcom/apk/kg;->do(JJ)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x7

    .line 124
    invoke-static {v10, v7}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v7

    if-lt v6, v7, :cond_25

    .line 125
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const/4 v3, 0x1

    invoke-virtual {v2, v12, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 126
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v11, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    :cond_25
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 127
    :cond_26
    :goto_10
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SP_FILTER_BOOK_COMIC_KEY"

    if-nez v2, :cond_27

    .line 128
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v3, v13}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    .line 129
    :cond_27
    invoke-static {v3}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    :goto_11
    const-string v2, "how_set_qx"

    .line 130
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 131
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_REQUEST_SD_PERMISSIONS_H5_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_28
    const-string v2, "retrycounts"

    .line 133
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 134
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "SP_VIDEO_AD_RETRY_COUNT_KEY"

    .line 135
    invoke-static {v3, v2}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    .line 136
    :cond_29
    invoke-virtual/range {p0 .. p1}, Lcom/apk/continue;->try(Lorg/json/JSONObject;)V

    const-string v2, "yyonline"

    .line 137
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyconf"

    .line 138
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2b

    .line 140
    :cond_2a
    new-instance v4, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;

    invoke-direct {v4}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;-><init>()V

    iput-object v4, v0, Lcom/apk/continue;->final:Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;

    .line 141
    invoke-virtual {v4, v2}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->setYyonline(Ljava/lang/String;)V

    .line 142
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/apk/pf;

    invoke-direct {v3}, Lcom/apk/pf;-><init>()V

    .line 143
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 144
    invoke-static {v2, v3}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    :catch_0
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_2b

    .line 145
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2b

    .line 146
    iget-object v3, v0, Lcom/apk/continue;->final:Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;

    invoke-virtual {v3, v2}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->setYyconf(Ljava/util/List;)V

    .line 147
    iget-object v3, v0, Lcom/apk/continue;->final:Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;

    .line 148
    sget-object v4, Lcom/apk/dg;->do:Ljava/util/Random;

    .line 149
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/biquge/ebook/app/bean/BaiduTtsConfigBean;->setIndex(I)V

    :cond_2b
    const-string v2, "openfull"

    .line 150
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 151
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 152
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_SPLASH_AD_FULL_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2c
    const-string v2, "needlogin"

    .line 153
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2f

    const-string v3, "xz"

    .line 154
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 155
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 156
    sget-object v4, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_LOGIN_CHECK_XZ_KEY"

    invoke-virtual {v4, v6, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2d
    const-string v3, "listen"

    .line 157
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 158
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 159
    sget-object v4, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_LOGIN_CHECK_LISTEN_KEY"

    invoke-virtual {v4, v6, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2e
    const-string v3, "bs_size"

    .line 160
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 161
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 162
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_LOGIN_CHECK_BS_SIZE_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2f
    const-string v2, "sourcePackageName"

    .line 163
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    const-string v3, "SYNC_SHELF_BOOKS_TAG"

    const/4 v4, 0x1

    .line 164
    invoke-static {v3, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 165
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_30
    const-string v2, "webconf"

    .line 166
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 167
    const-class v3, Lcom/biquge/ebook/app/bean/WebConfBean;

    invoke-static {v3, v2}, Lcom/apk/ze;->n0(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/WebConfBean;

    iput-object v2, v0, Lcom/apk/continue;->const:Lcom/biquge/ebook/app/bean/WebConfBean;

    :cond_31
    const-string v2, "srh_conf"

    .line 168
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 169
    const-class v3, Lcom/biquge/ebook/app/bean/SrhConfBean;

    invoke-static {v3, v2}, Lcom/apk/ze;->n0(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/SrhConfBean;

    iput-object v2, v0, Lcom/apk/continue;->class:Lcom/biquge/ebook/app/bean/SrhConfBean;

    .line 170
    :cond_32
    invoke-static {}, Lcom/apk/ze;->B()Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "sj_first_bids"

    .line 171
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 172
    invoke-static {v2}, Lcom/apk/continue;->do(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 173
    :goto_13
    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_35

    .line 174
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 175
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_34

    if-nez v3, :cond_33

    .line 176
    sget-object v6, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v7, "SP_AOTU_ADD_SHELD_IDS_MAN_KEY"

    invoke-virtual {v6, v7, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    :cond_33
    const/4 v6, 0x1

    if-ne v3, v6, :cond_34

    .line 177
    sget-object v6, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v7, "SP_AOTU_ADD_SHELD_IDS_LADY_KEY"

    invoke-virtual {v6, v7, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_34
    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_35
    const-string v2, "sj_task_bids"

    .line 178
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ver"

    if-eqz v2, :cond_38

    .line 179
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "SP_AOTU_ADD_SHELD_IDS_VERSION_KEY"

    const/4 v7, 0x0

    .line 180
    invoke-static {v6, v7}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v8

    if-eq v4, v8, :cond_38

    const-string v8, "isClearNoRead"

    .line 181
    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 182
    sget-object v8, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v10, "SP_AOTU_ADD_CLEAR_NO_READ_KEY"

    invoke-virtual {v8, v10, v7}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 183
    sget-object v7, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v7, v6, v4}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-static {v2}, Lcom/apk/continue;->do(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    .line 185
    :goto_15
    move-object v6, v2

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_38

    .line 186
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 187
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_37

    if-nez v4, :cond_36

    .line 188
    sget-object v7, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v8, "SP_AOTU_ADD_SHELD_IDS_VERSION_VALUE_MAN_KEY"

    invoke-virtual {v7, v8, v6}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_16

    :cond_36
    const/4 v7, 0x1

    if-ne v4, v7, :cond_37

    .line 189
    sget-object v7, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v8, "SP_AOTU_ADD_SHELD_IDS_VERSION_VALUE_LADY_KEY"

    invoke-virtual {v7, v8, v6}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_37
    :goto_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 190
    :cond_38
    invoke-static {}, Lcom/apk/ze;->B()Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "sjmh_first_bids"

    .line 191
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 192
    invoke-static {v2}, Lcom/apk/continue;->do(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    .line 193
    :goto_17
    move-object v6, v2

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3b

    .line 194
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 195
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3a

    if-nez v4, :cond_39

    .line 196
    sget-object v7, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v8, "SP_AOTU_ADD_CRATTON_SHELD_IDS_MAN_KEY"

    invoke-virtual {v7, v8, v6}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_18

    :cond_39
    const/4 v7, 0x1

    if-ne v4, v7, :cond_3a

    .line 197
    sget-object v7, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v8, "SP_AOTU_ADD_CRATTON_SHELD_IDS_LADY_KEY"

    invoke-virtual {v7, v8, v6}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3a
    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_3b
    const-string v2, "sjmh_task_bids"

    .line 198
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 199
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_KEY"

    const/4 v6, 0x0

    .line 200
    invoke-static {v4, v6}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_3e

    const-string v4, "isClearNoRead"

    .line 201
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 202
    sget-object v6, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v7, "SP_AOTU_ADD_CRATTON_CLEAR_NO_READ_KEY"

    invoke-virtual {v6, v7, v4}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 203
    sget-object v4, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_KEY"

    invoke-virtual {v4, v6, v3}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-static {v2}, Lcom/apk/continue;->do(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 205
    :goto_19
    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3e

    .line 206
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 207
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3d

    if-nez v3, :cond_3c

    .line 208
    sget-object v6, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v7, "SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_VALUE_MAN_KEY"

    invoke-virtual {v6, v7, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1a

    :cond_3c
    const/4 v6, 0x1

    if-ne v3, v6, :cond_3d

    .line 209
    sget-object v6, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v7, "SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_VALUE_LADY_KEY"

    invoke-virtual {v6, v7, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3d
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_3e
    const-string v2, "channels"

    .line 210
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 211
    invoke-static {v2}, Lcom/apk/ze;->m0(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/continue;->catch:Ljava/util/List;

    :cond_3f
    const-string v2, "mhtg2"

    .line 212
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v3, v20

    if-eqz v2, :cond_41

    .line 213
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 214
    const-class v4, Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    invoke-static {v4, v2}, Lcom/apk/ze;->n0(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    iput-object v2, v0, Lcom/apk/continue;->this:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    if-eqz v2, :cond_41

    .line 215
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getPgname()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SP_MHTG2_INSTALL_TIME_KEY"

    const-wide/16 v6, 0x0

    .line 216
    invoke-static {v4, v6, v7}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-nez v4, :cond_40

    .line 217
    invoke-static {v2}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 219
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_MHTG2_INSTALL_TIME_KEY"

    invoke-virtual {v2, v4, v6, v7}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1b

    :cond_40
    const-string v4, "SP_MHTG2_SHOW_MANDATOR_KEY"

    const/4 v6, 0x0

    .line 220
    invoke-static {v4, v6}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 221
    invoke-static {v2}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7, v10, v11}, Lcom/apk/kg;->do(JJ)I

    move-result v2

    .line 223
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_41

    move-object/from16 v2, v21

    .line 224
    iput-object v2, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    :cond_41
    :goto_1b
    const-string v2, "xstg2"

    .line 225
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_43

    .line 226
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 227
    const-class v4, Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    invoke-static {v4, v2}, Lcom/apk/ze;->n0(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    iput-object v2, v0, Lcom/apk/continue;->break:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    if-eqz v2, :cond_43

    .line 228
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getPgname()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SP_XSTG2_INSTALL_TIME_KEY"

    const-wide/16 v6, 0x0

    .line 229
    invoke-static {v4, v6, v7}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-nez v4, :cond_42

    .line 230
    invoke-static {v2}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 232
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_XSTG2_INSTALL_TIME_KEY"

    invoke-virtual {v2, v4, v6, v7}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1c

    :cond_42
    const-string v4, "SP_XSTG2_SHOW_MANDATOR_KEY"

    const/4 v6, 0x0

    .line 233
    invoke-static {v4, v6}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 234
    invoke-static {v2}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7, v10, v11}, Lcom/apk/kg;->do(JJ)I

    move-result v2

    .line 236
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_43

    move-object/from16 v2, v18

    .line 237
    iput-object v2, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    :cond_43
    :goto_1c
    const-string v2, "big_data"

    .line 238
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "big_data"

    .line 239
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 240
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    const-string v3, "elk_rt_ver"

    .line 241
    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    const-string v4, "all"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_1d

    .line 243
    :cond_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/ze;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1e

    :cond_45
    :goto_1d
    const/4 v3, 0x1

    .line 244
    :cond_46
    :goto_1e
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v4

    if-eqz v4, :cond_48

    if-eqz v3, :cond_49

    .line 245
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v3

    const-class v4, Lcom/biquge/ebook/app/bean/BigDataAgentBean;

    invoke-static {v4, v2}, Lcom/apk/ze;->while(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/BigDataAgentBean;

    if-eqz v3, :cond_47

    goto :goto_1f

    :cond_47
    const/4 v1, 0x0

    .line 246
    throw v1

    :cond_48
    const/4 v1, 0x0

    .line 247
    throw v1

    :cond_49
    :goto_1f
    const-string v2, "dm_conf_v9"

    .line 248
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 249
    const-class v3, Lcom/biquge/ebook/app/bean/BarrageConfigBean;

    invoke-static {v3, v2}, Lcom/apk/ze;->n0(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/BarrageConfigBean;

    iput-object v2, v0, Lcom/apk/continue;->goto:Lcom/biquge/ebook/app/bean/BarrageConfigBean;

    :cond_4a
    const-string v2, "nr_source_bak"

    .line 250
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "nr_source_bak"

    .line 251
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_READ_SOURCE_TIPS_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4b
    const-string v2, "moudle_chls"

    .line 253
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 254
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4c

    .line 255
    invoke-static {v2}, Lcom/apk/ze;->m0(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/continue;->case:Ljava/util/List;

    :cond_4c
    const-string v2, "find_same"

    .line 256
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 257
    const-class v3, Lcom/biquge/ebook/app/bean/SameCommendBean;

    invoke-static {v3, v2}, Lcom/apk/ze;->n0(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/SameCommendBean;

    iput-object v2, v0, Lcom/apk/continue;->else:Lcom/biquge/ebook/app/bean/SameCommendBean;

    :cond_4d
    const-string v2, "idea_entry"

    .line 258
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string v2, "idea_entry"

    .line 259
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 260
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_NOVEL_IDEA_ENTRY_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_4e
    const-string v2, "topmsg"

    .line 261
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/continue;->return:Lorg/json/JSONArray;

    if-eqz v2, :cond_4f

    const-string v2, "topmsg_close"

    .line 262
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/apk/continue;->static:Z

    const-string v2, "topmsg_red"

    const/4 v3, 0x1

    .line 263
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/apk/continue;->switch:Z

    const-string v2, "topmsg_ver"

    .line 264
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "topmsg_ver"

    .line 265
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "SP_HOME_TOPMSG_RED_TAG_VER_KEY"

    .line 266
    invoke-static {v4, v3}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_4f

    .line 267
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_HOME_TOPMSG_RED_TAG_VER_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    .line 268
    invoke-static {v2}, Lcom/apk/w0;->volatile(Z)V

    :cond_4f
    const-string v2, "yu_pools"

    .line 269
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_YU_POOLS_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-static {}, Lcom/apk/ze;->E()Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "share_del_ad"

    .line 272
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_51

    move-object/from16 v3, v16

    .line 273
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 274
    const-class v3, Lcom/biquge/ebook/app/bean/NewShareDisBean;

    invoke-static {v3, v2}, Lcom/apk/ze;->while(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/NewShareDisBean;

    iput-object v2, v0, Lcom/apk/continue;->new:Lcom/biquge/ebook/app/bean/NewShareDisBean;

    .line 275
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getFir_spgg()I

    move-result v2

    if-lez v2, :cond_51

    .line 276
    iget-object v2, v0, Lcom/apk/continue;->new:Lcom/biquge/ebook/app/bean/NewShareDisBean;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getAd_pos_name()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 278
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v3

    if-eqz v3, :cond_50

    const-string v4, "weight"

    .line 279
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "params"

    .line 280
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 281
    invoke-static {v2, v4}, Lcom/apk/finally;->d(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v3, Lcom/apk/finally;->r:Ljava/util/List;

    goto :goto_20

    :cond_50
    const/4 v1, 0x0

    .line 282
    throw v1

    .line 283
    :cond_51
    :goto_20
    iget-object v2, v0, Lcom/apk/continue;->new:Lcom/biquge/ebook/app/bean/NewShareDisBean;

    if-nez v2, :cond_52

    const-string v2, "clotab_advalid"

    const/4 v3, 0x1

    .line 284
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 285
    new-instance v2, Lcom/biquge/ebook/app/bean/NewShareDisBean;

    invoke-direct {v2}, Lcom/biquge/ebook/app/bean/NewShareDisBean;-><init>()V

    iput-object v2, v0, Lcom/apk/continue;->new:Lcom/biquge/ebook/app/bean/NewShareDisBean;

    .line 286
    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->setOnlyCheckTime(Z)V

    :cond_52
    const-string v2, "yyconf_new"

    .line 287
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 288
    const-class v3, Lcom/biquge/ebook/app/bean/NewYyConfBean;

    invoke-static {v3, v2}, Lcom/apk/ze;->while(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/NewYyConfBean;

    iput-object v2, v0, Lcom/apk/continue;->for:Lcom/biquge/ebook/app/bean/NewYyConfBean;

    :cond_53
    const-string v2, "auto_login"

    .line 289
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string v2, "auto_login"

    .line 290
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 291
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_AUTO_REGISTER_LOGIN_INSTALL_DAY_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_54
    const-string v2, "to_guanwang"

    .line 292
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "to_guanwang"

    .line 293
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_TO_GUANWANG_REPLACE_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_55
    const-string v2, "new_rep_flag"

    .line 295
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string v2, "new_rep_flag"

    .line 296
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/apk/continue;->if:Z

    :cond_56
    const-string v2, "new_rep_host"

    .line 297
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string v2, "new_rep_host"

    .line 298
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_ANALYTICS_REPORT_HOST_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_57
    const-string v2, "new_rep_bytime"

    .line 300
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "new_rep_bytime"

    .line 301
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 302
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_ANALYTICS_REPORT_REQ_INTERVAL_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_58
    const-string v2, "new_rep_retrymax"

    .line 303
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string v2, "new_rep_retrymax"

    .line 304
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 305
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_ANALYTICS_REPORT_REQ_MAX_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_59
    const-string v2, "nonettrypass"

    .line 306
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string v2, "nonettrypass"

    .line 307
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 308
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_NONET_ALLOW_SKIP_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_5a
    const-string v2, "SP_CHANGE_APP_MODULE_KEY"

    .line 309
    invoke-static {v2, v9}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    iget-object v3, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 311
    iget-object v3, v0, Lcom/apk/continue;->while:Lcom/apk/hf;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    sget-object v4, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v5, "SP_CHANGE_APP_MODULE_KEY"

    invoke-virtual {v4, v5, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 313
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    const/4 v2, 0x0

    .line 314
    invoke-static {v2}, Lcom/apk/w0;->strictfp(I)V

    .line 315
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_BOOK_CITY_CURRENT_POSITION_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_5b
    const-string v2, "openAdClose"

    .line 316
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "openAdClose"

    const/4 v3, 0x1

    .line 317
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 318
    invoke-static {v2}, Lcom/swl/gg/sdk/TrAdSdk;->openAdClose(Z)V

    goto :goto_21

    :cond_5c
    const/4 v3, 0x1

    :goto_21
    const-string v2, "openAdCacheShow"

    .line 319
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string v2, "openAdCacheShow"

    .line 320
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 321
    invoke-static {v2}, Lcom/swl/gg/sdk/TrAdSdk;->openVideoCache_show(Z)V

    :cond_5d
    const-string v2, "openAdCloseModel"

    .line 322
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string v2, "openAdCloseModel"

    .line 323
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "b"

    .line 324
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 325
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_AD_CLOSE_MODEL_LONG_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_5e
    const-string v2, "restartAppTips"

    .line 326
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string v2, "restartAppTips"

    .line 327
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_RESTART_APP_TIPS_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5f
    const-string v2, "restartFlag"

    .line 329
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string v2, "restartFlag"

    .line 330
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 331
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_RESTART_APP_FLAG_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_60
    const-string v2, "rewardvalid"

    .line 332
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    const-string v2, "rewardvalid"

    .line 333
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 334
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_VIDEO_AD_REWARD_VALID_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_61
    const-string v2, "bdld_wifi_offline"

    .line 335
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, "bdld_wifi_offline"

    .line 336
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 337
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "BAIDU_TTS_WIFI_OFFLINE_ON"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_62
    const-string v2, "feedback_host"

    .line 338
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    const-string v2, "feedback_host"

    .line 339
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "FEEDBACK_CLOND_HOST_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_63
    const-string v2, "gw_page"

    .line 341
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string v2, "gw_page"

    .line 342
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "FEEDBACK_CLOND_GW_URL_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_64
    const-string v2, "feedback_clo"

    .line 344
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string v2, "feedback_clo"

    .line 345
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 346
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "FEEDBACK_NATIVE_FEEDBACK_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_65
    const-string v2, "last_read_tips"

    .line 347
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string v2, "last_read_tips"

    .line 348
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_66

    .line 349
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v3, "SP_HOME_CONTINUE_READ_KG_KEY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_66
    const-string v2, "srh_out_sites"

    .line 350
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v2, "srh_out_sites"

    .line 351
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 352
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_67

    .line 353
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_EXTERNAL_SITES_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_67
    const-string v2, "srh_out"

    .line 355
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string v2, "srh_out"

    .line 356
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_68

    const-string v3, "is_close"

    .line 357
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 358
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_WEB_SEARCH_FAST_OPEN_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_68
    const-string v2, "wj_need"

    .line 359
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "jl_pos"

    const-string v4, "flag"

    const-string v5, "tips"

    if-eqz v2, :cond_6a

    const-string v2, "wj_need"

    .line 360
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 361
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 362
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 363
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_69

    .line 364
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/apk/s0;->try(Lorg/json/JSONObject;)V

    .line 365
    :cond_69
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    sget-object v7, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v8, "CACHE_NOVEL_WJ_BATCH_CONFIG_KEY"

    invoke-virtual {v7, v8, v6}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 367
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 368
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/w0;->abstract(Ljava/lang/String;)V

    :cond_6a
    const-string v2, "new_xzxs_type"

    .line 369
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string v2, "new_xzxs_type"

    .line 370
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "zip"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string v2, "CACHE_NOVEL_WJ_BATCH_CONFIG_KEY"

    .line 371
    invoke-static {v2}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    :cond_6b
    const-string v2, "lz_need"

    .line 372
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string v2, "lz_need"

    .line 373
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 374
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 375
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 376
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_6c

    .line 377
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/apk/s0;->try(Lorg/json/JSONObject;)V

    .line 378
    :cond_6c
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 379
    sget-object v7, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v8, "CACHE_NOVEL_LZ_BATCH_CONFIG_KEY"

    invoke-virtual {v7, v8, v6}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 381
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/w0;->abstract(Ljava/lang/String;)V

    :cond_6d
    const-string v2, "fzyd_need"

    .line 382
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string v2, "fzyd_need"

    .line 383
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 384
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 385
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 387
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/apk/s0;->try(Lorg/json/JSONObject;)V

    .line 388
    :cond_6e
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "CACHE_NOVEL_FZYD_BATCH_CONFIG_KEY"

    invoke-virtual {v3, v4, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 391
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/w0;->abstract(Ljava/lang/String;)V

    :cond_6f
    return-void
.end method

.method public new()Lcom/biquge/ebook/app/bean/WebConfBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/continue;->const:Lcom/biquge/ebook/app/bean/WebConfBean;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/bean/WebConfBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/WebConfBean;-><init>()V

    iput-object v0, p0, Lcom/apk/continue;->const:Lcom/biquge/ebook/app/bean/WebConfBean;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/continue;->const:Lcom/biquge/ebook/app/bean/WebConfBean;

    return-object v0
.end method

.method public final try(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "privacy_info"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "email"

    const-string v2, "phone"

    const-string v3, "address"

    const-string v4, "company"

    if-eqz v0, :cond_0

    .line 2
    new-instance v5, Lcom/biquge/ebook/app/bean/UserPrivacyBean;

    invoke-direct {v5}, Lcom/biquge/ebook/app/bean/UserPrivacyBean;-><init>()V

    iput-object v5, p0, Lcom/apk/continue;->super:Lcom/biquge/ebook/app/bean/UserPrivacyBean;

    .line 3
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/biquge/ebook/app/bean/UserPrivacyBean;->setCompany(Ljava/lang/String;)V

    .line 4
    iget-object v5, p0, Lcom/apk/continue;->super:Lcom/biquge/ebook/app/bean/UserPrivacyBean;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/biquge/ebook/app/bean/UserPrivacyBean;->setAddress(Ljava/lang/String;)V

    .line 5
    iget-object v5, p0, Lcom/apk/continue;->super:Lcom/biquge/ebook/app/bean/UserPrivacyBean;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/biquge/ebook/app/bean/UserPrivacyBean;->setPhone(Ljava/lang/String;)V

    .line 6
    iget-object v5, p0, Lcom/apk/continue;->super:Lcom/biquge/ebook/app/bean/UserPrivacyBean;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/biquge/ebook/app/bean/UserPrivacyBean;->setEmail(Ljava/lang/String;)V

    :cond_0
    const-string v0, "privacy_info2"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "channel"

    .line 10
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 12
    new-instance p1, Lcom/biquge/ebook/app/bean/UserPrivacyBean;

    invoke-direct {p1}, Lcom/biquge/ebook/app/bean/UserPrivacyBean;-><init>()V

    iput-object p1, p0, Lcom/apk/continue;->super:Lcom/biquge/ebook/app/bean/UserPrivacyBean;

    .line 13
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/UserPrivacyBean;->setCompany(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/apk/continue;->super:Lcom/biquge/ebook/app/bean/UserPrivacyBean;

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/UserPrivacyBean;->setAddress(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/apk/continue;->super:Lcom/biquge/ebook/app/bean/UserPrivacyBean;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/UserPrivacyBean;->setPhone(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/apk/continue;->super:Lcom/biquge/ebook/app/bean/UserPrivacyBean;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/UserPrivacyBean;->setEmail(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
