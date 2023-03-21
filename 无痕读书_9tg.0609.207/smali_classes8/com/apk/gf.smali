.class public final enum Lcom/apk/gf;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/gf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/gf;

.field public static final synthetic for:[Lcom/apk/gf;

.field public static final enum if:Lcom/apk/gf;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/apk/gf;

    const-string v1, "TUIGUANG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/gf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/gf;->do:Lcom/apk/gf;

    new-instance v0, Lcom/apk/gf;

    const-string v1, "ZITUI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/gf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/gf;->if:Lcom/apk/gf;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/apk/gf;

    .line 2
    sget-object v4, Lcom/apk/gf;->do:Lcom/apk/gf;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/apk/gf;->for:[Lcom/apk/gf;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/gf;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/gf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/gf;

    return-object p0
.end method

.method public static values()[Lcom/apk/gf;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/gf;->for:[Lcom/apk/gf;

    invoke-virtual {v0}, [Lcom/apk/gf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/gf;

    return-object v0
.end method
