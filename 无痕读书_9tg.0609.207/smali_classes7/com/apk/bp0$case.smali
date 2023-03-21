.class public final enum Lcom/apk/bp0$case;
.super Lcom/apk/bp0;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/bp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/bp0;-><init>(Ljava/lang/String;ILcom/apk/bp0$catch;)V

    return-void
.end method


# virtual methods
.method public case(Lcom/apk/ap0;Lcom/apk/qo0;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/bp0;->throw:Lcom/apk/bp0;

    sget-object v1, Lcom/apk/bp0;->try:Lcom/apk/bp0;

    invoke-static {p1, p2, v0, v1}, Lcom/apk/bp0;->for(Lcom/apk/ap0;Lcom/apk/qo0;Lcom/apk/bp0;Lcom/apk/bp0;)V

    return-void
.end method
