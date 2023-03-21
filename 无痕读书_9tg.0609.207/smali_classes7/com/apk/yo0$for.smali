.class public Lcom/apk/yo0$for;
.super Lcom/apk/yo0;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/yo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/apk/yo0;-><init>(Lcom/apk/yo0$do;)V

    .line 2
    sget-object v0, Lcom/apk/yo0$break;->try:Lcom/apk/yo0$break;

    iput-object v0, p0, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    return-void
.end method


# virtual methods
.method public else()Lcom/apk/yo0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/apk/yo0$for;->if:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/yo0$for;->if:Ljava/lang/String;

    return-object v0
.end method
