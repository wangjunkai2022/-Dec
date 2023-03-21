.class public final enum Lcom/apk/fr$do;
.super Ljava/lang/Enum;
.source "SingleRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/fr$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum case:Lcom/apk/fr$do;

.field public static final enum do:Lcom/apk/fr$do;

.field public static final synthetic else:[Lcom/apk/fr$do;

.field public static final enum for:Lcom/apk/fr$do;

.field public static final enum if:Lcom/apk/fr$do;

.field public static final enum new:Lcom/apk/fr$do;

.field public static final enum try:Lcom/apk/fr$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/apk/fr$do;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/fr$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/fr$do;->do:Lcom/apk/fr$do;

    .line 2
    new-instance v0, Lcom/apk/fr$do;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/fr$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/fr$do;->if:Lcom/apk/fr$do;

    .line 3
    new-instance v0, Lcom/apk/fr$do;

    const-string v1, "WAITING_FOR_SIZE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/fr$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/fr$do;->for:Lcom/apk/fr$do;

    .line 4
    new-instance v0, Lcom/apk/fr$do;

    const-string v1, "COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/fr$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/fr$do;->new:Lcom/apk/fr$do;

    .line 5
    new-instance v0, Lcom/apk/fr$do;

    const-string v1, "FAILED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apk/fr$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/fr$do;->try:Lcom/apk/fr$do;

    .line 6
    new-instance v0, Lcom/apk/fr$do;

    const-string v1, "CLEARED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/apk/fr$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/fr$do;->case:Lcom/apk/fr$do;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/apk/fr$do;

    .line 7
    sget-object v8, Lcom/apk/fr$do;->do:Lcom/apk/fr$do;

    aput-object v8, v1, v2

    sget-object v2, Lcom/apk/fr$do;->if:Lcom/apk/fr$do;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/fr$do;->for:Lcom/apk/fr$do;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/fr$do;->new:Lcom/apk/fr$do;

    aput-object v2, v1, v5

    sget-object v2, Lcom/apk/fr$do;->try:Lcom/apk/fr$do;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/apk/fr$do;->else:[Lcom/apk/fr$do;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/fr$do;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/fr$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/fr$do;

    return-object p0
.end method

.method public static values()[Lcom/apk/fr$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/fr$do;->else:[Lcom/apk/fr$do;

    invoke-virtual {v0}, [Lcom/apk/fr$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/fr$do;

    return-object v0
.end method
