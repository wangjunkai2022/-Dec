.class public final enum Lcom/apk/qh$do;
.super Ljava/lang/Enum;
.source "ClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/qh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/qh$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/qh$do;

.field public static final synthetic for:[Lcom/apk/qh$do;

.field public static final enum if:Lcom/apk/qh$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/apk/qh$do;

    const-string v1, "CIRCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/qh$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/qh$do;->do:Lcom/apk/qh$do;

    new-instance v0, Lcom/apk/qh$do;

    const-string v1, "RECTANGLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/qh$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/qh$do;->if:Lcom/apk/qh$do;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/apk/qh$do;

    .line 2
    sget-object v4, Lcom/apk/qh$do;->do:Lcom/apk/qh$do;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/apk/qh$do;->for:[Lcom/apk/qh$do;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/qh$do;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/qh$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/qh$do;

    return-object p0
.end method

.method public static values()[Lcom/apk/qh$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/qh$do;->for:[Lcom/apk/qh$do;

    invoke-virtual {v0}, [Lcom/apk/qh$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/qh$do;

    return-object v0
.end method
