.class public Lcom/apk/s0;
.super Ljava/lang/Object;
.source "ReadTimerHelper.java"


# static fields
.field public static extends:Lcom/apk/s0;


# instance fields
.field public break:I

.field public case:Ljava/lang/String;

.field public catch:Ljava/lang/String;

.field public class:Z

.field public const:Z

.field public default:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation
.end field

.field public do:I

.field public else:Z

.field public final:Ljava/util/Timer;

.field public for:Z

.field public goto:I

.field public if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation
.end field

.field public import:I

.field public native:Ljava/lang/String;

.field public new:Z

.field public public:I

.field public return:Ljava/lang/String;

.field public static:Z

.field public super:Ljava/lang/String;

.field public switch:Z

.field public this:I

.field public throw:Ljava/lang/String;

.field public throws:I

.field public try:Ljava/lang/String;

.field public while:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static if()Lcom/apk/s0;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/s0;->extends:Lcom/apk/s0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/s0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/s0;->extends:Lcom/apk/s0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/s0;

    invoke-direct {v1}, Lcom/apk/s0;-><init>()V

    sput-object v1, Lcom/apk/s0;->extends:Lcom/apk/s0;

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
    sget-object v0, Lcom/apk/s0;->extends:Lcom/apk/s0;

    return-object v0
.end method


