.class public Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;
.super Landroid/text/style/ClickableSpan;
.source "BookSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "this"
.end annotation


# instance fields
.field public final do:Landroid/content/Context;

.field public final synthetic for:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

.field public final if:I


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;Landroid/content/Context;ILcom/biquge/ebook/app/ui/fragment/BookSearchFragment$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;->for:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;->do:Landroid/content/Context;

    .line 3
    iput p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;->if:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;->if:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "EVENT_CHANGE_WEB_SEARCH_KEY"

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;->for:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;->do:Landroid/content/Context;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;->for:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->m()Z

    move-result v1

    .line 6
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/v0;->const()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-static {v0}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0, p1, v1}, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->i(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/16 v0, 0xf

    int-to-float v0, v0

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x2

    .line 3
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment$this;->for:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const v1, 0x7f0600d8

    invoke-static {v1}, Lcom/apk/tr0;->do(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
