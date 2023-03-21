.class public final Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e$c;
.super Ljava/lang/Object;
.source "AdLocationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e;->b(Landroid/content/Context;Landroid/location/LocationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/location/LocationManager;

.field public final synthetic b:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e$c;->a:Landroid/location/LocationManager;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e$c;->b:Landroid/location/LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e$c;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e$c;->b:Landroid/location/LocationListener;

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/e;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    return-void
.end method
