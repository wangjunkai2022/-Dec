.class public final enum Lcom/apk/oc0;
.super Ljava/lang/Enum;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/oc0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/oc0;

.field public static final enum for:Lcom/apk/oc0;

.field public static final enum if:Lcom/apk/oc0;

.field public static final synthetic new:[Lcom/apk/oc0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/apk/oc0;

    new-instance v1, Lcom/apk/oc0;

    const-string v2, "SOURCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/apk/oc0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/apk/oc0;->do:Lcom/apk/oc0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/oc0;

    const-string v2, "BINARY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/apk/oc0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/apk/oc0;->if:Lcom/apk/oc0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/apk/oc0;

    const-string v2, "RUNTIME"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/apk/oc0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/apk/oc0;->for:Lcom/apk/oc0;

    aput-object v1, v0, v3

    sput-object v0, Lcom/apk/oc0;->new:[Lcom/apk/oc0;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/oc0;
    .locals 1

    const-class v0, Lcom/apk/oc0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/oc0;

    return-object p0
.end method

.method public static values()[Lcom/apk/oc0;
    .locals 1

    sget-object v0, Lcom/apk/oc0;->new:[Lcom/apk/oc0;

    invoke-virtual {v0}, [Lcom/apk/oc0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/oc0;

    return-object v0
.end method
