.class public Lcom/apk/f70$for;
.super Ljava/lang/Object;
.source "BaseAdProviderSuper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/f70;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/f70;


# direct methods
.method public constructor <init>(Lcom/apk/f70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f70$for;->do:Lcom/apk/f70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/f70$for;->do:Lcom/apk/f70;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "cancelTimer"

    .line 2
    invoke-static {v2}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lcom/apk/f70;->if:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 5
    iput-object v1, v0, Lcom/apk/f70;->if:Landroid/os/CountDownTimer;

    :cond_0
    return-void

    .line 6
    :cond_1
    throw v1
.end method
