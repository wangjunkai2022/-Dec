.class public final enum Lcom/apk/ip0;
.super Ljava/lang/Enum;
.source "NodeFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/ip0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic case:[Lcom/apk/ip0;

.field public static final enum do:Lcom/apk/ip0;

.field public static final enum for:Lcom/apk/ip0;

.field public static final enum if:Lcom/apk/ip0;

.field public static final enum new:Lcom/apk/ip0;

.field public static final enum try:Lcom/apk/ip0;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/apk/ip0;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/ip0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ip0;->do:Lcom/apk/ip0;

    .line 2
    new-instance v0, Lcom/apk/ip0;

    const-string v1, "SKIP_CHILDREN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/ip0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ip0;->if:Lcom/apk/ip0;

    .line 3
    new-instance v0, Lcom/apk/ip0;

    const-string v1, "SKIP_ENTIRELY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/ip0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ip0;->for:Lcom/apk/ip0;

    .line 4
    new-instance v0, Lcom/apk/ip0;

    const-string v1, "REMOVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/ip0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ip0;->new:Lcom/apk/ip0;

    .line 5
    new-instance v0, Lcom/apk/ip0;

    const-string v1, "STOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apk/ip0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ip0;->try:Lcom/apk/ip0;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/apk/ip0;

    .line 6
    sget-object v7, Lcom/apk/ip0;->do:Lcom/apk/ip0;

    aput-object v7, v1, v2

    sget-object v2, Lcom/apk/ip0;->if:Lcom/apk/ip0;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/ip0;->for:Lcom/apk/ip0;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/ip0;->new:Lcom/apk/ip0;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    .line 7
    sput-object v1, Lcom/apk/ip0;->case:[Lcom/apk/ip0;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/ip0;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/ip0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/ip0;

    return-object p0
.end method

.method public static values()[Lcom/apk/ip0;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/ip0;->case:[Lcom/apk/ip0;

    invoke-virtual {v0}, [Lcom/apk/ip0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/ip0;

    return-object v0
.end method
