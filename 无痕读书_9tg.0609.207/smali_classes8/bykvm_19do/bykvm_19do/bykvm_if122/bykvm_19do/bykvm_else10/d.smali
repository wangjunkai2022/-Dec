.class public final enum Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;
.super Ljava/lang/Enum;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

.field public static final enum b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

.field public static final enum c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

.field public static final synthetic d:[Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    const-string v1, "GRANTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    const-string v1, "DENIED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    const-string v1, "NOT_FOUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    const/4 v1, 0x3

    new-array v1, v1, [Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    .line 4
    sget-object v5, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    aput-object v5, v1, v2

    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;->d:[Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

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

.method public static valueOf(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;
    .locals 1

    .line 1
    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    return-object p0
.end method

.method public static values()[Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;->d:[Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    invoke-virtual {v0}, [Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;

    return-object v0
.end method
