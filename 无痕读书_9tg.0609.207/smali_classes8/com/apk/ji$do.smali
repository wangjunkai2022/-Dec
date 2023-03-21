.class public Lcom/apk/ji$do;
.super Ljava/lang/Object;
.source "GlideBuilder.java"

# interfaces
.implements Lcom/apk/ii$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/apk/ji;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Lcom/apk/dr;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/dr;

    invoke-direct {v0}, Lcom/apk/dr;-><init>()V

    return-object v0
.end method
