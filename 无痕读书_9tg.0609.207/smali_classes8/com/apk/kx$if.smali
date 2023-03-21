.class public Lcom/apk/kx$if;
.super Ljava/lang/Object;
.source "RequestFailedCachePolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/kx;->do(Lcom/apk/iy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/iy;

.field public final synthetic if:Lcom/apk/kx;


# direct methods
.method public constructor <init>(Lcom/apk/kx;Lcom/apk/iy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/kx$if;->if:Lcom/apk/kx;

    iput-object p2, p0, Lcom/apk/kx$if;->do:Lcom/apk/iy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/kx$if;->if:Lcom/apk/kx;

    iget-object v0, v0, Lcom/apk/ax;->case:Lcom/apk/mx;

    iget-object v1, p0, Lcom/apk/kx$if;->do:Lcom/apk/iy;

    invoke-virtual {v0, v1}, Lcom/apk/mx;->onCacheSuccess(Lcom/apk/iy;)V

    .line 2
    iget-object v0, p0, Lcom/apk/kx$if;->if:Lcom/apk/kx;

    iget-object v0, v0, Lcom/apk/ax;->case:Lcom/apk/mx;

    iget-object v1, p0, Lcom/apk/kx$if;->do:Lcom/apk/iy;

    invoke-virtual {v0, v1}, Lcom/apk/mx;->onFinish(Lcom/apk/iy;)V

    return-void
.end method
