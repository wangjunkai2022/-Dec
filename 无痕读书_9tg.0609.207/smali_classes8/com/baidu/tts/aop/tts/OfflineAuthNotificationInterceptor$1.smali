.class public synthetic Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor$1;
.super Ljava/lang/Object;
.source "OfflineAuthNotificationInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/baidu/tts/f/m;->values()[Lcom/baidu/tts/f/m;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor$1;->a:[I

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    sget-object v3, Lcom/baidu/tts/f/m;->c:Lcom/baidu/tts/f/m;

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor$1;->a:[I

    sget-object v3, Lcom/baidu/tts/f/m;->b:Lcom/baidu/tts/f/m;

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
