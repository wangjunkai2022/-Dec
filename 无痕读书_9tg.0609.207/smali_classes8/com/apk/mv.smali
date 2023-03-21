.class public final enum Lcom/apk/mv;
.super Ljava/lang/Enum;
.source "ImageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/mv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum case:Lcom/apk/mv;

.field public static final enum do:Lcom/apk/mv;

.field public static final enum else:Lcom/apk/mv;

.field public static final enum for:Lcom/apk/mv;

.field public static final enum goto:Lcom/apk/mv;

.field public static final enum if:Lcom/apk/mv;

.field public static final enum new:Lcom/apk/mv;

.field public static final synthetic this:[Lcom/apk/mv;

.field public static final enum try:Lcom/apk/mv;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/apk/mv;

    const-string v1, "GIF"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/apk/mv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/mv;->do:Lcom/apk/mv;

    .line 2
    new-instance v0, Lcom/apk/mv;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v3, v2}, Lcom/apk/mv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/mv;->if:Lcom/apk/mv;

    .line 3
    new-instance v0, Lcom/apk/mv;

    const-string v1, "RAW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/apk/mv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/mv;->for:Lcom/apk/mv;

    .line 4
    new-instance v0, Lcom/apk/mv;

    const-string v1, "PNG_A"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lcom/apk/mv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/mv;->new:Lcom/apk/mv;

    .line 5
    new-instance v0, Lcom/apk/mv;

    const-string v1, "PNG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v2}, Lcom/apk/mv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/mv;->try:Lcom/apk/mv;

    .line 6
    new-instance v0, Lcom/apk/mv;

    const-string v1, "WEBP_A"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v3}, Lcom/apk/mv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/mv;->case:Lcom/apk/mv;

    .line 7
    new-instance v0, Lcom/apk/mv;

    const-string v1, "WEBP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/apk/mv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/mv;->else:Lcom/apk/mv;

    .line 8
    new-instance v0, Lcom/apk/mv;

    const-string v1, "UNKNOWN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v2}, Lcom/apk/mv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/mv;->goto:Lcom/apk/mv;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/apk/mv;

    .line 9
    sget-object v10, Lcom/apk/mv;->do:Lcom/apk/mv;

    aput-object v10, v1, v2

    sget-object v2, Lcom/apk/mv;->if:Lcom/apk/mv;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/mv;->for:Lcom/apk/mv;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/mv;->new:Lcom/apk/mv;

    aput-object v2, v1, v5

    sget-object v2, Lcom/apk/mv;->try:Lcom/apk/mv;

    aput-object v2, v1, v6

    sget-object v2, Lcom/apk/mv;->case:Lcom/apk/mv;

    aput-object v2, v1, v7

    sget-object v2, Lcom/apk/mv;->else:Lcom/apk/mv;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/apk/mv;->this:[Lcom/apk/mv;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apk/mv;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/mv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/mv;

    return-object p0
.end method

.method public static values()[Lcom/apk/mv;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/mv;->this:[Lcom/apk/mv;

    invoke-virtual {v0}, [Lcom/apk/mv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/mv;

    return-object v0
.end method
