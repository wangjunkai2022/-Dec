.class public Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity$do;
.super Ljava/lang/Object;
.source "ToforegroundActivity.java"

# interfaces
.implements Lcom/apk/y60;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->i(Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;)V

    return-void
.end method

.method public do()V
    .locals 0

    return-void
.end method

.method public else()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->i(Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;)V

    return-void
.end method

.method public for()V
    .locals 0

    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->i(Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;)V

    return-void
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method

.method public onAdDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->i(Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;)V

    return-void
.end method

.method public onAdShow()V
    .locals 2

    :try_start_0
    const-string v0, "TOFORE_SPLASH_AD_SHOW_MAX_KEY"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "SP_SAVE_TOFORE_SPLASH_AD_SHOW_MAX_KEY"

    .line 2
    invoke-static {v0}, Lcom/apk/w0;->continue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onZoomOut()V
    .locals 2

    const-string v0, "SPLASH_V_PLUS_ZOOMOUT_KEY"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method
