.class public final enum Lcom/apk/gh0;
.super Ljava/lang/Enum;
.source "TlsVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/gh0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/gh0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum case:Lcom/apk/gh0;

.field public static final synthetic else:[Lcom/apk/gh0;

.field public static final enum for:Lcom/apk/gh0;

.field public static final goto:Lcom/apk/gh0$do;

.field public static final enum if:Lcom/apk/gh0;

.field public static final enum new:Lcom/apk/gh0;

.field public static final enum try:Lcom/apk/gh0;


# instance fields
.field public final do:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/apk/gh0;

    new-instance v1, Lcom/apk/gh0;

    const-string v2, "TLS_1_3"

    const/4 v3, 0x0

    const-string v4, "TLSv1.3"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/apk/gh0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/apk/gh0;->if:Lcom/apk/gh0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/gh0;

    const-string v2, "TLS_1_2"

    const/4 v3, 0x1

    const-string v4, "TLSv1.2"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/apk/gh0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/apk/gh0;->for:Lcom/apk/gh0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/gh0;

    const-string v2, "TLS_1_1"

    const/4 v3, 0x2

    const-string v4, "TLSv1.1"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/apk/gh0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/apk/gh0;->new:Lcom/apk/gh0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/gh0;

    const-string v2, "TLS_1_0"

    const/4 v3, 0x3

    const-string v4, "TLSv1"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/apk/gh0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/apk/gh0;->try:Lcom/apk/gh0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/gh0;

    const-string v2, "SSL_3_0"

    const/4 v3, 0x4

    const-string v4, "SSLv3"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/apk/gh0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/apk/gh0;->case:Lcom/apk/gh0;

    aput-object v1, v0, v3

    sput-object v0, Lcom/apk/gh0;->else:[Lcom/apk/gh0;

    new-instance v0, Lcom/apk/gh0$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/gh0$do;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/gh0;->goto:Lcom/apk/gh0$do;

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

    iput-object p3, p0, Lcom/apk/gh0;->do:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apk/gh0;
    .locals 1

    const-class v0, Lcom/apk/gh0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/gh0;

    return-object p0
.end method

.method public static values()[Lcom/apk/gh0;
    .locals 1

    sget-object v0, Lcom/apk/gh0;->else:[Lcom/apk/gh0;

    invoke-virtual {v0}, [Lcom/apk/gh0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/gh0;

    return-object v0
.end method
