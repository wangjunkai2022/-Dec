.class public Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;
.super Ljava/lang/Object;
.source "GMCustomAdError.java"


# instance fields
.field public do:I

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;->do:I

    .line 3
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;->do:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/GMCustomAdError;->if:Ljava/lang/String;

    return-object v0
.end method
