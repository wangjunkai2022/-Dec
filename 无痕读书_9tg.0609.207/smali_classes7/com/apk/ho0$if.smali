.class public final enum Lcom/apk/ho0$if;
.super Ljava/lang/Enum;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ho0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/ho0$if;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/ho0$if;

.field public static final enum for:Lcom/apk/ho0$if;

.field public static final enum if:Lcom/apk/ho0$if;

.field public static final synthetic new:[Lcom/apk/ho0$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/apk/ho0$if;

    const-string v1, "noQuirks"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/ho0$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ho0$if;->do:Lcom/apk/ho0$if;

    new-instance v0, Lcom/apk/ho0$if;

    const-string v1, "quirks"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/ho0$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ho0$if;->if:Lcom/apk/ho0$if;

    new-instance v0, Lcom/apk/ho0$if;

    const-string v1, "limitedQuirks"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/ho0$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ho0$if;->for:Lcom/apk/ho0$if;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/apk/ho0$if;

    .line 2
    sget-object v5, Lcom/apk/ho0$if;->do:Lcom/apk/ho0$if;

    aput-object v5, v1, v2

    sget-object v2, Lcom/apk/ho0$if;->if:Lcom/apk/ho0$if;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    .line 3
    sput-object v1, Lcom/apk/ho0$if;->new:[Lcom/apk/ho0$if;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/ho0$if;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/ho0$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/ho0$if;

    return-object p0
.end method

.method public static values()[Lcom/apk/ho0$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/ho0$if;->new:[Lcom/apk/ho0$if;

    invoke-virtual {v0}, [Lcom/apk/ho0$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/ho0$if;

    return-object v0
.end method
