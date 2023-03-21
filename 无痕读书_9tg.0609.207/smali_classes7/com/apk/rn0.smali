.class public final enum Lcom/apk/rn0;
.super Ljava/lang/Enum;
.source "ErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/rn0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum case:Lcom/apk/rn0;

.field public static final enum do:Lcom/apk/rn0;

.field public static final enum else:Lcom/apk/rn0;

.field public static final enum for:Lcom/apk/rn0;

.field public static final enum goto:Lcom/apk/rn0;

.field public static final enum if:Lcom/apk/rn0;

.field public static final enum new:Lcom/apk/rn0;

.field public static final synthetic this:[Lcom/apk/rn0;

.field public static final enum try:Lcom/apk/rn0;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/apk/rn0;

    const-string v1, "FatalTagMissing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/rn0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/rn0;->do:Lcom/apk/rn0;

    .line 2
    new-instance v0, Lcom/apk/rn0;

    const-string v1, "NotAllowedTag"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/rn0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/rn0;->if:Lcom/apk/rn0;

    .line 3
    new-instance v0, Lcom/apk/rn0;

    const-string v1, "RequiredParentMissing"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/rn0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/rn0;->for:Lcom/apk/rn0;

    .line 4
    new-instance v0, Lcom/apk/rn0;

    const-string v1, "UnclosedTag"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/rn0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/rn0;->new:Lcom/apk/rn0;

    .line 5
    new-instance v0, Lcom/apk/rn0;

    const-string v1, "UniqueTagDuplicated"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apk/rn0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/rn0;->try:Lcom/apk/rn0;

    .line 6
    new-instance v0, Lcom/apk/rn0;

    const-string v1, "Deprecated"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/apk/rn0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/rn0;->case:Lcom/apk/rn0;

    .line 7
    new-instance v0, Lcom/apk/rn0;

    const-string v1, "UnpermittedChild"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/apk/rn0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/rn0;->else:Lcom/apk/rn0;

    .line 8
    new-instance v0, Lcom/apk/rn0;

    const-string v1, "Unknown"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/apk/rn0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/rn0;->goto:Lcom/apk/rn0;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/apk/rn0;

    .line 9
    sget-object v10, Lcom/apk/rn0;->do:Lcom/apk/rn0;

    aput-object v10, v1, v2

    sget-object v2, Lcom/apk/rn0;->if:Lcom/apk/rn0;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/rn0;->for:Lcom/apk/rn0;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/rn0;->new:Lcom/apk/rn0;

    aput-object v2, v1, v5

    sget-object v2, Lcom/apk/rn0;->try:Lcom/apk/rn0;

    aput-object v2, v1, v6

    sget-object v2, Lcom/apk/rn0;->case:Lcom/apk/rn0;

    aput-object v2, v1, v7

    sget-object v2, Lcom/apk/rn0;->else:Lcom/apk/rn0;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/apk/rn0;->this:[Lcom/apk/rn0;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/rn0;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/rn0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/rn0;

    return-object p0
.end method

.method public static values()[Lcom/apk/rn0;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/rn0;->this:[Lcom/apk/rn0;

    invoke-virtual {v0}, [Lcom/apk/rn0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/rn0;

    return-object v0
.end method
