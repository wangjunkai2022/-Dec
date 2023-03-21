.class public Lcom/apk/o0$new;
.super Ljava/lang/Object;
.source "BookCacheManager.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/o0;->throw(Landroid/app/Activity;Lcom/apk/o0$else;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/o0$else;


# direct methods
.method public constructor <init>(Lcom/apk/o0;Lcom/apk/o0$else;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/apk/o0$new;->do:Lcom/apk/o0$else;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/o0$new;->do:Lcom/apk/o0$else;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lcom/apk/o0$else;->do(Z)V

    .line 3
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "CACHE_DOWNLOAD_4G"

    invoke-static {v1, v0}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
