.class public final enum Lcom/apk/lg$do;
.super Ljava/lang/Enum;
.source "AppBarLayoutStateChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/lg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/lg$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/apk/lg$do;

.field public static final enum for:Lcom/apk/lg$do;

.field public static final enum if:Lcom/apk/lg$do;

.field public static final synthetic new:[Lcom/apk/lg$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/apk/lg$do;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/lg$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/lg$do;->do:Lcom/apk/lg$do;

    .line 2
    new-instance v0, Lcom/apk/lg$do;

    const-string v1, "COLLAPSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/lg$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/lg$do;->if:Lcom/apk/lg$do;

    .line 3
    new-instance v0, Lcom/apk/lg$do;

    const-string v1, "INTERMEDIATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/lg$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/lg$do;->for:Lcom/apk/lg$do;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/apk/lg$do;

    .line 4
    sget-object v5, Lcom/apk/lg$do;->do:Lcom/apk/lg$do;

    aput-object v5, v1, v2

    sget-object v2, Lcom/apk/lg$do;->if:Lcom/apk/lg$do;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/apk/lg$do;->new:[Lcom/apk/lg$do;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apk/lg$do;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/lg$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/lg$do;

    return-object p0
.end method

.method public static values()[Lcom/apk/lg$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/lg$do;->new:[Lcom/apk/lg$do;

    invoke-virtual {v0}, [Lcom/apk/lg$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/lg$do;

    return-object v0
.end method
