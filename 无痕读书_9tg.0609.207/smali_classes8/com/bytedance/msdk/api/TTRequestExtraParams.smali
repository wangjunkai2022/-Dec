.class public Lcom/bytedance/msdk/api/TTRequestExtraParams;
.super Ljava/lang/Object;
.source "TTRequestExtraParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AD_VIDEO_PLAY_MUTE:I = 0x1

.field public static final AD_VIDEO_PLAY_NOT_MUTE:I = 0x2

.field public static final PARAM_AD_HEIGHT:Ljava/lang/String; = "ad_height"

.field public static final PARAM_AD_LOAD_TIMEOUT:Ljava/lang/String; = "ad_load_timeout"

.field public static final PARAM_AD_MUTE:Ljava/lang/String; = "ad_mute"

.field public static final PARAM_AD_TYPE:Ljava/lang/String; = "ad_type"

.field public static final PARAM_AD_WIDTH:Ljava/lang/String; = "ad_width"

.field public static final PARAM_BANNER_ALLOW_SHOW_CLOSE_BTN:Ljava/lang/String; = "allow_show_close_btn"


# instance fields
.field public do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/msdk/api/TTRequestExtraParams;->do:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/TTRequestExtraParams;->do:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getExtraObject()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTRequestExtraParams;->do:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/TTRequestExtraParams;->do:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public setExtraObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/api/TTRequestExtraParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/TTRequestExtraParams;->do:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
