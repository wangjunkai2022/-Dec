.class public Lcom/apk/uc;
.super Landroid/text/style/ClickableSpan;
.source "CustomColorSpan.java"


# instance fields
.field public final do:Landroid/content/Context;

.field public final for:Ljava/lang/String;

.field public final if:Z

.field public final new:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/uc;->do:Landroid/content/Context;

    .line 3
    iput-boolean p2, p0, Lcom/apk/uc;->if:Z

    .line 4
    iput-object p3, p0, Lcom/apk/uc;->for:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/apk/uc;->new:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/apk/uc;->if:Z

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/uc;->for:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/apk/uc;->do:Landroid/content/Context;

    iget-object v1, p0, Lcom/apk/uc;->for:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/uc;->new:Ljava/lang/String;

    .line 4
    invoke-static {v1, v2, v0}, Lcom/apk/n2;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->o(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/uc;->for:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/apk/uc;->do:Landroid/content/Context;

    iget-object v1, p0, Lcom/apk/uc;->for:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/uc;->new:Ljava/lang/String;

    .line 8
    invoke-static {v1, v2, v0}, Lcom/apk/mu;->final(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicBean;

    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const-string v0, "#3498DB"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
