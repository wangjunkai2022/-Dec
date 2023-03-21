.class public final Lcom/apk/m30;
.super Ljava/lang/Object;
.source "GlideCacheUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/m30;->do:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/m30;->do:Landroid/content/Context;

    invoke-static {v0}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/ii;->if()V

    return-void
.end method
