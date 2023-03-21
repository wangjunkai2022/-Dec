.class public final enum Lcom/apk/sk$else;
.super Ljava/lang/Enum;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/sk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/sk$else;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum case:Lcom/apk/sk$else;

.field public static final enum do:Lcom/apk/sk$else;

.field public static final synthetic else:[Lcom/apk/sk$else;

.field public static final enum for:Lcom/apk/sk$else;

.field public static final enum if:Lcom/apk/sk$else;

.field public static final enum new:Lcom/apk/sk$else;

.field public static final enum try:Lcom/apk/sk$else;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/apk/sk$else;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/sk$else;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/sk$else;->do:Lcom/apk/sk$else;

    .line 2
    new-instance v0, Lcom/apk/sk$else;

    const-string v1, "RESOURCE_CACHE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/sk$else;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/sk$else;->if:Lcom/apk/sk$else;

    .line 3
    new-instance v0, Lcom/apk/sk$else;

    const-string v1, "DATA_CACHE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/sk$else;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/sk$else;->for:Lcom/apk/sk$else;

    .line 4
    new-instance v0, Lcom/apk/sk$else;

    const-string v1, "SOURCE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/sk$else;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/sk$else;->new:Lcom/apk/sk$else;

    .line 5
    new-instance v0, Lcom/apk/sk$else;

    const-string v1, "ENCODE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apk/sk$else;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/sk$else;->try:Lcom/apk/sk$else;

    .line 6
    new-instance v0, Lcom/apk/sk$else;

    const-string v1, "FINISHED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/apk/sk$else;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/sk$else;->case:Lcom/apk/sk$else;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/apk/sk$else;

    .line 7
    sget-object v8, Lcom/apk/sk$else;->do:Lcom/apk/sk$else;

    aput-object v8, v1, v2

    sget-object v2, Lcom/apk/sk$else;->if:Lcom/apk/sk$else;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/sk$else;->for:Lcom/apk/sk$else;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/sk$else;->new:Lcom/apk/sk$else;

    aput-object v2, v1, v5

    sget-object v2, Lcom/apk/sk$else;->try:Lcom/apk/sk$else;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/apk/sk$else;->else:[Lcom/apk/sk$else;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/sk$else;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/sk$else;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/sk$else;

    return-object p0
.end method

.method public static values()[Lcom/apk/sk$else;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/sk$else;->else:[Lcom/apk/sk$else;

    invoke-virtual {v0}, [Lcom/apk/sk$else;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/sk$else;

    return-object v0
.end method
