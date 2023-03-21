.class public final Lcom/apk/fm;
.super Lcom/apk/cm;
.source "InternalCacheDiskCacheFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/em;

    const-string v1, "image_manager_disk_cache"

    invoke-direct {v0, p1, v1}, Lcom/apk/em;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/32 v1, 0xfa00000

    invoke-direct {p0, v0, v1, v2}, Lcom/apk/cm;-><init>(Lcom/apk/cm$if;J)V

    return-void
.end method
