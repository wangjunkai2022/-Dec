.class public final enum Lcom/apk/yg0;
.super Ljava/lang/Enum;
.source "Protocol.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/yg0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/yg0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum case:Lcom/apk/yg0;

.field public static final enum else:Lcom/apk/yg0;

.field public static final enum for:Lcom/apk/yg0;

.field public static final synthetic goto:[Lcom/apk/yg0;

.field public static final enum if:Lcom/apk/yg0;

.field public static final enum new:Lcom/apk/yg0;
    .annotation runtime Lkotlin/Deprecated;
        message = "OkHttp has dropped support for SPDY. Prefer {@link #HTTP_2}."
    .end annotation
.end field

.field public static final this:Lcom/apk/yg0$do;

.field public static final enum try:Lcom/apk/yg0;


# instance fields
.field public final do:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/apk/yg0;

    new-instance v1, Lcom/apk/yg0;

    const-string v2, "HTTP_1_0"

    const/4 v3, 0x0

    const-string v4, "http/1.0"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/apk/yg0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/apk/yg0;->if:Lcom/apk/yg0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/yg0;

    const-string v2, "HTTP_1_1"

    const/4 v3, 0x1

    const-string v4, "http/1.1"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/apk/yg0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/apk/yg0;->for:Lcom/apk/yg0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/yg0;

    const-string v2, "SPDY_3"

    const/4 v3, 0x2

    const-string v4, "spdy/3.1"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/apk/yg0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/apk/yg0;->new:Lcom/apk/yg0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/yg0;

    const-string v2, "HTTP_2"

    const/4 v3, 0x3

    const-string v4, "h2"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/apk/yg0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/apk/yg0;->try:Lcom/apk/yg0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/yg0;

    const-string v2, "H2_PRIOR_KNOWLEDGE"

    const/4 v3, 0x4

    const-string v4, "h2_prior_knowledge"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/apk/yg0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/apk/yg0;->case:Lcom/apk/yg0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/yg0;

    const-string v2, "QUIC"

    const/4 v3, 0x5

    const-string v4, "quic"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/apk/yg0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/apk/yg0;->else:Lcom/apk/yg0;

    aput-object v1, v0, v3

    sput-object v0, Lcom/apk/yg0;->goto:[Lcom/apk/yg0;

    new-instance v0, Lcom/apk/yg0$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/yg0$do;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/yg0;->this:Lcom/apk/yg0$do;

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

    iput-object p3, p0, Lcom/apk/yg0;->do:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apk/yg0;
    .locals 1

    const-class v0, Lcom/apk/yg0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/yg0;

    return-object p0
.end method

.method public static values()[Lcom/apk/yg0;
    .locals 1

    sget-object v0, Lcom/apk/yg0;->goto:[Lcom/apk/yg0;

    invoke-virtual {v0}, [Lcom/apk/yg0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/yg0;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/yg0;->do:Ljava/lang/String;

    return-object v0
.end method
