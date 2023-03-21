.class public final Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;
.super Ljava/lang/Object;
.source "GMCustomServiceConfig.java"


# instance fields
.field public final do:Ljava/lang/String;

.field public final for:I

.field public final if:Ljava/lang/String;

.field public final new:I

.field public final try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->if:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->for:I

    .line 5
    iput p4, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->new:I

    .line 6
    iput-object p5, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->try:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getADNNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getADNNetworkSlotId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->if:Ljava/lang/String;

    return-object v0
.end method

.method public getAdStyleType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->for:I

    return v0
.end method

.method public getCustomAdapterJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->try:Ljava/lang/String;

    return-object v0
.end method

.method public getSubAdtype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomServiceConfig;->new:I

    return v0
.end method
