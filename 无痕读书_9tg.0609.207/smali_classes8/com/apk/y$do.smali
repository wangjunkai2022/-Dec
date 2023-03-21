.class public Lcom/apk/y$do;
.super Ljava/lang/Object;
.source "SwlAdLoader.java"

# interfaces
.implements Lcom/apk/j1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/o40;


# direct methods
.method public constructor <init>(Lcom/apk/y;Lcom/apk/o40;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/apk/y$do;->do:Lcom/apk/o40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/y$do;->do:Lcom/apk/o40;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/apk/o40;->success()V

    :cond_0
    return-void
.end method

.method public if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/y$do;->do:Lcom/apk/o40;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/apk/o40;->error()V

    :cond_0
    return-void
.end method
