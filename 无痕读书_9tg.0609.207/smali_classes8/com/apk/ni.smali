.class public final enum Lcom/apk/ni;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/ni;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/ni;

.field public static final enum for:Lcom/apk/ni;

.field public static final enum if:Lcom/apk/ni;

.field public static final enum new:Lcom/apk/ni;

.field public static final synthetic try:[Lcom/apk/ni;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/ni;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/ni;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ni;->do:Lcom/apk/ni;

    .line 2
    new-instance v0, Lcom/apk/ni;

    const-string v1, "HIGH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/ni;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ni;->if:Lcom/apk/ni;

    .line 3
    new-instance v0, Lcom/apk/ni;

    const-string v1, "NORMAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/ni;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ni;->for:Lcom/apk/ni;

    .line 4
    new-instance v0, Lcom/apk/ni;

    const-string v1, "LOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/ni;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ni;->new:Lcom/apk/ni;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/apk/ni;

    .line 5
    sget-object v6, Lcom/apk/ni;->do:Lcom/apk/ni;

    aput-object v6, v1, v2

    sget-object v2, Lcom/apk/ni;->if:Lcom/apk/ni;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/ni;->for:Lcom/apk/ni;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/apk/ni;->try:[Lcom/apk/ni;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/ni;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/ni;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/ni;

    return-object p0
.end method

.method public static values()[Lcom/apk/ni;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/ni;->try:[Lcom/apk/ni;

    invoke-virtual {v0}, [Lcom/apk/ni;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/ni;

    return-object v0
.end method
