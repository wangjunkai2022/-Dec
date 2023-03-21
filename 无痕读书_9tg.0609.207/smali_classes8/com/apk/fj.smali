.class public final enum Lcom/apk/fj;
.super Ljava/lang/Enum;
.source "EncodeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/fj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/fj;

.field public static final enum for:Lcom/apk/fj;

.field public static final enum if:Lcom/apk/fj;

.field public static final synthetic new:[Lcom/apk/fj;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/apk/fj;

    const-string v1, "SOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/fj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/fj;->do:Lcom/apk/fj;

    .line 2
    new-instance v0, Lcom/apk/fj;

    const-string v1, "TRANSFORMED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/fj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/fj;->if:Lcom/apk/fj;

    .line 3
    new-instance v0, Lcom/apk/fj;

    const-string v1, "NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/fj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/fj;->for:Lcom/apk/fj;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/apk/fj;

    .line 4
    sget-object v5, Lcom/apk/fj;->do:Lcom/apk/fj;

    aput-object v5, v1, v2

    sget-object v2, Lcom/apk/fj;->if:Lcom/apk/fj;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/apk/fj;->new:[Lcom/apk/fj;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/fj;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/fj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/fj;

    return-object p0
.end method

.method public static values()[Lcom/apk/fj;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/fj;->new:[Lcom/apk/fj;

    invoke-virtual {v0}, [Lcom/apk/fj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/fj;

    return-object v0
.end method
