.class public final enum Lcom/apk/bu;
.super Ljava/lang/Enum;
.source "BarHide.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/bu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/bu;

.field public static final enum for:Lcom/apk/bu;

.field public static final enum if:Lcom/apk/bu;

.field public static final enum new:Lcom/apk/bu;

.field public static final synthetic try:[Lcom/apk/bu;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/bu;

    const-string v1, "FLAG_HIDE_STATUS_BAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/bu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/bu;->do:Lcom/apk/bu;

    .line 2
    new-instance v0, Lcom/apk/bu;

    const-string v1, "FLAG_HIDE_NAVIGATION_BAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/bu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/bu;->if:Lcom/apk/bu;

    .line 3
    new-instance v0, Lcom/apk/bu;

    const-string v1, "FLAG_HIDE_BAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/bu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/bu;->for:Lcom/apk/bu;

    .line 4
    new-instance v0, Lcom/apk/bu;

    const-string v1, "FLAG_SHOW_BAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/bu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/bu;->new:Lcom/apk/bu;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/apk/bu;

    .line 5
    sget-object v6, Lcom/apk/bu;->do:Lcom/apk/bu;

    aput-object v6, v1, v2

    sget-object v2, Lcom/apk/bu;->if:Lcom/apk/bu;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/bu;->for:Lcom/apk/bu;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/apk/bu;->try:[Lcom/apk/bu;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/bu;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/bu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/bu;

    return-object p0
.end method

.method public static values()[Lcom/apk/bu;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/bu;->try:[Lcom/apk/bu;

    invoke-virtual {v0}, [Lcom/apk/bu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/bu;

    return-object v0
.end method
