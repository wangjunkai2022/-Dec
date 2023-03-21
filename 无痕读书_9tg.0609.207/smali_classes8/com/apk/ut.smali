.class public Lcom/apk/ut;
.super Ljava/lang/Object;
.source "OaidHelper.java"

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ut$do;
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/ut$do;


# direct methods
.method public constructor <init>(Lcom/apk/ut$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/ut;->do:Lcom/apk/ut$do;

    return-void
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p2}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/apk/ut;->do:Lcom/apk/ut$do;

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2, p1}, Lcom/apk/ut$do;->do(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
