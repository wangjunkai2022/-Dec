.class public Lcom/baidu/tts/tools/cuid/util/DeviceId$a;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/tools/cuid/util/DeviceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/pm/ApplicationInfo;

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;->b:I

    .line 3
    iput-boolean v0, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/tts/tools/cuid/util/DeviceId$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/baidu/tts/tools/cuid/util/DeviceId$a;-><init>()V

    return-void
.end method
