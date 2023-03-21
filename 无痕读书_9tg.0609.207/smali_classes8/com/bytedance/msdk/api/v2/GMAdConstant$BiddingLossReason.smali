.class public final enum Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;
.super Ljava/lang/Enum;
.source "GMAdConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/api/v2/GMAdConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BiddingLossReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_DATA_ERROR:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

.field public static final enum LOW_PRICE:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

.field public static final enum NO_AD:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

.field public static final enum OTHER:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

.field public static final enum TIME_OUT:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

.field public static final synthetic if:[Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;


# instance fields
.field public final do:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    const-string v1, "LOW_PRICE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->LOW_PRICE:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    const-string v1, "TIME_OUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->TIME_OUT:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    .line 3
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    const-string v1, "NO_AD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->NO_AD:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    .line 4
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    const-string v1, "AD_DATA_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->AD_DATA_ERROR:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    .line 5
    new-instance v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    const-string v1, "OTHER"

    const/16 v7, 0x2711

    invoke-direct {v0, v1, v6, v7}, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->OTHER:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    .line 6
    sget-object v7, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->LOW_PRICE:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    aput-object v7, v1, v2

    sget-object v2, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->TIME_OUT:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->NO_AD:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->AD_DATA_ERROR:Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->if:[Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->do:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->if:[Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    invoke-virtual {v0}, [Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;

    return-object v0
.end method


# virtual methods
.method public getLossReason()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/GMAdConstant$BiddingLossReason;->do:I

    return v0
.end method
