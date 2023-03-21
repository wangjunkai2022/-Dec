.class public Lcom/apk/of0;
.super Ljava/lang/Object;
.source "ZipModel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public case:Ljava/lang/String;

.field public do:Lcom/apk/ff0;

.field public else:Z

.field public for:Lcom/apk/lf0;

.field public goto:Ljava/lang/String;

.field public if:Lcom/apk/gf0;

.field public new:Lcom/apk/mf0;

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
