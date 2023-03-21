.class public final Lcom/tr/danmu/sdk/TrDanMuSdk$do;
.super Lcom/apk/ab0;
.source "TrDanMuSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tr/danmu/sdk/TrDanMuSdk;->getRequestBarrages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/ab0<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Lcom/apk/q80;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/danmu/sdk/TrDanMuSdk$do;->do:Ljava/lang/String;

    iput-object p2, p0, Lcom/tr/danmu/sdk/TrDanMuSdk$do;->if:Ljava/lang/String;

    iput-object p3, p0, Lcom/tr/danmu/sdk/TrDanMuSdk$do;->for:Ljava/lang/String;

    iput-object p4, p0, Lcom/tr/danmu/sdk/TrDanMuSdk$do;->new:Lcom/apk/q80;

    invoke-direct {p0}, Lcom/apk/ab0;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/jb0;->for()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/jb0;->new()Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tr/danmu/sdk/TrDanMuSdk$do;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/tr/danmu/sdk/TrDanMuSdk$do;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/tr/danmu/sdk/TrDanMuSdk$do;->for:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/apk/fa0;->this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/apk/xw;->if:Lcom/apk/xw;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/apk/jb0;->do(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public if(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lcom/tr/danmu/sdk/TrDanMuSdk$do;->new:Lcom/apk/q80;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/apk/q80;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x3

    const-string v1, "response is null"

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/apk/q80;->failed(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
