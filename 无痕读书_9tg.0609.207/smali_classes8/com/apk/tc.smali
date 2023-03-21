.class public Lcom/apk/tc;
.super Landroid/text/style/ClickableSpan;
.source "CustomClickableSpan.java"


# instance fields
.field public do:Landroid/content/Context;

.field public if:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/tc;->do:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/apk/tc;->if:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/apk/tc;->if:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f100256

    .line 2
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f100258

    .line 3
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/apk/tc;->do:Landroid/content/Context;

    iget v1, p0, Lcom/apk/tc;->if:I

    invoke-static {v0, p1, v1}, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/high16 v0, -0x10000

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
