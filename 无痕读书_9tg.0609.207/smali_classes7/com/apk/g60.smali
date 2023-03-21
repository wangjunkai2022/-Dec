.class public Lcom/apk/g60;
.super Lcom/apk/p70;
.source "TrRewardVideoAd.java"


# instance fields
.field public final for:Lcom/apk/z60;

.field public final if:Landroid/app/Activity;

.field public new:Lcom/apk/m60;

.field public final try:Lcom/apk/z60;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/z60;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/p70;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/g60$do;

    invoke-direct {v0, p0}, Lcom/apk/g60$do;-><init>(Lcom/apk/g60;)V

    iput-object v0, p0, Lcom/apk/g60;->try:Lcom/apk/z60;

    .line 3
    iput-object p1, p0, Lcom/apk/g60;->if:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/apk/g60;->for:Lcom/apk/z60;

    .line 5
    iput-object p3, p0, Lcom/apk/p70;->do:Ljava/lang/String;

    return-void
.end method
