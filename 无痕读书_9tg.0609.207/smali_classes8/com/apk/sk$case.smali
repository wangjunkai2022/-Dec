.class public final enum Lcom/apk/sk$case;
.super Ljava/lang/Enum;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/sk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/sk$case;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/sk$case;

.field public static final enum for:Lcom/apk/sk$case;

.field public static final enum if:Lcom/apk/sk$case;

.field public static final synthetic new:[Lcom/apk/sk$case;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/apk/sk$case;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/sk$case;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/sk$case;->do:Lcom/apk/sk$case;

    .line 2
    new-instance v0, Lcom/apk/sk$case;

    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/sk$case;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/sk$case;->if:Lcom/apk/sk$case;

    .line 3
    new-instance v0, Lcom/apk/sk$case;

    const-string v1, "DECODE_DATA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/sk$case;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/sk$case;->for:Lcom/apk/sk$case;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/apk/sk$case;

    .line 4
    sget-object v5, Lcom/apk/sk$case;->do:Lcom/apk/sk$case;

    aput-object v5, v1, v2

    sget-object v2, Lcom/apk/sk$case;->if:Lcom/apk/sk$case;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/apk/sk$case;->new:[Lcom/apk/sk$case;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/sk$case;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/sk$case;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/sk$case;

    return-object p0
.end method

.method public static values()[Lcom/apk/sk$case;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/sk$case;->new:[Lcom/apk/sk$case;

    invoke-virtual {v0}, [Lcom/apk/sk$case;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/sk$case;

    return-object v0
.end method
