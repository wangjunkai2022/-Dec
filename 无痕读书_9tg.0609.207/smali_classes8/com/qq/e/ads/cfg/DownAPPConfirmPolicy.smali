.class public final enum Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Default:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

.field public static final enum NOConfirm:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

.field public static final synthetic b:[Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->Default:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    new-instance v0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    const-string v1, "NOConfirm"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->NOConfirm:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    new-array v1, v4, [Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    sget-object v4, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->Default:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->b:[Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;
    .locals 1

    const-class v0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    return-object p0
.end method

.method public static values()[Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;
    .locals 1

    sget-object v0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->b:[Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    invoke-virtual {v0}, [Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->a:I

    return v0
.end method
