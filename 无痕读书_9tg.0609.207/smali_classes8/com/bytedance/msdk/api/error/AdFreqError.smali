.class public Lcom/bytedance/msdk/api/error/AdFreqError;
.super Lcom/bytedance/msdk/api/AdError;
.source "AdFreqError.java"


# instance fields
.field public do:Ljava/lang/String;

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/bytedance/msdk/api/error/AdFreqError;->do:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/bytedance/msdk/api/error/AdFreqError;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBlockShowCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/error/AdFreqError;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/error/AdFreqError;->if:Ljava/lang/String;

    return-object v0
.end method
