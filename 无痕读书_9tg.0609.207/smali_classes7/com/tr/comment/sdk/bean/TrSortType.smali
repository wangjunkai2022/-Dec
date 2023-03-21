.class public final enum Lcom/tr/comment/sdk/bean/TrSortType;
.super Ljava/lang/Enum;
.source "TrSortType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tr/comment/sdk/bean/TrSortType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tr/comment/sdk/bean/TrSortType;

.field public static final enum HOT:Lcom/tr/comment/sdk/bean/TrSortType;

.field public static final enum LAST:Lcom/tr/comment/sdk/bean/TrSortType;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/tr/comment/sdk/bean/TrSortType;

    const-string v1, "HOT"

    const/4 v2, 0x0

    const-string v3, "hottest"

    invoke-direct {v0, v1, v2, v3}, Lcom/tr/comment/sdk/bean/TrSortType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tr/comment/sdk/bean/TrSortType;->HOT:Lcom/tr/comment/sdk/bean/TrSortType;

    new-instance v1, Lcom/tr/comment/sdk/bean/TrSortType;

    const-string v3, "LAST"

    const/4 v4, 0x1

    const-string v5, "lattest"

    invoke-direct {v1, v3, v4, v5}, Lcom/tr/comment/sdk/bean/TrSortType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tr/comment/sdk/bean/TrSortType;->LAST:Lcom/tr/comment/sdk/bean/TrSortType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tr/comment/sdk/bean/TrSortType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/tr/comment/sdk/bean/TrSortType;->$VALUES:[Lcom/tr/comment/sdk/bean/TrSortType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/tr/comment/sdk/bean/TrSortType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tr/comment/sdk/bean/TrSortType;
    .locals 1

    .line 1
    const-class v0, Lcom/tr/comment/sdk/bean/TrSortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tr/comment/sdk/bean/TrSortType;

    return-object p0
.end method

.method public static values()[Lcom/tr/comment/sdk/bean/TrSortType;
    .locals 1

    .line 1
    sget-object v0, Lcom/tr/comment/sdk/bean/TrSortType;->$VALUES:[Lcom/tr/comment/sdk/bean/TrSortType;

    invoke-virtual {v0}, [Lcom/tr/comment/sdk/bean/TrSortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tr/comment/sdk/bean/TrSortType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrSortType;->name:Ljava/lang/String;

    return-object v0
.end method
