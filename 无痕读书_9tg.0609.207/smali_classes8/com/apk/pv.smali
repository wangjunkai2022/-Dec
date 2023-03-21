.class public final enum Lcom/apk/pv;
.super Ljava/lang/Enum;
.source "PopupPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/pv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/pv;

.field public static final enum for:Lcom/apk/pv;

.field public static final enum if:Lcom/apk/pv;

.field public static final enum new:Lcom/apk/pv;

.field public static final synthetic try:[Lcom/apk/pv;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/pv;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/pv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/pv;->do:Lcom/apk/pv;

    new-instance v0, Lcom/apk/pv;

    const-string v1, "Right"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/pv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/pv;->if:Lcom/apk/pv;

    new-instance v0, Lcom/apk/pv;

    const-string v1, "Top"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/pv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/pv;->for:Lcom/apk/pv;

    new-instance v0, Lcom/apk/pv;

    const-string v1, "Bottom"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/pv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/pv;->new:Lcom/apk/pv;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/apk/pv;

    .line 2
    sget-object v6, Lcom/apk/pv;->do:Lcom/apk/pv;

    aput-object v6, v1, v2

    sget-object v2, Lcom/apk/pv;->if:Lcom/apk/pv;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/pv;->for:Lcom/apk/pv;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/apk/pv;->try:[Lcom/apk/pv;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/pv;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/pv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/pv;

    return-object p0
.end method

.method public static values()[Lcom/apk/pv;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/pv;->try:[Lcom/apk/pv;

    invoke-virtual {v0}, [Lcom/apk/pv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/pv;

    return-object v0
.end method
