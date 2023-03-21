.class public final enum Lcom/apk/y9$do;
.super Ljava/lang/Enum;
.source "PageAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/y9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/y9$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic case:[Lcom/apk/y9$do;

.field public static final enum do:Lcom/apk/y9$do;

.field public static final enum for:Lcom/apk/y9$do;

.field public static final enum if:Lcom/apk/y9$do;

.field public static final enum new:Lcom/apk/y9$do;

.field public static final enum try:Lcom/apk/y9$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/apk/y9$do;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/apk/y9$do;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/y9$do;->do:Lcom/apk/y9$do;

    new-instance v0, Lcom/apk/y9$do;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v3, v3}, Lcom/apk/y9$do;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/y9$do;->if:Lcom/apk/y9$do;

    new-instance v0, Lcom/apk/y9$do;

    const-string v1, "PRE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/apk/y9$do;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/y9$do;->for:Lcom/apk/y9$do;

    new-instance v0, Lcom/apk/y9$do;

    const-string v1, "UP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/apk/y9$do;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/y9$do;->new:Lcom/apk/y9$do;

    new-instance v0, Lcom/apk/y9$do;

    const-string v1, "DOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v2}, Lcom/apk/y9$do;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/apk/y9$do;->try:Lcom/apk/y9$do;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/apk/y9$do;

    .line 2
    sget-object v7, Lcom/apk/y9$do;->do:Lcom/apk/y9$do;

    aput-object v7, v1, v2

    sget-object v2, Lcom/apk/y9$do;->if:Lcom/apk/y9$do;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/y9$do;->for:Lcom/apk/y9$do;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/y9$do;->new:Lcom/apk/y9$do;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/apk/y9$do;->case:[Lcom/apk/y9$do;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/y9$do;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/y9$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/y9$do;

    return-object p0
.end method

.method public static values()[Lcom/apk/y9$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/y9$do;->case:[Lcom/apk/y9$do;

    invoke-virtual {v0}, [Lcom/apk/y9$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/y9$do;

    return-object v0
.end method
