.class public final enum Lcom/apk/ey$do;
.super Ljava/lang/Enum;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/ey$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/ey$do;

.field public static final enum for:Lcom/apk/ey$do;

.field public static final enum if:Lcom/apk/ey$do;

.field public static final enum new:Lcom/apk/ey$do;

.field public static final synthetic try:[Lcom/apk/ey$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/ey$do;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/ey$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ey$do;->do:Lcom/apk/ey$do;

    .line 2
    new-instance v0, Lcom/apk/ey$do;

    const-string v1, "BASIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/ey$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ey$do;->if:Lcom/apk/ey$do;

    .line 3
    new-instance v0, Lcom/apk/ey$do;

    const-string v1, "HEADERS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/ey$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ey$do;->for:Lcom/apk/ey$do;

    .line 4
    new-instance v0, Lcom/apk/ey$do;

    const-string v1, "BODY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/ey$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ey$do;->new:Lcom/apk/ey$do;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/apk/ey$do;

    .line 5
    sget-object v6, Lcom/apk/ey$do;->do:Lcom/apk/ey$do;

    aput-object v6, v1, v2

    sget-object v2, Lcom/apk/ey$do;->if:Lcom/apk/ey$do;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/ey$do;->for:Lcom/apk/ey$do;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/apk/ey$do;->try:[Lcom/apk/ey$do;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/ey$do;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/ey$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/ey$do;

    return-object p0
.end method

.method public static values()[Lcom/apk/ey$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/ey$do;->try:[Lcom/apk/ey$do;

    invoke-virtual {v0}, [Lcom/apk/ey$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/ey$do;

    return-object v0
.end method
