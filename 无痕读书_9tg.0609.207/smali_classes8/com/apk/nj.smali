.class public final enum Lcom/apk/nj;
.super Ljava/lang/Enum;
.source "PreferredColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/nj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/nj;

.field public static final synthetic for:[Lcom/apk/nj;

.field public static final enum if:Lcom/apk/nj;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/apk/nj;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/nj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/nj;->do:Lcom/apk/nj;

    .line 2
    new-instance v0, Lcom/apk/nj;

    const-string v1, "DISPLAY_P3"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/nj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/nj;->if:Lcom/apk/nj;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/apk/nj;

    .line 3
    sget-object v4, Lcom/apk/nj;->do:Lcom/apk/nj;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/apk/nj;->for:[Lcom/apk/nj;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/nj;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/nj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/nj;

    return-object p0
.end method

.method public static values()[Lcom/apk/nj;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/nj;->for:[Lcom/apk/nj;

    invoke-virtual {v0}, [Lcom/apk/nj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/nj;

    return-object v0
.end method
