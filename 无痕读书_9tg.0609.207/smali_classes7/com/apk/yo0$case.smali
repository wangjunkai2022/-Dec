.class public final Lcom/apk/yo0$case;
.super Lcom/apk/yo0;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/yo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "case"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/apk/yo0;-><init>(Lcom/apk/yo0$do;)V

    .line 2
    sget-object v0, Lcom/apk/yo0$break;->case:Lcom/apk/yo0$break;

    iput-object v0, p0, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    return-void
.end method


# virtual methods
.method public else()Lcom/apk/yo0;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
