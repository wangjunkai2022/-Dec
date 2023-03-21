.class public final enum Lcom/apk/yo0$break;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/yo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "break"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/yo0$break;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum case:Lcom/apk/yo0$break;

.field public static final enum do:Lcom/apk/yo0$break;

.field public static final synthetic else:[Lcom/apk/yo0$break;

.field public static final enum for:Lcom/apk/yo0$break;

.field public static final enum if:Lcom/apk/yo0$break;

.field public static final enum new:Lcom/apk/yo0$break;

.field public static final enum try:Lcom/apk/yo0$break;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/apk/yo0$break;

    const-string v1, "Doctype"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/yo0$break;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/yo0$break;->do:Lcom/apk/yo0$break;

    .line 2
    new-instance v0, Lcom/apk/yo0$break;

    const-string v1, "StartTag"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/yo0$break;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/yo0$break;->if:Lcom/apk/yo0$break;

    .line 3
    new-instance v0, Lcom/apk/yo0$break;

    const-string v1, "EndTag"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/yo0$break;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/yo0$break;->for:Lcom/apk/yo0$break;

    .line 4
    new-instance v0, Lcom/apk/yo0$break;

    const-string v1, "Comment"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/yo0$break;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/yo0$break;->new:Lcom/apk/yo0$break;

    .line 5
    new-instance v0, Lcom/apk/yo0$break;

    const-string v1, "Character"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apk/yo0$break;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/yo0$break;->try:Lcom/apk/yo0$break;

    .line 6
    new-instance v0, Lcom/apk/yo0$break;

    const-string v1, "EOF"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/apk/yo0$break;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/yo0$break;->case:Lcom/apk/yo0$break;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/apk/yo0$break;

    .line 7
    sget-object v8, Lcom/apk/yo0$break;->do:Lcom/apk/yo0$break;

    aput-object v8, v1, v2

    sget-object v2, Lcom/apk/yo0$break;->if:Lcom/apk/yo0$break;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/yo0$break;->for:Lcom/apk/yo0$break;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/yo0$break;->new:Lcom/apk/yo0$break;

    aput-object v2, v1, v5

    sget-object v2, Lcom/apk/yo0$break;->try:Lcom/apk/yo0$break;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    .line 8
    sput-object v1, Lcom/apk/yo0$break;->else:[Lcom/apk/yo0$break;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/yo0$break;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/yo0$break;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/yo0$break;

    return-object p0
.end method

.method public static values()[Lcom/apk/yo0$break;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/yo0$break;->else:[Lcom/apk/yo0$break;

    invoke-virtual {v0}, [Lcom/apk/yo0$break;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/yo0$break;

    return-object v0
.end method
