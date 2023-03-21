.class public final enum Lcom/apk/di$goto;
.super Ljava/lang/Enum;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/di;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "goto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/di$goto;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/di$goto;

.field public static final enum for:Lcom/apk/di$goto;

.field public static final enum if:Lcom/apk/di$goto;

.field public static final enum new:Lcom/apk/di$goto;

.field public static final synthetic try:[Lcom/apk/di$goto;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/di$goto;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/di$goto;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/di$goto;->do:Lcom/apk/di$goto;

    new-instance v0, Lcom/apk/di$goto;

    const-string v1, "PUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/di$goto;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/di$goto;->if:Lcom/apk/di$goto;

    new-instance v0, Lcom/apk/di$goto;

    const-string v1, "POST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/di$goto;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/di$goto;->for:Lcom/apk/di$goto;

    new-instance v0, Lcom/apk/di$goto;

    const-string v1, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/di$goto;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/di$goto;->new:Lcom/apk/di$goto;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/apk/di$goto;

    .line 2
    sget-object v6, Lcom/apk/di$goto;->do:Lcom/apk/di$goto;

    aput-object v6, v1, v2

    sget-object v2, Lcom/apk/di$goto;->if:Lcom/apk/di$goto;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/di$goto;->for:Lcom/apk/di$goto;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/apk/di$goto;->try:[Lcom/apk/di$goto;

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

.method public static do(Ljava/lang/String;)Lcom/apk/di$goto;
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/di$goto;->values()[Lcom/apk/di$goto;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apk/di$goto;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/di$goto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/di$goto;

    return-object p0
.end method

.method public static values()[Lcom/apk/di$goto;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/di$goto;->try:[Lcom/apk/di$goto;

    invoke-virtual {v0}, [Lcom/apk/di$goto;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/di$goto;

    return-object v0
.end method
