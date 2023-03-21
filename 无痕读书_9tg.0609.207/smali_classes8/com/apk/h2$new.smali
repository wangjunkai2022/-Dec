.class public Lcom/apk/h2$new;
.super Ljava/lang/Object;
.source "BookReadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/h2;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/h2;


# direct methods
.method public constructor <init>(Lcom/apk/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h2$new;->do:Lcom/apk/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h2$new;->do:Lcom/apk/h2;

    .line 2
    iget v1, v0, Lcom/apk/h2;->goto:I

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/apk/h2;->B(IZ)V

    return-void
.end method
