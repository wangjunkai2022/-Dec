.class public Lcom/apk/k50;
.super Lcom/apk/t60;
.source "AdHelperBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/k50$do;
    }
.end annotation


# instance fields
.field public case:Lcom/apk/u40;

.field public do:Z

.field public for:Lcom/apk/d80;

.field public if:Lcom/apk/l60;

.field public new:Lcom/apk/t70;

.field public try:Lcom/apk/p60;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/t60;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/k50;->do:Z

    return-void
.end method
