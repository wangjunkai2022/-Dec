.class public final enum Lcom/apk/co$try;
.super Ljava/lang/Enum;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/co$try;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/co$try;

.field public static final synthetic for:[Lcom/apk/co$try;

.field public static final enum if:Lcom/apk/co$try;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/apk/co$try;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/co$try;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/co$try;->do:Lcom/apk/co$try;

    .line 2
    new-instance v0, Lcom/apk/co$try;

    const-string v1, "QUALITY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/co$try;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/co$try;->if:Lcom/apk/co$try;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/apk/co$try;

    .line 3
    sget-object v4, Lcom/apk/co$try;->do:Lcom/apk/co$try;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/apk/co$try;->for:[Lcom/apk/co$try;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/co$try;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/co$try;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/co$try;

    return-object p0
.end method

.method public static values()[Lcom/apk/co$try;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/co$try;->for:[Lcom/apk/co$try;

    invoke-virtual {v0}, [Lcom/apk/co$try;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/co$try;

    return-object v0
.end method
