.class public final enum Lcom/apk/nv;
.super Ljava/lang/Enum;
.source "LayoutStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/nv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/nv;

.field public static final enum for:Lcom/apk/nv;

.field public static final enum if:Lcom/apk/nv;

.field public static final enum new:Lcom/apk/nv;

.field public static final synthetic try:[Lcom/apk/nv;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/nv;

    const-string v1, "Open"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/nv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/nv;->do:Lcom/apk/nv;

    new-instance v0, Lcom/apk/nv;

    const-string v1, "Close"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/nv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/nv;->if:Lcom/apk/nv;

    new-instance v0, Lcom/apk/nv;

    const-string v1, "Opening"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/nv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/nv;->for:Lcom/apk/nv;

    new-instance v0, Lcom/apk/nv;

    const-string v1, "Closing"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/nv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/nv;->new:Lcom/apk/nv;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/apk/nv;

    .line 2
    sget-object v6, Lcom/apk/nv;->do:Lcom/apk/nv;

    aput-object v6, v1, v2

    sget-object v2, Lcom/apk/nv;->if:Lcom/apk/nv;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/nv;->for:Lcom/apk/nv;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/apk/nv;->try:[Lcom/apk/nv;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/nv;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/nv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/nv;

    return-object p0
.end method

.method public static values()[Lcom/apk/nv;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/nv;->try:[Lcom/apk/nv;

    invoke-virtual {v0}, [Lcom/apk/nv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/nv;

    return-object v0
.end method
