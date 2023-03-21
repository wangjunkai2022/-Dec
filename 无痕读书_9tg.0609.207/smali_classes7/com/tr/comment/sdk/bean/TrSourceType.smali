.class public final enum Lcom/tr/comment/sdk/bean/TrSourceType;
.super Ljava/lang/Enum;
.source "TrSourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tr/comment/sdk/bean/TrSourceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tr/comment/sdk/bean/TrSourceType;

.field public static final enum Cartoon:Lcom/tr/comment/sdk/bean/TrSourceType;

.field public static final enum Movie:Lcom/tr/comment/sdk/bean/TrSourceType;

.field public static final enum Novel:Lcom/tr/comment/sdk/bean/TrSourceType;

.field public static final enum Picture:Lcom/tr/comment/sdk/bean/TrSourceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/tr/comment/sdk/bean/TrSourceType;

    const-string v1, "Novel"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tr/comment/sdk/bean/TrSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tr/comment/sdk/bean/TrSourceType;->Novel:Lcom/tr/comment/sdk/bean/TrSourceType;

    new-instance v1, Lcom/tr/comment/sdk/bean/TrSourceType;

    const-string v3, "Cartoon"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tr/comment/sdk/bean/TrSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tr/comment/sdk/bean/TrSourceType;->Cartoon:Lcom/tr/comment/sdk/bean/TrSourceType;

    new-instance v3, Lcom/tr/comment/sdk/bean/TrSourceType;

    const-string v5, "Movie"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tr/comment/sdk/bean/TrSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tr/comment/sdk/bean/TrSourceType;->Movie:Lcom/tr/comment/sdk/bean/TrSourceType;

    new-instance v5, Lcom/tr/comment/sdk/bean/TrSourceType;

    const-string v7, "Picture"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tr/comment/sdk/bean/TrSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tr/comment/sdk/bean/TrSourceType;->Picture:Lcom/tr/comment/sdk/bean/TrSourceType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tr/comment/sdk/bean/TrSourceType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/tr/comment/sdk/bean/TrSourceType;->$VALUES:[Lcom/tr/comment/sdk/bean/TrSourceType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tr/comment/sdk/bean/TrSourceType;
    .locals 1

    .line 1
    const-class v0, Lcom/tr/comment/sdk/bean/TrSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tr/comment/sdk/bean/TrSourceType;

    return-object p0
.end method

.method public static values()[Lcom/tr/comment/sdk/bean/TrSourceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/tr/comment/sdk/bean/TrSourceType;->$VALUES:[Lcom/tr/comment/sdk/bean/TrSourceType;

    invoke-virtual {v0}, [Lcom/tr/comment/sdk/bean/TrSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tr/comment/sdk/bean/TrSourceType;

    return-object v0
.end method
