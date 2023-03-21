.class public final enum Lcom/apk/h40$do;
.super Ljava/lang/Enum;
.source "ScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/h40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/h40$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum case:Lcom/apk/h40$do;

.field public static final enum do:Lcom/apk/h40$do;

.field public static final synthetic else:[Lcom/apk/h40$do;

.field public static final enum for:Lcom/apk/h40$do;

.field public static final enum if:Lcom/apk/h40$do;

.field public static final enum new:Lcom/apk/h40$do;

.field public static final enum try:Lcom/apk/h40$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/apk/h40$do;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/h40$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/h40$do;->do:Lcom/apk/h40$do;

    .line 2
    new-instance v0, Lcom/apk/h40$do;

    const-string v1, "TOP_FLOAT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/h40$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/h40$do;->if:Lcom/apk/h40$do;

    .line 3
    new-instance v0, Lcom/apk/h40$do;

    const-string v1, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/h40$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/h40$do;->for:Lcom/apk/h40$do;

    .line 4
    new-instance v0, Lcom/apk/h40$do;

    const-string v1, "BOTTOM_FLOAT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/h40$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/h40$do;->new:Lcom/apk/h40$do;

    .line 5
    new-instance v0, Lcom/apk/h40$do;

    const-string v1, "CENTENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apk/h40$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/h40$do;->try:Lcom/apk/h40$do;

    .line 6
    new-instance v0, Lcom/apk/h40$do;

    const-string v1, "CENTENT_BACKGROUND"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/apk/h40$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/h40$do;->case:Lcom/apk/h40$do;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/apk/h40$do;

    .line 7
    sget-object v8, Lcom/apk/h40$do;->do:Lcom/apk/h40$do;

    aput-object v8, v1, v2

    sget-object v2, Lcom/apk/h40$do;->if:Lcom/apk/h40$do;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/h40$do;->for:Lcom/apk/h40$do;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/h40$do;->new:Lcom/apk/h40$do;

    aput-object v2, v1, v5

    sget-object v2, Lcom/apk/h40$do;->try:Lcom/apk/h40$do;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/apk/h40$do;->else:[Lcom/apk/h40$do;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/h40$do;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/h40$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/h40$do;

    return-object p0
.end method

.method public static values()[Lcom/apk/h40$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/h40$do;->else:[Lcom/apk/h40$do;

    invoke-virtual {v0}, [Lcom/apk/h40$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/h40$do;

    return-object v0
.end method
