.class public Lcom/apk/gh;
.super Ljava/lang/Object;
.source "BridgeWebView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final synthetic do:Lcom/apk/ih;


# direct methods
.method public constructor <init>(Lcom/apk/ih;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/gh;->do:Lcom/apk/ih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 1
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/apk/gh;->do:Lcom/apk/ih;

    .line 3
    iget-object v0, v0, Lcom/apk/ih;->do:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v3, p4

    move-wide v4, p5

    move-object v6, p3

    move-object v7, p2

    .line 4
    invoke-interface/range {v0 .. v7}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;->continue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
