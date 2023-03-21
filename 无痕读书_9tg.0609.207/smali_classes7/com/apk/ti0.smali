.class public final enum Lcom/apk/ti0;
.super Ljava/lang/Enum;
.source "ErrorCode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ti0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/ti0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum case:Lcom/apk/ti0;

.field public static final enum else:Lcom/apk/ti0;

.field public static final enum for:Lcom/apk/ti0;

.field public static final synthetic goto:[Lcom/apk/ti0;

.field public static final enum if:Lcom/apk/ti0;

.field public static final enum new:Lcom/apk/ti0;

.field public static final this:Lcom/apk/ti0$do;

.field public static final enum try:Lcom/apk/ti0;


# instance fields
.field public final do:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/apk/ti0;

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "NO_ERROR"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/apk/ti0;->if:Lcom/apk/ti0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/apk/ti0;->for:Lcom/apk/ti0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "INTERNAL_ERROR"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/apk/ti0;->new:Lcom/apk/ti0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "FLOW_CONTROL_ERROR"

    const/4 v3, 0x3

    .line 4
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/apk/ti0;->try:Lcom/apk/ti0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "SETTINGS_TIMEOUT"

    const/4 v3, 0x4

    .line 5
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "STREAM_CLOSED"

    const/4 v3, 0x5

    .line 6
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "FRAME_SIZE_ERROR"

    const/4 v3, 0x6

    .line 7
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "REFUSED_STREAM"

    const/4 v3, 0x7

    .line 8
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/apk/ti0;->case:Lcom/apk/ti0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "CANCEL"

    const/16 v3, 0x8

    .line 9
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/apk/ti0;->else:Lcom/apk/ti0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "COMPRESSION_ERROR"

    const/16 v3, 0x9

    .line 10
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "CONNECT_ERROR"

    const/16 v3, 0xa

    .line 11
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "ENHANCE_YOUR_CALM"

    const/16 v3, 0xb

    .line 12
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "INADEQUATE_SECURITY"

    const/16 v3, 0xc

    .line 13
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/ti0;

    const-string v2, "HTTP_1_1_REQUIRED"

    const/16 v3, 0xd

    .line 14
    invoke-direct {v1, v2, v3, v3}, Lcom/apk/ti0;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/apk/ti0;->goto:[Lcom/apk/ti0;

    new-instance v0, Lcom/apk/ti0$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/ti0$do;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/ti0;->this:Lcom/apk/ti0$do;

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

    iput p3, p0, Lcom/apk/ti0;->do:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apk/ti0;
    .locals 1

    const-class v0, Lcom/apk/ti0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/ti0;

    return-object p0
.end method

.method public static values()[Lcom/apk/ti0;
    .locals 1

    sget-object v0, Lcom/apk/ti0;->goto:[Lcom/apk/ti0;

    invoke-virtual {v0}, [Lcom/apk/ti0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/ti0;

    return-object v0
.end method
