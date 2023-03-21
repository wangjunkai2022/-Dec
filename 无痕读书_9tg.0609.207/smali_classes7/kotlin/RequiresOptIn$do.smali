.class public final enum Lkotlin/RequiresOptIn$do;
.super Ljava/lang/Enum;
.source "OptIn.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/RequiresOptIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/RequiresOptIn$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lkotlin/RequiresOptIn$do;

.field public static final synthetic for:[Lkotlin/RequiresOptIn$do;

.field public static final enum if:Lkotlin/RequiresOptIn$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/RequiresOptIn$do;

    new-instance v1, Lkotlin/RequiresOptIn$do;

    const-string v2, "WARNING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/RequiresOptIn$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/RequiresOptIn$do;->do:Lkotlin/RequiresOptIn$do;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/RequiresOptIn$do;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/RequiresOptIn$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/RequiresOptIn$do;->if:Lkotlin/RequiresOptIn$do;

    aput-object v1, v0, v3

    sput-object v0, Lkotlin/RequiresOptIn$do;->for:[Lkotlin/RequiresOptIn$do;

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

.method public static valueOf(Ljava/lang/String;)Lkotlin/RequiresOptIn$do;
    .locals 1

    const-class v0, Lkotlin/RequiresOptIn$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/RequiresOptIn$do;

    return-object p0
.end method

.method public static values()[Lkotlin/RequiresOptIn$do;
    .locals 1

    sget-object v0, Lkotlin/RequiresOptIn$do;->for:[Lkotlin/RequiresOptIn$do;

    invoke-virtual {v0}, [Lkotlin/RequiresOptIn$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/RequiresOptIn$do;

    return-object v0
.end method
