.class public final enum Lcom/apk/qv;
.super Ljava/lang/Enum;
.source "PopupStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/qv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/qv;

.field public static final enum for:Lcom/apk/qv;

.field public static final enum if:Lcom/apk/qv;

.field public static final enum new:Lcom/apk/qv;

.field public static final synthetic try:[Lcom/apk/qv;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/qv;

    const-string v1, "Show"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/qv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/qv;->do:Lcom/apk/qv;

    .line 2
    new-instance v0, Lcom/apk/qv;

    const-string v1, "Showing"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/qv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/qv;->if:Lcom/apk/qv;

    .line 3
    new-instance v0, Lcom/apk/qv;

    const-string v1, "Dismiss"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/qv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/qv;->for:Lcom/apk/qv;

    .line 4
    new-instance v0, Lcom/apk/qv;

    const-string v1, "Dismissing"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/qv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/qv;->new:Lcom/apk/qv;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/apk/qv;

    .line 5
    sget-object v6, Lcom/apk/qv;->do:Lcom/apk/qv;

    aput-object v6, v1, v2

    sget-object v2, Lcom/apk/qv;->if:Lcom/apk/qv;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/qv;->for:Lcom/apk/qv;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/apk/qv;->try:[Lcom/apk/qv;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/qv;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/qv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/qv;

    return-object p0
.end method

.method public static values()[Lcom/apk/qv;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/qv;->try:[Lcom/apk/qv;

    invoke-virtual {v0}, [Lcom/apk/qv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/qv;

    return-object v0
.end method
