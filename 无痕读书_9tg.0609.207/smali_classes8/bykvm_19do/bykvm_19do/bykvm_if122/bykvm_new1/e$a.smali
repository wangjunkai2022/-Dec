.class public final Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e$a;
.super Ljava/lang/Object;
.source "AdLocationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e;->d(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e$a;->b:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e$a;->b:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e;->a(Landroid/content/Context;Landroid/location/LocationManager;)V

    return-void
.end method
