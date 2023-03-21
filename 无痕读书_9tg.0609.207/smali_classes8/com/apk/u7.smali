.class public Lcom/apk/u7;
.super Lcom/apk/yv;
.source "ImportFileActivity.java"


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/u7;->do:Lcom/biquge/ebook/app/ui/activity/ImportFileActivity;

    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public new(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SP_REQUEST_SD_PERMISSIONS_H5_KEY"

    .line 1
    invoke-static {v1, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0905d7

    .line 3
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFlags(I)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    new-instance v1, Lcom/apk/u7$do;

    invoke-direct {v1, p0, v0}, Lcom/apk/u7$do;-><init>(Lcom/apk/u7;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
