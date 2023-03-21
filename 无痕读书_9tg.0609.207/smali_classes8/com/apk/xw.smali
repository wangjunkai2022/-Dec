.class public final enum Lcom/apk/xw;
.super Ljava/lang/Enum;
.source "CacheMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/xw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum case:Lcom/apk/xw;

.field public static final enum do:Lcom/apk/xw;

.field public static final synthetic else:[Lcom/apk/xw;

.field public static final enum for:Lcom/apk/xw;

.field public static final enum if:Lcom/apk/xw;

.field public static final enum new:Lcom/apk/xw;

.field public static final enum try:Lcom/apk/xw;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/apk/xw;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/xw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/xw;->do:Lcom/apk/xw;

    .line 2
    new-instance v0, Lcom/apk/xw;

    const-string v1, "NO_CACHE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/xw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/xw;->if:Lcom/apk/xw;

    .line 3
    new-instance v0, Lcom/apk/xw;

    const-string v1, "REQUEST_FAILED_READ_CACHE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/xw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/xw;->for:Lcom/apk/xw;

    .line 4
    new-instance v0, Lcom/apk/xw;

    const-string v1, "IF_NONE_CACHE_REQUEST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/xw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/xw;->new:Lcom/apk/xw;

    .line 5
    new-instance v0, Lcom/apk/xw;

    const-string v1, "FIRST_CACHE_THEN_REQUEST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apk/xw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/xw;->try:Lcom/apk/xw;

    .line 6
    new-instance v0, Lcom/apk/xw;

    const-string v1, "ALWAYS_FIRST_CACHE_THEN_REQUEST"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/apk/xw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/xw;->case:Lcom/apk/xw;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/apk/xw;

    .line 7
    sget-object v8, Lcom/apk/xw;->do:Lcom/apk/xw;

    aput-object v8, v1, v2

    sget-object v2, Lcom/apk/xw;->if:Lcom/apk/xw;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/xw;->for:Lcom/apk/xw;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/xw;->new:Lcom/apk/xw;

    aput-object v2, v1, v5

    sget-object v2, Lcom/apk/xw;->try:Lcom/apk/xw;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/apk/xw;->else:[Lcom/apk/xw;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/xw;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/xw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/xw;

    return-object p0
.end method

.method public static values()[Lcom/apk/xw;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/xw;->else:[Lcom/apk/xw;

    invoke-virtual {v0}, [Lcom/apk/xw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/xw;

    return-object v0
.end method