# virtual methods
.method public case(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "tips"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/s0;->super:Ljava/lang/String;

    const-string v0, "btn"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/s0;->throw:Ljava/lang/String;

    const-string v0, "book_size"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/apk/s0;->while:I

    const-string v0, "fee_size"

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/apk/s0;->import:I

    const-string v0, "tips_mh"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/s0;->native:Ljava/lang/String;

    const-string v0, "btn_mh"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/s0;->return:Ljava/lang/String;

    const-string v0, "mh_c_size"

    const/4 v2, 0x5

    .line 7
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/apk/s0;->public:I

    const-string v0, "fee_c_mh"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "DB_VIDEO_CHAPTER_REWARD_XZ_COMIC_KEY"

    .line 9
    invoke-static {v2}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v3, v2, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v0, "time_scope"

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toady"

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/s0;->static:Z

    const-string v0, "is_show_tgbtn"

    .line 13
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apk/s0;->switch:Z

    .line 14
    invoke-virtual {p0, p2}, Lcom/apk/s0;->new(Lorg/json/JSONObject;)V

    return-void
.end method

.method public do()Lcom/apk/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/s0;->if:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/apk/s0;->do:I

    iget-object v1, p0, Lcom/apk/s0;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/apk/s0;->if:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;

    .line 4
    iget v1, p0, Lcom/apk/s0;->do:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/apk/s0;->do:I

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public else(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/s0;->for:Z

    const-string v1, "tips"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/s0;->try:Ljava/lang/String;

    const-string v1, "btn"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/s0;->case:Ljava/lang/String;

    const-string v1, "firstfee"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/apk/s0;->this:I

    if-nez v1, :cond_0

    const-string v1, "feedays"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/apk/s0;->break:I

    :cond_0
    const-string v1, "perminutes"

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/apk/s0;->goto:I

    const-string v1, "time_scope"

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "public"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/apk/s0;->class:Z

    const-string v2, "today"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/apk/s0;->const:Z

    const-string v1, "today_tips"

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/s0;->catch:Ljava/lang/String;

    const-string v1, "is_show_tgbtn"

    .line 11
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apk/s0;->else:Z

    .line 12
    invoke-virtual {p0, p2}, Lcom/apk/s0;->new(Lorg/json/JSONObject;)V

    return-void
.end method

.method public for()Lcom/apk/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/s0;->if:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/s0;->if:Ljava/util/List;

    iget v1, p0, Lcom/apk/s0;->do:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final goto(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)Z
    .locals 9

    .line 1
    sget-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, p2, :cond_4

    .line 2
    iget v5, p0, Lcom/apk/s0;->while:I

    if-nez v5, :cond_0

    return v4

    .line 3
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB_VIDEO_REWARD_XZ_KEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {p3}, Lcom/apk/else;->for(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CacheBean;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 5
    iget-boolean v5, p0, Lcom/apk/s0;->static:Z

    if-eqz v5, :cond_2

    .line 6
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SP_NOVEL_XZ_TODAY_KEY"

    .line 7
    invoke-static {v7, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    :cond_1
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1, v7, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    return v4

    .line 10
    :cond_3
    iget v2, p0, Lcom/apk/s0;->import:I

    invoke-static {v6, v2}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_8

    sub-int/2addr v2, v3

    .line 11
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1, v6, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-static {p3}, Lcom/apk/else;->case(Ljava/lang/String;)Z

    return v4

    :cond_4
    if-ne v0, p2, :cond_8

    .line 13
    iget p3, p0, Lcom/apk/s0;->public:I

    if-nez p3, :cond_5

    return v4

    :cond_5
    const-string p3, "DB_VIDEO_CHAPTER_REWARD_XZ_COMIC_KEY"

    .line 14
    invoke-static {p3, v4}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result p3

    if-lez p3, :cond_8

    .line 15
    iget-boolean p3, p0, Lcom/apk/s0;->static:Z

    if-eqz p3, :cond_7

    .line 16
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object p3

    const-string v5, "SP_COMIC_XZ_TODAY_KEY"

    .line 17
    invoke-static {v5, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 19
    :cond_6
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1, v5, p3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_7
    return v4

    :cond_8
    const/4 p3, 0x2

    if-ne v1, p2, :cond_9

    .line 20
    iget-object v0, p0, Lcom/apk/s0;->super:Ljava/lang/String;

    goto :goto_0

    :cond_9
    if-ne v0, p2, :cond_a

    .line 21
    iget-object v0, p0, Lcom/apk/s0;->native:Ljava/lang/String;

    const/4 p3, 0x3

    goto :goto_0

    .line 22
    :cond_a
    iget-object v0, p0, Lcom/apk/s0;->super:Ljava/lang/String;

    .line 23
    :goto_0
    new-instance v1, Lcom/apk/lv;

    invoke-direct {v1}, Lcom/apk/lv;-><init>()V

    .line 24
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    iput-object v2, v1, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 26
    new-instance v2, Lcom/apk/s0$new;

    invoke-direct {v2, p0, p2}, Lcom/apk/s0$new;-><init>(Lcom/apk/s0;Lcom/apk/hf;)V

    .line 27
    iput-object v2, v1, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 28
    new-instance p2, Lcom/biquge/ebook/app/widget/VideoRewardDialog;

    iget-boolean v2, p0, Lcom/apk/s0;->switch:Z

    new-instance v4, Lcom/apk/s0$for;

    invoke-direct {v4, p0, p1, p3}, Lcom/apk/s0$for;-><init>(Lcom/apk/s0;Landroid/content/Context;I)V

    invoke-direct {p2, p1, v0, v2, v4}, Lcom/biquge/ebook/app/widget/VideoRewardDialog;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/biquge/ebook/app/widget/VideoRewardDialog$if;)V

    .line 29
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 30
    iput-boolean p1, v1, Lcom/apk/lv;->continue:Z

    .line 31
    iput-object v1, p2, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 32
    invoke-virtual {p2}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return v3
.end method

.method public final new(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/s0;->if:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "params"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "weight"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/apk/finally;->d(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/s0;->if:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public this(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    iput-object v1, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 4
    new-instance v1, Lcom/apk/s0$if;

    invoke-direct {v1, p0}, Lcom/apk/s0$if;-><init>(Lcom/apk/s0;)V

    .line 5
    iput-object v1, v0, Lcom/apk/lv;->throw:Lcom/apk/yv;

    .line 6
    new-instance v1, Lcom/biquge/ebook/app/widget/VideoRewardDialog;

    iget-object v2, p0, Lcom/apk/s0;->try:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/apk/s0;->else:Z

    new-instance v4, Lcom/apk/s0$do;

    invoke-direct {v4, p0, p1}, Lcom/apk/s0$do;-><init>(Lcom/apk/s0;Landroid/content/Context;)V

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/biquge/ebook/app/widget/VideoRewardDialog;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/biquge/ebook/app/widget/VideoRewardDialog$if;)V

    .line 7
    sget-boolean p1, Lcom/apk/zu;->try:Z

    .line 8
    iput-boolean p1, v0, Lcom/apk/lv;->continue:Z

    .line 9
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 10
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public try(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "params"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "weight"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lcom/apk/finally;->d(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/s0;->default:Ljava/util/List;

    return-void
.end method
