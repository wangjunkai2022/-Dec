.class public Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;
.super Ljava/lang/Object;
.source "UMSLEnvelopeBuild.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UMSLEnvelopeBuild"

.field public static isEncryptEnabled:Z

.field public static mContext:Landroid/content/Context;

.field public static module:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isReadyBuildNew(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static setEncryptEnabled(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->isEncryptEnabled:Z

    return-void
.end method


# virtual methods
.method public buildSLBaseHeader(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild$1;-><init>(Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public buildSLEnvelope(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
