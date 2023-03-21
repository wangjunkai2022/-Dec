.class public Lcom/apk/qw$if;
.super Ljava/lang/Object;
.source "XPopupUtils.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/qw;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/qw;


# direct methods
.method public constructor <init>(Lcom/apk/qw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/qw$if;->do:Lcom/apk/qw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/qw$if;->do:Lcom/apk/qw;

    iget-object p1, p1, Lcom/apk/qw;->for:Landroid/os/Handler;

    new-instance p2, Lcom/apk/qw$if$do;

    invoke-direct {p2, p0}, Lcom/apk/qw$if$do;-><init>(Lcom/apk/qw$if;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
