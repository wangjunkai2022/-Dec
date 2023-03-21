.class public final enum Lcom/apk/h;
.super Ljava/lang/Enum;
.source "AdLoadEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic case:[Lcom/apk/h;

.field public static final enum do:Lcom/apk/h;

.field public static final enum for:Lcom/apk/h;

.field public static final enum if:Lcom/apk/h;

.field public static final enum new:Lcom/apk/h;

.field public static final enum try:Lcom/apk/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/apk/h;

    const-string v1, "preload"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/h;->do:Lcom/apk/h;

    new-instance v0, Lcom/apk/h;

    const-string v1, "load"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/h;->if:Lcom/apk/h;

    new-instance v0, Lcom/apk/h;

    const-string v1, "error"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/h;->for:Lcom/apk/h;

    new-instance v0, Lcom/apk/h;

    const-string v1, "success"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/h;->new:Lcom/apk/h;

    new-instance v0, Lcom/apk/h;

    const-string v1, "finish"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apk/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/h;->try:Lcom/apk/h;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/apk/h;

    .line 2
    sget-object v7, Lcom/apk/h;->do:Lcom/apk/h;

    aput-object v7, v1, v2

    sget-object v2, Lcom/apk/h;->if:Lcom/apk/h;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/h;->for:Lcom/apk/h;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/h;->new:Lcom/apk/h;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/apk/h;->case:[Lcom/apk/h;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/h;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/h;

    return-object p0
.end method

.method public static values()[Lcom/apk/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/h;->case:[Lcom/apk/h;

    invoke-virtual {v0}, [Lcom/apk/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/h;

    return-object v0
.end method
