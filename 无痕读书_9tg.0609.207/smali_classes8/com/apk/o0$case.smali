.class public Lcom/apk/o0$case;
.super Ljava/lang/Object;
.source "BookCacheManager.java"

# interfaces
.implements Lcom/apk/et;


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
    iput-object p2, p0, Lcom/apk/o0$case;->do:Lcom/apk/o0$else;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/o0$case;->do:Lcom/apk/o0$else;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/apk/o0$else;->do(Z)V

    :cond_0
    return-void
.end method
