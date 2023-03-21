.class public Lcom/apk/sw$if;
.super Ljava/lang/Object;
.source "XPopupUtils.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/sw;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/sw;


# direct methods
.method public constructor <init>(Lcom/apk/sw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/sw$if;->do:Lcom/apk/sw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/sw$if;->do:Lcom/apk/sw;

    iget-object p1, p1, Lcom/apk/sw;->if:Landroid/os/Handler;

    new-instance p2, Lcom/apk/sw$if$do;

    invoke-direct {p2, p0}, Lcom/apk/sw$if$do;-><init>(Lcom/apk/sw$if;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
