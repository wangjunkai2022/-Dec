.class public final enum Lcom/apk/hf;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/hf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/hf;

.field public static final enum for:Lcom/apk/hf;

.field public static final enum if:Lcom/apk/hf;

.field public static final enum new:Lcom/apk/hf;

.field public static final synthetic try:[Lcom/apk/hf;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/hf;

    const-string v1, "BOOK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/hf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    new-instance v0, Lcom/apk/hf;

    const-string v1, "COMIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/hf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    new-instance v0, Lcom/apk/hf;

    const-string v1, "BOOK_COMIC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/hf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/hf;->for:Lcom/apk/hf;

    new-instance v0, Lcom/apk/hf;

    const-string v1, "COMIC_BOOK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/hf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/hf;->new:Lcom/apk/hf;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/apk/hf;

    .line 2
    sget-object v6, Lcom/apk/hf;->do:Lcom/apk/hf;

    aput-object v6, v1, v2

    sget-object v2, Lcom/apk/hf;->if:Lcom/apk/hf;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/hf;->for:Lcom/apk/hf;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/apk/hf;->try:[Lcom/apk/hf;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/hf;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/hf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/hf;

    return-object p0
.end method

.method public static values()[Lcom/apk/hf;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/hf;->try:[Lcom/apk/hf;

    invoke-virtual {v0}, [Lcom/apk/hf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/hf;

    return-object v0
.end method
