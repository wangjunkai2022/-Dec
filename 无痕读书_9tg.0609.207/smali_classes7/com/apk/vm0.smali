.class public final enum Lcom/apk/vm0;
.super Ljava/lang/Enum;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/vm0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/vm0;

.field public static final enum for:Lcom/apk/vm0;

.field public static final enum if:Lcom/apk/vm0;

.field public static final enum new:Lcom/apk/vm0;

.field public static final synthetic try:[Lcom/apk/vm0;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/vm0;

    const-string v1, "block"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/apk/vm0;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/apk/vm0;->do:Lcom/apk/vm0;

    .line 2
    new-instance v0, Lcom/apk/vm0;

    const-string v1, "inline"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/apk/vm0;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/apk/vm0;->if:Lcom/apk/vm0;

    .line 3
    new-instance v0, Lcom/apk/vm0;

    const-string v1, "any"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/apk/vm0;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/apk/vm0;->for:Lcom/apk/vm0;

    .line 4
    new-instance v0, Lcom/apk/vm0;

    const-string v1, "none"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/apk/vm0;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/apk/vm0;->new:Lcom/apk/vm0;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/apk/vm0;

    .line 5
    sget-object v6, Lcom/apk/vm0;->do:Lcom/apk/vm0;

    aput-object v6, v1, v2

    sget-object v2, Lcom/apk/vm0;->if:Lcom/apk/vm0;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/vm0;->for:Lcom/apk/vm0;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/apk/vm0;->try:[Lcom/apk/vm0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apk/vm0;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/vm0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/vm0;

    return-object p0
.end method

.method public static values()[Lcom/apk/vm0;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/vm0;->try:[Lcom/apk/vm0;

    invoke-virtual {v0}, [Lcom/apk/vm0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/vm0;

    return-object v0
.end method
