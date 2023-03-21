.class public final enum Lcom/apk/dj;
.super Ljava/lang/Enum;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/dj;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic case:[Lcom/apk/dj;

.field public static final enum do:Lcom/apk/dj;

.field public static final enum for:Lcom/apk/dj;

.field public static final enum if:Lcom/apk/dj;

.field public static final enum new:Lcom/apk/dj;

.field public static final enum try:Lcom/apk/dj;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/apk/dj;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/dj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/dj;->do:Lcom/apk/dj;

    .line 2
    new-instance v0, Lcom/apk/dj;

    const-string v1, "REMOTE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/dj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/dj;->if:Lcom/apk/dj;

    .line 3
    new-instance v0, Lcom/apk/dj;

    const-string v1, "DATA_DISK_CACHE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/dj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/dj;->for:Lcom/apk/dj;

    .line 4
    new-instance v0, Lcom/apk/dj;

    const-string v1, "RESOURCE_DISK_CACHE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/dj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/dj;->new:Lcom/apk/dj;

    .line 5
    new-instance v0, Lcom/apk/dj;

    const-string v1, "MEMORY_CACHE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apk/dj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/dj;->try:Lcom/apk/dj;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/apk/dj;

    .line 6
    sget-object v7, Lcom/apk/dj;->do:Lcom/apk/dj;

    aput-object v7, v1, v2

    sget-object v2, Lcom/apk/dj;->if:Lcom/apk/dj;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/dj;->for:Lcom/apk/dj;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/dj;->new:Lcom/apk/dj;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/apk/dj;->case:[Lcom/apk/dj;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/dj;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/dj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/dj;

    return-object p0
.end method

.method public static values()[Lcom/apk/dj;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/dj;->case:[Lcom/apk/dj;

    invoke-virtual {v0}, [Lcom/apk/dj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/dj;

    return-object v0
.end method
