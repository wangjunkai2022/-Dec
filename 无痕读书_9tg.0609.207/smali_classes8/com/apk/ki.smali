.class public Lcom/apk/ki;
.super Ljava/lang/Object;
.source "GlideBuilder.java"

# interfaces
.implements Lcom/apk/ii$do;


# instance fields
.field public final synthetic do:Lcom/apk/dr;


# direct methods
.method public constructor <init>(Lcom/apk/ji;Lcom/apk/dr;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/apk/ki;->do:Lcom/apk/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Lcom/apk/dr;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ki;->do:Lcom/apk/dr;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/apk/dr;

    invoke-direct {v0}, Lcom/apk/dr;-><init>()V

    :goto_0
    return-object v0
.end method
